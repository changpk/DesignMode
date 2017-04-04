//
//  EmailAttachment.h
//  DesignMode
//
//  Created by changpengkai on 2017/4/4.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CloneProtocol.h"

@interface EmailAttachment : NSObject<CloneProtocol>
@property (nonatomic, strong) UIImage *image;
@end
