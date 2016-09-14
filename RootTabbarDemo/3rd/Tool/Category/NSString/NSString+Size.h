//
//  NSString+Size.h
//  myTool
//
//  Created by 光 on 15/12/18.
//  Copyright © 2015年 guang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (Size)

/**
 *  动态计算textLable高度
 *
 *  @param fontSize       字体大小
 *  @param textLabelWidth lable宽度
 */
- (CGSize)getTextHeight:(float)fontSize width:(float)textLabelWidth;

/**
 *  去除字符串前后空格
 *
 */
- (NSString *)TrimString:(NSString *)text;

@end
