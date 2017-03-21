//
//  MinusLightCommand.m
//  DesignMode
//
//  Created by pengkai on 2017/3/21.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "MinusLightCommand.h"

@interface MinusLightCommand ()
@property (nonatomic, strong) Receiver *receiver;
@property (nonatomic, assign) CGFloat quantity;
@end


@implementation MinusLightCommand
- (instancetype)initWithReceiver:(Receiver *)receiver quantity:(CGFloat )quantity {
    if (self = [super init]) {
        
        self.receiver = receiver;
        self.quantity = quantity;
    }
    return self;
}

#pragma mark - CommandProtocol

- (void)excute {
    
    [self.receiver minusLight:self.quantity];
}

// 这个屏幕亮度可以这样进行重置
- (void)undo {
    
    [self.receiver addLight:self.quantity];
}
@end
