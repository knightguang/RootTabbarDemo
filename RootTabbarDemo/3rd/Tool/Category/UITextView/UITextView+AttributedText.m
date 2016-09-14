//
//  UITextView+AttributedText.m
//  myTool
//
//  Created by 光 on 15/12/18.
//  Copyright © 2015年 guang. All rights reserved.
//

#import "UITextView+AttributedText.h"

@implementation UITextView (AttributedText)

/**
 *  _txView.text 插入文字表情
 */
- (void)insertTextWithString:(NSString *)text
{
    // 1.1 获取当前输入的文字
    NSMutableString *string = [NSMutableString stringWithString:self.text];
    
    // 1.2 获取光标位置
    NSRange rg = self.selectedRange;
    if (rg.location == NSNotFound) {
        
        // 如果没找到光标,就把光标定位到文字结尾
        rg.location = self.text.length;
    }
    
    // 1.3 替换选中文字
    [string replaceCharactersInRange:rg withString:text];
    
    self.text = string;
    
    // 1.4 定位光标
    self.selectedRange = NSMakeRange(rg.location + text.length, 0);
}

/**
 *  _txView.attributedText 插入图片表情
 */
- (void)insertAttributedTextWithString:(NSString *)text
{
    // 1.1 获取当前输入的文字
    NSMutableAttributedString *attributedText = [[NSMutableAttributedString alloc] init];
    // 1.1.1 拼接之前的文字（图片和文字）
    [attributedText appendAttributedString:self.attributedText];
    
    // 1.2 获取光标位置
    NSRange rg = self.selectedRange;
    if (rg.location == NSNotFound) {
        
        // 如果没找到光标,就把光标定位到文字结尾
        rg.location = self.text.length;
    }
    
    // 1.3 替换选中文字
    // 1.3.1 加载图片
    NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
    attachment.image = [UIImage imageNamed:text];
    CGFloat attchWH = self.font.lineHeight;
    attachment.bounds = CGRectMake(0, -3, attchWH, attchWH);
    
    NSAttributedString *attributedString = [NSAttributedString attributedStringWithAttachment:attachment];
    
    // 1.3.2 拼接图片
    [attributedText insertAttributedString:attributedString atIndex:rg.location];
    
    // 1.3.3 设置字体大小,_txView.font--> null ?!
//    NSRange range = NSMakeRange(0, attributedText.length);
//    [attributedText addAttribute:NSFontAttributeName value:_txView.font range:range];
    
    // 1.3.4 替换文字
    self.attributedText = attributedText;
    
    // 1.4 定位光标
    self.selectedRange = NSMakeRange(rg.location + 1, 0);
    
}



@end
