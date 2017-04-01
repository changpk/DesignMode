//
//  HavalChassis.m
//  DesignMode
//
//  Created by pengkai on 2017/4/1.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "HavalChassis.h"

@implementation HavalChassis
@synthesize type = _type;

- (instancetype)init{
    if (self = [super init]) {
        self.type = [HavalChassis suspensionType];
    }
    return self;
}

+ (SuspensionType)suspensionType {
    return SuspensionTypeIndependent;
}
@end
