//
//  Voltage220.h
//  DesignMode
//
//  Created by pengkai on 2017/4/5.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import <Foundation/Foundation.h>

// adpatee 被适配的对象，由于这类的接口和target的接口不一致，考虑兼容行引入了adapter （类名可能不符合命名要求，只是举例）
@interface Voltage220 : NSObject
// 返回220V电压
- (NSUInteger)voltage;
@end
