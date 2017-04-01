//
//  ChuanqiChassisFactory.m
//  DesignMode
//
//  Created by pengkai on 2017/4/1.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "ChuanqiChassisFactory.h"
#import "ChuanqiChassis.h"


@implementation ChuanqiChassisFactory

+ (id<ChassisProtocol>)product {
    
    return [[ChuanqiChassisFactory alloc]detailProduct];
}

- (id<ChassisProtocol>)detailProduct {
    ChuanqiChassis *chassis = [[ChuanqiChassis alloc]init];
    return chassis;
}
@end
