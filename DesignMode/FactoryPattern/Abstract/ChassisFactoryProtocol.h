//
//  ChassisFactoryProtocol.h
//  DesignMode
//
//  Created by pengkai on 2017/4/1.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ChassisProtocol.h"


@protocol ChassisFactoryProtocol <NSObject>
// 底盘的生产，子类实现
+ (id<ChassisProtocol>)product;
@end
