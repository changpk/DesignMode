//
//  MinusLightCommand.h
//  DesignMode
//
//  Created by pengkai on 2017/3/21.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"
#import "Receiver.h"

// 减小亮度的命令
@interface MinusLightCommand : NSObject<CommandProtocol>
@property (nonatomic, strong,readonly) Receiver *receiver;
- (instancetype)initWithReceiver:(Receiver *)receiver quantity:(CGFloat )quantity;
@end
