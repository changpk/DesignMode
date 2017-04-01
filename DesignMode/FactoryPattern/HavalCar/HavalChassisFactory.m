//
//  HavalChassisFactory.m
//  DesignMode
//
//  Created by pengkai on 2017/4/1.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "HavalChassisFactory.h"
#import "HavalChassis.h"

@implementation HavalChassisFactory

+ (id<ChassisProtocol>)product {
    
    return [[HavalChassisFactory alloc]detailProduct];
}

- (id<ChassisProtocol>)detailProduct {
    HavalChassis *chassis = [[HavalChassis alloc]init];
    return chassis;
}

@end
