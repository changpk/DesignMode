//
//  ChuanqiTyreFactory.m
//  DesignMode
//
//  Created by pengkai on 2017/4/1.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "ChuanqiTyreFactory.h"
#import "MaPaiTyre.h"

@implementation ChuanqiTyreFactory

+ (id<TyreProtocol>)product {
    
    return [[ChuanqiTyreFactory alloc]detailProduct];
}

- (id<TyreProtocol>)detailProduct {
    MaPaiTyre *tyre = [[MaPaiTyre alloc]init];
    return tyre;
}
@end
