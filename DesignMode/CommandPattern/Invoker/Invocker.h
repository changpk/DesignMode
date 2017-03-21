//
//  Invocker.h
//  DesignMode
//
//  Created by pengkai on 2017/3/21.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"

// 命令对象的管理者（一般用单例），可以执行撤销和恢复操作
@interface Invocker : NSObject
+ (instancetype)shareInvocker;
// 存储撤销操作的容器
@property (nonatomic, strong) NSMutableArray <id<CommandProtocol>> *undoList;
// 调用命令
- (void)invokeCommand:(id<CommandProtocol>)command;
// 撤销
- (void)undo;

@end
