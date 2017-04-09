//
//  SpeedRoad.m
//  DesignMode
//
//  Created by changpengkai on 2017/4/9.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "SpeedRoad.h"

@implementation SpeedRoad

- (instancetype)init {
    if (self = [super init]) {
        NSLog(@"进入高速公路");
    }
    return self;
}

- (void)driverWithCar:(id<CarRunImplementor>)car {
    [super driverWithCar:car];
}
@end
