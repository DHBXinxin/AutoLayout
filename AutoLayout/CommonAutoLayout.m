//
//  VFLAutoLayout.m
//  AutoLayout
//
//  Created by DHSD on 2018/5/11.
//  Copyright © 2018年 DHSD. All rights reserved.
//

#import "CommonAutoLayout.h"

@implementation CommonAutoLayout

+ (void)setView:(UIView *)view withHeight:(CGFloat)height {
    id superView = view.superview;
    NSString *vfl = [NSString stringWithFormat:@"V:[view(%f)]",height];
    [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vfl options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
}
+ (void)setView:(UIView *)view withWidth:(CGFloat)width {
    id superView = view.superview;
    NSString *vfl = [NSString stringWithFormat:@"H:[view(%f)]",width];
    [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vfl options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
}
+ (void)setView:(UIView *)view withInsets:(UIEdgeInsets)insets {
    id superView = view.superview;
    if (insets.left) {
        NSString *vfl = [NSString stringWithFormat:@"H:|-%F-[view]",insets.left];
        [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vfl options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
    }
    if (insets.right) {
        NSString *vfl = [NSString stringWithFormat:@"H:[view]-%F-|",insets.right];
        [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vfl options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
    }
    if (insets.top) {
        NSString *vfl = [NSString stringWithFormat:@"V:|-%F-[view]",insets.top];
        [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vfl options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
    }
    if (insets.bottom) {
        NSString *vfl = [NSString stringWithFormat:@"V:[view]-%F-|",insets.bottom];
        [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vfl options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
    }
}
/**
 不是真的设成0是设左边距为0
 */
+ (void)setLeftZero:(UIView *)view {
    id superView = view.superview;
    NSString *vflL = [NSString stringWithFormat:@"H:|[view]"];
    [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vflL options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
}

/**
 不是真的设成0是设上边距为0
 */
+ (void)setTopZero:(UIView *)view {
    id superView = view.superview;
    NSString *vflT = [NSString stringWithFormat:@"V:|[view]"];
    [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vflT options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
}

/**
 不是真的设成0是设右边距为0
 */
+ (void)setRightZero:(UIView *)view {
    id superView = view.superview;
    NSString *vflR = [NSString stringWithFormat:@"H:[view]|"];
    [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vflR options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
}

/**
 不是真的设成0是设下边距为0
 */
+ (void)setBottomZero:(UIView *)view {
    id superView = view.superview;
    NSString *vflB = [NSString stringWithFormat:@"V:[view]|"];
    [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vflB options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
}
/**
 设置view的各个边距为0
 */
+ (void)setViewZero:(UIView *)view {
    [self setTopZero:view];
    [self setLeftZero:view];
    [self setRightZero:view];
    [self setBottomZero:view];
}
/**
 设置上下两个view的间距
 
 @param space float
 @param topView 上view
 @param bottomView 下view
 */
+ (void)setSpace:(CGFloat)space topView:(UIView *)topView bottomView:(UIView *)bottomView {
    id superView = topView.superview;
    id bottomeSuper = bottomView.superview;
    if (![superView isEqual:bottomeSuper]) {//不在一个superView上
        return;
    }
    
    [superView addConstraint:[NSLayoutConstraint constraintWithItem:bottomView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:topView attribute:NSLayoutAttributeBottom multiplier:1.0 constant:space]];
}
/**
 设置左右两个view的间距
 
 @param space float
 @param leftView 左view
 @param rightView 右view
 */
+ (void)setSpace:(CGFloat)space leftView:(UIView *)leftView rightView:(UIView *)rightView {
    id superView = leftView.superview;
    id rightSuper = rightView.superview;
    if (![superView isEqual:rightSuper]) {//不在一个superView上
        return;
    }
    [superView addConstraint:[NSLayoutConstraint constraintWithItem:rightView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:leftView attribute:NSLayoutAttributeRight multiplier:1.0 constant:space]];
}
/**
 X轴居中
 
 @param view view
 @param superView super view
 */
+ (void)setXMidView:(UIView *)view superView:(UIView *)superView {
    [superView addConstraint:[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:superView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0]];
}
/**
 Y轴居中
 
 @param view view
 @param superView super view
 */
+ (void)setYMidView:(UIView *)view superView:(UIView *)superView {
    [superView addConstraint:[NSLayoutConstraint constraintWithItem:view attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:superView attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0]];
}
@end
