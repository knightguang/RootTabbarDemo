//
//  Common.h
//  RootTabbarDemo
//
//  Created by 光 on 16/9/14.
//  Copyright © 2016年 光. All rights reserved.
//

#ifndef Common_h
#define Common_h


#import "MBProgressHUD.h"





/*--屏幕的宽高----*/
#define kScreenWidth    [UIScreen mainScreen].bounds.size.width
#define kScreenHeight    [UIScreen mainScreen].bounds.size.height

//tableview 分割线颜色
#define kTableViewSepColor [UIColor colorWithWhite:0.314 alpha:1.000]



/*--机型判断----*/
#define isRetina ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) : NO)

#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)

#define iPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) : NO)

#define iPhone6P ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) : NO)























#endif /* Common_h */
