//
//  HavalCarFactory.m
//  DesignMode
//
//  Created by pengkai on 2017/4/1.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "HavalCarFactory.h"
#import "HavalChassisFactory.h"
#import "MiQilLinTyreFactory.h"


@implementation HavalCarFactory
// 生产轮胎
+ (id<TyreProtocol>)productTyre {
    NSLog(@" 哈佛 轮胎完成");
    return [MiQilLinTyreFactory product];
}

// 生产底盘
+ (id<ChassisProtocol>)productChassis {
    NSLog(@" 哈佛 底盘 完成");
    return [HavalChassisFactory product];
}

@end
