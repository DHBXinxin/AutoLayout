//
//  VFCAutolayout.m
//  AutoLayout
//
//  Created by DHSD on 2018/5/9.
//  Copyright © 2018年 DHSD. All rights reserved.
//

#import "VFCAutoLayout.h"

@implementation VFCAutoLayout

+ (void)setView:(UIView *)view withHeight:(NSString *)height {
    id superView = view.superview;
    NSString *vfc = [NSString stringWithFormat:@"V:[view(%@)]",height];
    [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vfc options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
}
+ (void)setView:(UIView *)view withWidth:(NSString *)width {
    id superView = view.superview;
    NSString *vfc = [NSString stringWithFormat:@"H:[view(%@)]",width];
    [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vfc options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
}
+ (void)setView:(UIView *)view withInsets:(UIEdgeInsets)insets {
    id superView = view.superview;
    if (insets.left) {
        NSString *vfc = [NSString stringWithFormat:@"H:|-%F-[view]",insets.left];
        [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vfc options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
    }
    if (insets.right) {
        NSString *vfc = [NSString stringWithFormat:@"H:[view]-%F-|",insets.right];
        [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vfc options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
    }
    if (insets.top) {
        NSString *vfc = [NSString stringWithFormat:@"V:|-%F-[view]",insets.top];
        [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vfc options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
    }
    if (insets.bottom) {
        NSString *vfc = [NSString stringWithFormat:@"V:[view]-%F-|",insets.bottom];
        [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vfc options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
    }
}
/**
 不是真的设成0是设左边距为0
 */
+ (void)setLeftZero:(UIView *)view {
    id superView = view.superview;
    NSString *vfcL = [NSString stringWithFormat:@"H:|[view]"];
    [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vfcL options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
}

/**
 不是真的设成0是设上边距为0
 */
+ (void)setTopZero:(UIView *)view {
    id superView = view.superview;
    NSString *vfcT = [NSString stringWithFormat:@"V:|[view]"];
    [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vfcT options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
}

/**
 不是真的设成0是设右边距为0
 */
+ (void)setRightZero:(UIView *)view {
    id superView = view.superview;
    NSString *vfcR = [NSString stringWithFormat:@"H:[view]|"];
    [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vfcR options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
}

/**
 不是真的设成0是设下边距为0
 */
+ (void)setBottomZero:(UIView *)view {
    id superView = view.superview;
    NSString *vfcB = [NSString stringWithFormat:@"V:[view]|"];
    [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vfcB options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
}

@end
