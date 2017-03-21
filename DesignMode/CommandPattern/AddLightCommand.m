//
//  AddLightCommand.m
//  DesignMode
//
//  Created by pengkai on 2017/3/21.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "AddLightCommand.h"

@interface AddLightCommand ()
@property (nonatomic, strong) Receiver *receiver;
@property (nonatomic, assign) CGFloat quantity;
@end

@implementation AddLightCommand

- (instancetype)initWithReceiver:(Receiver *)receiver quantity:(CGFloat )quantity {
    if (self = [super init]) {
        self.receiver = receiver;
        self.quantity = quantity;
    }
    return self;
}

#pragma mark - CommandProtocol

- (void)excute {
    
    [self.receiver addLight:self.quantity];
}

- (void)undo {
    
    [self.receiver minusLight:self.quantity];
}

@end
