//
//  UITabBar+badge.m
//  shiandianping2.0
//
//  Created by 闫康 on 15/10/12.
//  Copyright © 2015年 程宏愿. All rights reserved.
//

#import "UITabBar+badge.h"
#define TabbarItemNums 5.0    //tabbar的数量 如果是5个设置为5.0
#define rgb(r,g,b) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:1.0f]
@implementation UITabBar (badge)

//显示小红点
- (void)showBadgeOnItemIndex:(int)index andBadgeValue:(NSString *)badgeValue{
    //移除之前的小红点
    [self removeBadgeOnItemIndex:index];
    
    //新建小红点
    UIView *badgeView = [[UIView alloc]init];
    badgeView.tag = 888 + index;
    badgeView.layer.cornerRadius = 6;//圆形
    badgeView.backgroundColor = rgb(253, 134, 11);//颜色可改
    CGRect tabFrame = self.frame;
    
    //确定小红点的位置
    float percentX = (index +0.6) / TabbarItemNums;
    CGFloat x = ceilf(percentX * tabFrame.size.width);
    CGFloat y = ceilf(0.1 * tabFrame.size.height);
    badgeView.frame = CGRectMake(x, y, 12, 12);//圆形大小为10
    UILabel *numLabel = [[UILabel alloc]initWithFrame:CGRectMake(1, 1, 10, 10)];
    numLabel.textColor = [UIColor whiteColor];
    numLabel.textAlignment = NSTextAlignmentCenter;
    if(badgeValue.length >1){
        numLabel.font = [UIFont systemFontOfSize:8];
    }else {
        numLabel.font = [UIFont systemFontOfSize:10];
    }
    numLabel.text = badgeValue;//
    [badgeView addSubview:numLabel];
    [self addSubview:badgeView];
}

//隐藏小红点
- (void)hideBadgeOnItemIndex:(int)index{
    //移除小红点
    [self removeBadgeOnItemIndex:index];
}

- (void)removeBadgeOnItemIndex:(int)index{
    //按照tag值进行移除
    for (UIView *subView in self.subviews) {
        if (subView.tag == 888+index) {
            [subView removeFromSuperview];
        }
    }
}



@end
