//
//  AdapterPatternViewController.m
//  DesignMode
//
//  Created by pengkai on 2017/4/5.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "AdapterPatternViewController.h"
#import "MobileVoltageAdapter.h"
#import "Voltage220.h"
#import "IphoneMobile.h"

@interface AdapterPatternViewController ()

@end

@implementation AdapterPatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self configViewSetting];
    [self example];
}

#pragma mark - InitView

- (void)configViewSetting {
    self.view.backgroundColor = [UIColor colorWithHue:0.8 saturation:0.7 brightness:0.2 alpha:1.0];
    self.title = @"适配器模式";
}

- (void)example {
    
    // 产生220V电压
    Voltage220 *voltage220 = [[Voltage220 alloc]init];
    
    // 适配器
    MobileVoltageAdapter *adapter = [[MobileVoltageAdapter alloc]init];
    adapter.voltage220 = voltage220;
    
    // 适配过后的电压
    NSUInteger finalVolotage = [adapter fiveMobileVoltage];
   
    // 客户端
    IphoneMobile *mobile = [[IphoneMobile alloc]init];
    [mobile chargeWithVoltage:finalVolotage];
    
}

@end
