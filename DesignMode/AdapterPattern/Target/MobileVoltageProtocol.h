//
//  MobileVoltageProtocol.h
//  DesignMode
//
//  Created by pengkai on 2017/4/5.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import <UIKit/UIKit.h>

// taret 主要是指定需要的统一业务接口
@protocol MobileVoltageProtocol <NSObject>
// 标准的5v电压
- (NSUInteger)fiveMobileVoltage;
@end
