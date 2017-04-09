//
//  CarRunImplementor.h
//  DesignMode
//
//  Created by changpengkai on 2017/4/9.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import <Foundation/Foundation.h>

// 实现化的行驶接口
@protocol CarRunImplementor <NSObject>
// 汽车的行驶行为
- (void)run;
@end
