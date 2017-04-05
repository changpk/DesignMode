//
//  IphoneMobile.m
//  DesignMode
//
//  Created by pengkai on 2017/4/5.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "IphoneMobile.h"

@implementation IphoneMobile
- (void)chargeWithVoltage:(NSUInteger)voltage {
    if (5 == voltage) {
        NSLog(@"电压规格符合，充电完成");
    }else {
        NSLog(@"电压规格不符合，小心爆炸");
    }
}
@end
