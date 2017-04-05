//
//  MobileVoltageAdapter.h
//  DesignMode
//
//  Created by pengkai on 2017/4/5.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MobileVoltageProtocol.h"

@class Voltage220;
// adapter 主要是通过持有adpatee，实现target的业务接口
@interface MobileVoltageAdapter : NSObject<MobileVoltageProtocol>
// 对需要适配的adaptee进行持有
@property (nonatomic, strong) Voltage220 *voltage220;
@end
