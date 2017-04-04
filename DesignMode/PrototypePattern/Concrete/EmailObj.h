//
//  EmailObj.h
//  DesignMode
//
//  Created by changpengkai on 2017/4/4.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CloneProtocol.h"
@class EmailAttachment;

@interface EmailObj : NSObject<CloneProtocol>

@property (nonatomic, copy) NSString *sender;
@property (nonatomic, copy) NSString *receiver;
@property (nonatomic, copy) NSString *topic;
@property (nonatomic, copy) NSString *content;
@property (nonatomic, strong) EmailAttachment *attachment;

@end
