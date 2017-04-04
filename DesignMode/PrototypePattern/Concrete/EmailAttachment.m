//
//  EmailAttachment.m
//  DesignMode
//
//  Created by changpengkai on 2017/4/4.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "EmailAttachment.h"

@implementation EmailAttachment

- (instancetype)clone {
    
    EmailAttachment *copyAttachment = [[EmailAttachment alloc]init];
    
    // 对象序列化实现对象的深度复制
    if (self.image) {
        NSData *arechiveData = [NSKeyedArchiver archivedDataWithRootObject:self.image];
        copyAttachment.image = [NSKeyedUnarchiver unarchiveObjectWithData:arechiveData];
    }
    NSLog(@"EmailAttachment clone 完成");
    return copyAttachment;
    
}

@end
