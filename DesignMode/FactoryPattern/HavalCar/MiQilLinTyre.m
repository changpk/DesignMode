//
//  MiQilLinTyre.m
//  DesignMode
//
//  Created by pengkai on 2017/4/1.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "MiQilLinTyre.h"

@implementation MiQilLinTyre
@synthesize tyreP = _tyreP;

- (instancetype)init{
    if (self = [super init]) {
        self.tyreP = [MiQilLinTyre tyrePressure];
    }
    return self;
}

+ (NSString *)tyrePressure {
    
    return @"-";
}
@end
