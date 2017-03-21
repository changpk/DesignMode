//
//  Receiver.m
//  DesignMode
//
//  Created by pengkai on 2017/3/21.
//  Copyright © 2017年 changpengkai. All rights reserved.
//

#import "Receiver.h"

@interface Receiver ()
{
    CGFloat _hud;
    CGFloat _saturation;
    CGFloat _brightness;
    CGFloat _alpha;
}
@end

@implementation Receiver

// 获取当前屏幕的状态
- (void)setClientView:(UIView *)clientView {
    _clientView = clientView;
    // 记录当前的色值信息
    [_clientView.backgroundColor
     getHue:&_hud
     saturation:&_saturation
     brightness:&_brightness
     alpha:&_alpha];
}

- (void)addLight:(CGFloat )quantity {
    
    _brightness += quantity;
    if (_brightness >= 1) {
        _brightness = 1;
    }
    self.clientView.backgroundColor = [UIColor colorWithHue:_hud
                                                 saturation:_saturation
                                                 brightness:_brightness
                                                      alpha:_alpha];
}

- (void)minusLight:(CGFloat)quantity {
    
    _brightness -= quantity;
    if (_brightness <= 0) {
        _brightness = 0;
    }
    self.clientView.backgroundColor = [UIColor colorWithHue:_hud
                                                 saturation:_saturation
                                                 brightness:_brightness
                                                      alpha:_alpha];
}

@end
