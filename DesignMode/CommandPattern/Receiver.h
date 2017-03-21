//
//  Receiver.h
//  DesignMode
//
//  Created by pengkai on 2017/3/21.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import <UIKit/UIKit.h>

// 接受者：命令最后真正的执行者（业务如果复杂的话，可以继续划分，采用组合模式）
@interface Receiver : NSObject
@property (nonatomic, strong) UIView *clientView;
- (void)addLight:(CGFloat )quantity;
- (void)minusLight:(CGFloat)quantity;
@end
