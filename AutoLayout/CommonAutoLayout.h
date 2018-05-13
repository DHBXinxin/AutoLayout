//
//  VFLAutoLayout.h
//  AutoLayout
//
//  Created by DHSD on 2018/5/11.
//  Copyright © 2018年 DHSD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
/**
 手写代码自动布局
 */
@interface CommonAutoLayout : NSObject
/**
 设置高度
 */
+ (void)setView:(UIView *)view withHeight:(CGFloat)height;
/**
 设置宽度
 */
+ (void)setView:(UIView *)view withWidth:(CGFloat)width;
/**
 设置边距
 */
+ (void)setView:(UIView *)view withInsets:(UIEdgeInsets)insets;
/**
 不是真的设成0是设左边距为0
 */
+ (void)setLeftZero:(UIView *)view;
/**
 不是真的设成0是设上边距为0
 */
+ (void)setTopZero:(UIView *)view;
/**
 不是真的设成0是设右边距为0
 */
+ (void)setRightZero:(UIView *)view;
/**
 不是真的设成0是设下边距为0
 */
+ (void)setBottomZero:(UIView *)view;
/**
 设置view的各个边距为0
 */
+ (void)setViewZero:(UIView *)view;
/**
 设置上下两个view的间距|上已经确定、为下做约束
 
 @param space float
 @param topView 上view
 @param bottomView 下view
 */
+ (void)setSpace:(CGFloat)space topView:(UIView *)topView bottomView:(UIView *)bottomView;
/**
 设置左右两个view的间距|左已经确定为右做约束
 
 @param space float
 @param leftView 左view
 @param rightView 右view
 */
+ (void)setSpace:(CGFloat)space leftView:(UIView *)leftView rightView:(UIView *)rightView;
/**
 X轴居中
 
 @param view view
 @param superView super view
 */
+ (void)setXMidView:(UIView *)view superView:(UIView *)superView;
/**
 Y轴居中
 
 @param view view
 @param superView super view
 */
+ (void)setYMidView:(UIView *)view superView:(UIView *)superView;

@end
