//
//  ViewController.m
//  DesignMode
//
//  Created by pengkai on 2017/3/21.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "ViewController.h"

#import "CommandPatternContainerViewController.h"
#import "FactoryPatternViewController.h"
#import "PrototypePatternViewController.h"
#import "AdapterPatternViewController.h"


@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) NSArray<NSString *> *patternsList;
@property (nonatomic, copy) NSMutableString *str_copy;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self configControllerSetting];
    [self addTableView];

    
    
}

- (void)configControllerSetting {
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.automaticallyAdjustsScrollViewInsets = NO;
}

- (void)addTableView {

    UITableView *mainTb = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 64) style:UITableViewStylePlain];
    mainTb.delegate = self;
    mainTb.dataSource = self;
    [self.view addSubview:mainTb];
    
    [mainTb registerClass:[UITableViewCell class] forCellReuseIdentifier:NSStringFromClass([UITableViewCell class])];
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.patternsList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([UITableViewCell class]) forIndexPath:indexPath];
    cell.textLabel.text = self.patternsList[indexPath.row];
    cell.textLabel.textColor = [UIColor redColor];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *pattern = self.patternsList[indexPath.row];
    if ([pattern isEqualToString:@"命令模式"]) {
        [self.navigationController pushViewController:[[CommandPatternContainerViewController alloc]init] animated:YES];
    }else if ([pattern isEqualToString:@"工厂模式"]) {
        [self.navigationController pushViewController:[[FactoryPatternViewController alloc]init] animated:YES];
    }else if ([pattern isEqualToString:@"原型模式"]) {
        [self.navigationController pushViewController:[[PrototypePatternViewController alloc]init] animated:YES];
    }else if ([pattern isEqualToString:@"适配器模式"]) {
        [self.navigationController pushViewController:[[AdapterPatternViewController alloc]init] animated:YES];
    }
}

#pragma mark - Setters And Getters

- (NSArray<NSString *>*)patternsList {
    if (!_patternsList) {
        _patternsList = @[@"命令模式",@"工厂模式",@"原型模式",@"适配器模式"];
    }
    return _patternsList;
}
@end
