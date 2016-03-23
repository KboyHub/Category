//
//  NSString+Extension.h
//  小区业主交流平台
//
//  Created by 程宏愿 on 15/5/4.
//  Copyright (c) 2015年 程宏愿. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSString (Extension)
/**
 *  根据字体和最大宽度计算尺寸
 *
 *  @param font 字体
 *  @param maxW 最大宽度
 *
 *  @return 字体尺寸
 */
-(CGSize)sizeWithFont:(UIFont *)font maxW:(CGFloat )maxW;

/**
 *  适合不超过一行 无限制宽度
 */
-(CGSize)sizeWithFont:(UIFont *)font;

//删除字符串中的空格
-(NSString *)deleteSpace;

//判断字符串中是否含有空格
-(BOOL)isIncludeHeaderAndEndSpace;
@end
