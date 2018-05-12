//
//  VFLAutoLayout.m
//  AutoLayout
//
//  Created by DHSD on 2018/5/11.
//  Copyright © 2018年 DHSD. All rights reserved.
//

#import "VFLAutoLayout.h"

@implementation VFLAutoLayout

+ (void)setView:(UIView *)view withHeight:(NSString *)height {
    id superView = view.superview;
    NSString *vfl = [NSString stringWithFormat:@"V:[view(%@)]",height];
    [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vfl options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
}
+ (void)setView:(UIView *)view withWidth:(NSString *)width {
    id superView = view.superview;
    NSString *vfl = [NSString stringWithFormat:@"H:[view(%@)]",width];
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
@end
