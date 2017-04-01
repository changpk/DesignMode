//
//  TyreProtocol.h
//  DesignMode
//
//  Created by pengkai on 2017/4/1.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import <UIKit/UIKit.h>

// 每个轮胎有的共性胎压，半径，材料
@protocol TyreProtocol <NSObject>
@property (nonatomic, copy)NSString *tyreP;
// 获取胎压“x”表示高压胎；“R”、“Z”表示子午胎；“一”表示低压胎。
+ (NSString *)tyrePressure;
@end
