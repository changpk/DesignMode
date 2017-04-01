//
//  ChuanqiChassis.m
//  DesignMode
//
//  Created by pengkai on 2017/4/1.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "ChuanqiChassis.h"

@implementation ChuanqiChassis

@synthesize type = _type;

- (instancetype)init{
    if (self = [super init]) {
        self.type = [ChuanqiChassis suspensionType];
    }
    return self;
}

+ (SuspensionType)suspensionType {
    return SuspensionTypeNonIndependent;
}
@end
