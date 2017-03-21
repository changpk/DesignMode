
//
//  Invocker.m
//  DesignMode
//
//  Created by pengkai on 2017/3/21.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "Invocker.h"

@implementation Invocker

+ (instancetype)shareInvocker {
    
    static Invocker *shareInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareInstance = [[self alloc]init];
    });
    return shareInstance;
}

- (NSMutableArray <id<CommandProtocol>> *)undoList {
    
    if (!_undoList) {
        _undoList = [[NSMutableArray alloc]initWithCapacity:0];
    }
    return _undoList;
}

- (void)invokeCommand:(id<CommandProtocol>)command {
    [self.undoList addObject:command];
    [command excute];
}

- (void)undo {
    if (self.undoList.count > 0) {
        id<CommandProtocol> command = [self.undoList lastObject];
        [command undo];
        [self.undoList removeLastObject];
    }
}

@end
