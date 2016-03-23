//
//  UITabBar+badge.h
//  shiandianping2.0
//
//  Created by 闫康 on 15/10/12.
//  Copyright © 2015年 程宏愿. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBar (badge)

- (void)showBadgeOnItemIndex:(int)index andBadgeValue:(NSString *)badgeValue; //显示小红点

- (void)hideBadgeOnItemIndex:(int)index; //隐藏小红点
@end
