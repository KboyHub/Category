//
//  UIBarButtonItem+Extend.h
//  Carpenter
//
//  Created by 冯成林 on 15/5/11.
//  Copyright (c) 2015年 冯成林. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIColor+Extend.h"


@interface UIBarButtonItem (Extend)
/**
 *  根据当前image的尺寸来初始化item
 */
+(UIBarButtonItem *)addtarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage;
/**
 *  自定义尺寸，以颜色生成高亮图片
 */
+(instancetype)barButtonItemWithSize:(CGSize)size target:(id)target selector:(SEL)selector ImgName:(NSString *)imgName hlImageColor:(UIColor *)hlImageColor;


@end
