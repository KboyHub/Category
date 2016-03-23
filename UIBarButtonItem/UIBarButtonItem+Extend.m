//
//  UIBarButtonItem+Extend.m
//  Carpenter
//
//  Created by  on 15/5/11.
//  Copyright (c) 2015年 . All rights reserved.
//

#import "UIBarButtonItem+Extend.h"
#import "UIImage+Color.h"
#import "UIView+Extend.h"
@implementation UIBarButtonItem (Extend)

/**
 *  自定义尺寸，以颜色生成高亮图片
 */
+(instancetype)barButtonItemWithSize:(CGSize)size target:(id)target selector:(SEL)selector ImgName:(NSString *)imgName hlImageColor:(UIColor *)hlImageColor{
    
    //创建按钮
    UIButton *btn = [[UIButton alloc] init];
    
    //绑定事件
    [btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    
    btn.frame= (CGRect){CGPointZero,size};
    
    //image
    UIImage *image = [UIImage imageNamed:imgName];
    UIImage *hlImage = [image imageWithGradientTintColor:hlImageColor];
    
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:hlImage forState:UIControlStateHighlighted];
    
    //创建
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithCustomView:btn];
   
    return item;
}

/**
 *  根据当前image的尺寸来初始化item

 */
+(UIBarButtonItem *)addtarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage
{
    UIButton*btn=[UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    btn.size=btn.currentImage.size;
    
    return [[UIBarButtonItem alloc]initWithCustomView:btn];
}
@end
