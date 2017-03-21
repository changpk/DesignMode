//
//  CommandProtocol.h
//  DesignMode
//
//  Created by pengkai on 2017/3/21.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import <Foundation/Foundation.h>

// 命令协议(或者抽象类)，指命命令对象的基本操作有执行，需要绑定执行者用于执行的具体功能（例如：打开电视，关电视，换频道）
@protocol CommandProtocol <NSObject>
@required
// 执行
- (void)excute;
// 撤销(这个操作要根据具体业务具体实现)
- (void)undo;
@end
