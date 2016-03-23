//
//  NSString+Extension.m
//  小区业主交流平台
//
//  Created by 程宏愿 on 15/5/4.
//  Copyright (c) 2015年 程宏愿. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)
-(CGSize)sizeWithFont:(UIFont *)font maxW:(CGFloat )maxW
{
    NSMutableDictionary *attrs=[NSMutableDictionary dictionary];
    attrs[NSFontAttributeName]=font;
    CGSize maxSize=CGSizeMake(maxW, MAXFLOAT);
    return [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
    
}
-(CGSize)sizeWithFont:(UIFont *)font
{
    return [self sizeWithFont:font maxW:MAXFLOAT];
}

//删除字符串中的空格
-(NSString *)deleteSpace
{
      NSMutableString * newString=[NSMutableString string];
    for(int i =0; i <self.length; i++)
        
    {
        
      NSString * str = [self substringWithRange:NSMakeRange(i, 1)];
        
        
        if (![str isEqualToString:@" "]) {
            [newString appendString:str];
        }
        
            }
    
    return (NSString *)newString;


}
-(BOOL)isIncludeHeaderAndEndSpace
{
    
    for(int i =0; i <self.length; i++)
        
    {
        NSString * str = [self substringWithRange:NSMakeRange(i, 1)];
        if(i==0 ||i==self.length-1){
        if ([str isEqualToString:@" "]) {
            return YES;
        }
        }
    }
    return NO;
}
@end
