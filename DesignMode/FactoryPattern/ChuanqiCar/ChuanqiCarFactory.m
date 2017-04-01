//
//  ChuanqiCarFactory.m
//  DesignMode
//
//  Created by pengkai on 2017/4/1.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "ChuanqiCarFactory.h"
#import "ChuanqiChassisFactory.h"
#import "ChuanqiTyreFactory.h"

@implementation ChuanqiCarFactory
// 生产轮胎
+ (id<TyreProtocol>)productTyre {
    NSLog(@" Chuanqi 轮胎完成");
    return [ChuanqiTyreFactory product];
}

// 生产底盘
+ (id<ChassisProtocol>)productChassis {
    NSLog(@" Chuanqi 底盘 完成");
    return [ChuanqiChassisFactory product];
}
@end
