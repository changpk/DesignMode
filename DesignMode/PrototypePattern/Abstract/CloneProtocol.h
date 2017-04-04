//
//  CloneProtocol.h
//  DesignMode
//
//  Created by changpengkai on 2017/4/4.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CloneProtocol <NSObject>
// 子类需要实现自己的clone操作
- (instancetype)clone;
@end
