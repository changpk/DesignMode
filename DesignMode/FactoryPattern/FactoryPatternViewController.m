
//
//  FactoryPatternViewController.m
//  DesignMode
//
//  Created by pengkai on 2017/4/1.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "FactoryPatternViewController.h"
#import "ChuanqiCarFactory.h"
#import "HavalCarFactory.h"

@interface FactoryPatternViewController ()

@end

@implementation FactoryPatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
 
    /*
     抽象工厂强调一个工厂生产多种产品，每个产品由自己特定的工厂生产，产品的组合可以用组合模式来实现
     */
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //获得传祺轮胎
    id<TyreProtocol> chuanqiTyre = [ChuanqiCarFactory productTyre];
    // 获得传祺底盘
    id<ChassisProtocol> chuanqiChassis = [ChuanqiCarFactory productChassis];

    
    //获得哈佛轮胎
    id<TyreProtocol> havalTyre = [HavalCarFactory productTyre];
    // 获得哈佛底盘
    id<ChassisProtocol> havalChassis = [HavalCarFactory productChassis];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
}

@end
