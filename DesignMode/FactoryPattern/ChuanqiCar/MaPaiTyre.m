//
//  MaPaiTyre.m
//  DesignMode
//
//  Created by pengkai on 2017/4/1.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "MaPaiTyre.h"

@implementation MaPaiTyre
@synthesize tyreP = _tyreP;

- (instancetype)init{
    if (self = [super init]) {
        self.tyreP = [MaPaiTyre tyrePressure];
    }
    return self;
}

+ (NSString *)tyrePressure {
    
    return @"x";
    
}
@end
