//
//  CarFactoryProtocol.h
//  DesignMode
//
//  Created by pengkai on 2017/4/1.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TyreProtocol.h"
#import "ChassisProtocol.h"

// 汽车工厂方法用于生成汽车所需要的组件，没个组件都可以用一个工厂来实现
@protocol CarFactoryProtocol <NSObject>

// 生产轮胎
+ (id<TyreProtocol>)productTyre;

// 生产底盘
+ (id<ChassisProtocol>)productChassis;
@end
