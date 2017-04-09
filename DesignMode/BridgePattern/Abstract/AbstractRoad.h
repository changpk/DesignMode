//
//  AbstractRoad.h
//  DesignMode
//
//  Created by changpengkai on 2017/4/9.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarRunImplementor.h"
// 抽象化的路
@interface AbstractRoad : NSObject

- (void)driverWithCar:(id <CarRunImplementor>)car;

@end
