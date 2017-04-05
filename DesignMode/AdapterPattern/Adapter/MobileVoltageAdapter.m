//
//  MobileVoltageAdapter.m
//  DesignMode
//
//  Created by pengkai on 2017/4/5.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "MobileVoltageAdapter.h"
#import "Voltage220.h"

@implementation MobileVoltageAdapter

// 实现标准的电压协议
- (NSUInteger)fiveMobileVoltage {
    
    if (self.voltage220) {
        
        NSUInteger sourceVoltage = [self.voltage220 voltage];
        NSLog(@"获取原来的电压 %ld",sourceVoltage);
        
        return [self convertWithInputVoltage:sourceVoltage];
    }
    NSLog(@"无适配电压");
    return -1;
}

- (NSUInteger)convertWithInputVoltage:(NSUInteger)inputVoltage {
    
    NSLog(@"开始适配，一些转换逻辑的方法");
    if (220 == inputVoltage) {
        NSLog(@"适配成功的电压是 5v");
        return 5;
    }
    NSLog(@"适配电压不符合规格，失败");
    return -1;
}


@end
