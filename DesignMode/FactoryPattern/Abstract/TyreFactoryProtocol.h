//
//  TyreFactoryProtocol.h
//  DesignMode
//
//  Created by pengkai on 2017/4/1.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TyreProtocol.h"

@protocol TyreFactoryProtocol <NSObject>
// 轮胎的生产，子类实现
+ (id<TyreProtocol>)product;
@end
