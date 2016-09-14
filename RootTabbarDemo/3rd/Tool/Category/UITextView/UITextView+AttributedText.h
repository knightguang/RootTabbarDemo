//
//  UITextView+AttributedText.h
//  myTool
//
//  Created by 光 on 15/12/18.
//  Copyright © 2015年 guang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (AttributedText)

/**
 *  插入表情，定位光标
 */
- (void)insertTextWithString:(NSString *)text;
- (void)insertAttributedTextWithString:(NSString *)text;


@end
