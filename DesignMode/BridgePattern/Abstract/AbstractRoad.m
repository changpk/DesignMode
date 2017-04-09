//
//  AbstractRoad.m
//  DesignMode
//
//  Created by changpengkai on 2017/4/9.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "AbstractRoad.h"

@interface AbstractRoad ()
{
    // 持有实现化的对象
    id<CarRunImplementor> _car;
}
@end

@implementation AbstractRoad
- (void)driverWithCar:(id <CarRunImplementor>)car {
    _car = car;
    [car run];
}
@end
