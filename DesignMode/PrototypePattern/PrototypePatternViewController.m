//
//  PrototypePatternViewController.m
//  DesignMode
//
//  Created by changpengkai on 2017/4/4.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "PrototypePatternViewController.h"
#import "EmailObj.h"
#import "EmailAttachment.h"


@interface PrototypePatternViewController ()
@property (nonatomic, strong) EmailObj *email;
@end

@implementation PrototypePatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self configViewSetting];
    [self example];

}

#pragma mark - InitView

- (void)configViewSetting {
    self.view.backgroundColor = [UIColor colorWithHue:0.8 saturation:0.7 brightness:0.2 alpha:1.0];
    self.title = @"命令模式";
}

- (void)example {
    
    EmailObj *copyEmail = [self.email clone];
    //修改内容
    copyEmail.content = @"modify the content";
    //对修改后的copyEmail做其它的事情
}

- (EmailObj *)email {
    
    if (!_email) {
         // 创建了一个原型对象
        EmailObj *emai = [[EmailObj alloc]init];
        emai.sender = @"cpk";
        emai.receiver = @"lili";
        emai.topic = @"week log";
        emai.content = @"everthing is well done";
        
        EmailAttachment *attachment = [[EmailAttachment alloc]init];
        attachment.image = [UIImage imageNamed:@"1.png"];
        emai.attachment = attachment;
        
        _email = emai;
    }
    return _email;
}

@end
