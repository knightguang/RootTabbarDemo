//
//  UIView+Extension.h
//  myTool
//
//  Created by 光 on 15/12/18.
//  Copyright © 2015年 guang. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  拿到中心点
 */
CGPoint CGRectGetCenter(CGRect rect);
/**
 *  移动到某中心点
 *
 *  @param rect   原始尺寸
 *  @param center 中心点
 */
CGRect  CGRectMoveToCenter(CGRect rect, CGPoint center);

@interface UIView (Extension)

/**
 *  坐标、尺寸
 */
@property CGPoint origin;
@property CGSize size;

/**
 *  左下角、右下角、右上角
 */
@property (readonly) CGPoint bottomLeft;
@property (readonly) CGPoint bottomRight;
@property (readonly) CGPoint topRight;

/**
 *  宽、高
 */
@property CGFloat height;
@property CGFloat width;

/**
 *  上、左、下、右
 */
@property CGFloat top;
@property CGFloat left;
@property CGFloat bottom;
@property CGFloat right;

/**
 *  x、y、中心点
 */
@property  CGFloat x;
@property  CGFloat y;
@property  CGFloat centerX;
@property  CGFloat centerY;

- (void)moveBy:(CGPoint)delta;
- (void)scaleBy:(CGFloat)scaleFactor;
- (void)fitInSize:(CGSize)aSize;

@end
