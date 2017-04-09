
//
//  BridgePatternViewController.m
//  DesignMode
//
//  Created by changpengkai on 2017/4/9.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "BridgePatternViewController.h"
#import "SpeedRoad.h"
#import "MoutainRoad.h"
#import "BaoMaCarRunImplementor.h"
#import "AoDiCarRunImplementor.h"


@interface BridgePatternViewController ()

@end

@implementation BridgePatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self configViewSetting];
    [self example];
}

#pragma mark - InitView

- (void)configViewSetting {
    self.view.backgroundColor = [UIColor colorWithHue:0.8 saturation:0.7 brightness:0.2 alpha:1.0];
    self.title = @"桥接模式";
}

- (void)example {

    // 实例化宝马汽车
    BaoMaCarRunImplementor *baoMaCarImp = [[BaoMaCarRunImplementor alloc]init];
    
    // 实例化高速公路
    SpeedRoad *speedRoad = [[SpeedRoad alloc]init];
    [speedRoad driverWithCar:baoMaCarImp];
    
    
    // 实例化奥迪汽车
    AoDiCarRunImplementor *Car = [[AoDiCarRunImplementor alloc]init];

    // 实例化山路
    MoutainRoad *moutainRoad = [[MoutainRoad alloc]init];
    [moutainRoad driverWithCar:Car];
    
}

@end
