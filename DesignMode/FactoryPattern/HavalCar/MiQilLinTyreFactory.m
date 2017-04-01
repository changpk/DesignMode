//
//  MiQilLinTyreFactory.m
//  DesignMode
//
//  Created by pengkai on 2017/4/1.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "MiQilLinTyreFactory.h"
#import "MiQilLinTyre.h"


@implementation MiQilLinTyreFactory

+ (id<TyreProtocol>)product {
    
    return [[MiQilLinTyreFactory alloc]detailProduct];
}

- (id<TyreProtocol>)detailProduct {
    MiQilLinTyre *chassis = [[MiQilLinTyre alloc]init];
    return chassis;
}

@end
