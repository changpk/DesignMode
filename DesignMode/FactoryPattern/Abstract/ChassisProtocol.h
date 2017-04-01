//
//  ChassisProtocol.h
//  DesignMode
//
//  Created by pengkai on 2017/4/1.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,SuspensionType) {
    SuspensionTypeIndependent = 1,     // 独立悬挂系统
    SuspensionTypeNonIndependent       // 非独立悬挂系统
};

// 底盘具有的悬挂系统，材料组成等共有属性
@protocol ChassisProtocol <NSObject>
@property (nonatomic, assign)SuspensionType type;
// 每个底盘都必须实现独立悬挂系统的类型
+ (SuspensionType)suspensionType;
@end
