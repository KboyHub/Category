//
//  UIWindow+Extension.m
//  小区业主交流平台
//
//  Created by 程宏愿 on 15/4/26.
//  Copyright (c) 2015年 程宏愿. All rights reserved.
//

#import "UIWindow+Extension.h"
#import "HYRootTabBarController.h"
#import "HYNewFeatureController.h"
#import "AppDelegate.h"
@implementation UIWindow (Extension)
-(void)switchRootViewController
{
    
        NSUserDefaults *userDefaults=[NSUserDefaults standardUserDefaults];
        NSString *lastVersion=[userDefaults objectForKey:@"CFBundleVersion"];
    
        NSDictionary *infoDict=[NSBundle mainBundle].infoDictionary;
    //    NSLog(@"%@",infoDict);
        NSString*currentVersion=infoDict[@"CFBundleVersion"];
    
        if ([lastVersion isEqualToString: currentVersion]) {
//            UIApplication *app=[UIApplication sharedApplication];
//            AppDelegate *appdelegate=app.delegate;
            self.rootViewController=[[HYRootTabBarController alloc]init];
        }
        else{
            [userDefaults setObject:currentVersion forKey:@"CFBundleVersion"];
            [userDefaults synchronize];
        self.rootViewController=[[HYNewFeatureController alloc]init];
        }

}
@end
