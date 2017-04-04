//
//  CommandPatternContainerViewController.m
//  DesignMode
//
//  Created by pengkai on 2017/3/21.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "CommandPatternContainerViewController.h"
#import "Receiver.h"
#import "Invocker.h"
#import "AddLightCommand.h"
#import "MinusLightCommand.h"


typedef NS_ENUM(NSInteger,OperationType) {
    OperationTypeAddLight = 0,   // 增加屏幕亮度
    OperationTypeMinusLight,     // 降低屏幕亮度
    OperationTypeRollBack,       // 撤销操作
};

@interface CommandPatternContainerViewController ()

@end

@implementation CommandPatternContainerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self configViewSetting];
    
    [self addBackButton];
    
    [self addOptionButton:@"增加亮度" opertionType:OperationTypeAddLight frame:CGRectMake(20, 80, 90, 30)];
    [self addOptionButton:@"减小亮度" opertionType:OperationTypeMinusLight frame:CGRectMake(130, 80, 90, 30)];
    [self addOptionButton:@"撤销" opertionType:OperationTypeRollBack frame:CGRectMake(240, 80, 90, 30)];
}

#pragma mark - InitView

- (void)configViewSetting {
    self.view.backgroundColor = [UIColor colorWithHue:0.8 saturation:0.7 brightness:0.2 alpha:1.0];
    self.title = @"命令模式";
}

- (void)addOptionButton:(NSString *)title
           opertionType:(OperationType)type
                  frame:(CGRect)frame {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.layer.borderColor = [UIColor redColor].CGColor;
    button.layer.borderWidth = 1;
    button.tag = type;
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    button.frame = frame;
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)addBackButton {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.layer.borderColor = [UIColor redColor].CGColor;
    button.layer.borderWidth = 1;
    [button setTitle:@"返回" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    button.frame = CGRectMake(20, 20, 80, 30);
    [button addTarget:self action:@selector(backAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

#pragma mark - EventResponse

- (void)backAction:(UIButton *)button {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)buttonAction:(UIButton *)button {
    OperationType type = button.tag;
    if (OperationTypeAddLight == type) {
        
        // 组装接受者（接受者复杂的话，可以绑定）
        Receiver *receiver = [[Receiver alloc]init];
        receiver.clientView = self.view;
        
        // 组装命令（持有执行者）
        AddLightCommand *lightCommand = [[AddLightCommand alloc]initWithReceiver:receiver quantity:0.2];
        
        // 调用者（持有具体功能命令）
        Invocker *invocker = [Invocker shareInvocker];
        // 发送执行的命令
        [invocker invokeCommand:lightCommand];
        
    }else if (OperationTypeMinusLight == type) {
        // 组装接受者（接受者复杂的话，可以绑定）
        Receiver *receiver = [[Receiver alloc]init];
        receiver.clientView = self.view;
        
        // 组装命令（持有执行者）
        MinusLightCommand *minusCommand = [[MinusLightCommand alloc]initWithReceiver:receiver quantity:0.2];
        
        // 调用者（持有具体功能命令）
        Invocker *invocker = [Invocker shareInvocker];
        // 发送执行的命令
        [invocker invokeCommand:minusCommand];
        
    }else if (OperationTypeRollBack == type) {
        // 调用者（持有具体功能命令）
        Invocker *invocker = [Invocker shareInvocker];
        // 撤销
        [invocker undo];
    }
}

@end
