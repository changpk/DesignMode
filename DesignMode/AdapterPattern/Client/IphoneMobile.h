//
//  IphoneMobile.h
//  DesignMode
//
//  Created by pengkai on 2017/4/5.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MobileVoltageProtocol.h"

// client 手机实例
@interface IphoneMobile : NSObject
- (void)chargeWithVoltage:(NSUInteger)voltage;
@end
