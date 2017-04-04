//
//  EmailObj.m
//  DesignMode
//
//  Created by changpengkai on 2017/4/4.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "EmailObj.h"
#import "EmailAttachment.h"

@implementation EmailObj

- (instancetype)clone {
    
    EmailObj *copyEmail = [[EmailObj alloc]init];
    // 实现字符串的深度复制
    copyEmail.sender = [self.sender mutableCopy];
    copyEmail.receiver = [self.receiver mutableCopy];
    copyEmail.topic = [self.topic mutableCopy];
    copyEmail.content = [self.content mutableCopy];
    // 复杂对象的clone
    copyEmail.attachment = [self.attachment clone];
    NSLog(@"EmailObj clone 完成");
    return copyEmail;
}

@end
