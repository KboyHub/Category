//
//  UIImage+Cut.h
//  mohu
//
//  Created by 沐汐 on 14-10-6.
//  Copyright (c) 2014年 沐汐. All rights reserved.
//  手机屏幕截图，图片指定区域截图：
//
//

#import <UIKit/UIKit.h>

@interface UIImage (Cut)


/*
 *  圆形图片
 */
@property (nonatomic,strong,readonly) UIImage *roundImage;



/**
 *  原图并且加边框
 *
 *  @param name        图片名
 *  @param borderWidth 边框宽度
 *  @param borderColor 边框颜色
 *
 *  @return 裁剪后的图片
 */
+ (instancetype)circleImageWithName:(NSString *)name borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;


/**
 *  从给定UIView中截图：UIView转UIImage
 */
+(UIImage *)cutFromView:(UIView *)view;





/**
 *  直接截屏
 */
+(UIImage *)cutScreen;





/**
 *  从给定UIImage和指定Frame截图：
 */
-(UIImage *)cutWithFrame:(CGRect)frame;







@end
