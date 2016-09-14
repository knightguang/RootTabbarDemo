//
//  NSString+Size.m
//  myTool
//
//  Created by 光 on 15/12/18.
//  Copyright © 2015年 guang. All rights reserved.
//

#import "NSString+Size.h"

#define iOS7    ([[UIDevice currentDevice].systemVersion doubleValue] >= 7.0)

@implementation NSString (Size)

- (CGSize)getTextHeight:(float)fontSize width:(float)textLabelWidth
{
    NSDictionary *atttibutesDic = @{
                                    NSFontAttributeName : [UIFont systemFontOfSize:fontSize]
                                    };
    
//    NSStringDrawingOptions option = NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading;
//    NSStringDrawingTruncatesLastVisibleLine如果文本内容超出指定的矩形限制，文本将被截去并在最后一个字符后加上省略号。 如果指定了NSStringDrawingUsesLineFragmentOrigin选项，则该选项被忽略 NSStringDrawingUsesFontLeading计算行高时使用行间距。（字体大小+行间距=行高）
    
    CGSize maxSize = CGSizeMake(textLabelWidth, MAXFLOAT);
    
    if (iOS7) {
        // 如何系统版本大于 7.0
        CGRect frame = [self boundingRectWithSize:maxSize
                                          options:NSStringDrawingUsesLineFragmentOrigin
                                       attributes:atttibutesDic
                                          context:nil];
        return frame.size;
        
    } else {
        // 如果系统版本小于 7.0
        return [self sizeWithFont:[UIFont systemFontOfSize:fontSize] constrainedToSize:maxSize];
    }
}


- (NSString *)TrimString:(NSString *)text{
    
    return [text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}



@end
