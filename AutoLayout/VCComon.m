//
//  ViewController.m
//  AutoLayout
//
//  Created by DHSD on 2018/5/9.
//  Copyright © 2018年 DHSD. All rights reserved.
//

#import "VCComon.h"
#import "VFLAutoLayout.h"

/**
 添加一个方法、就需要测试一个方法
 */
@interface VCComon ()

@end

@implementation VCComon

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *view = [[UIView alloc]init];
    view.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:view];
    
    [VFLAutoLayout setView:view withHeight:@"50"];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    [VFLAutoLayout setView:view withInsets:UIEdgeInsetsMake(20, 20, 0, 20)];
    UIView *red = [[UIView alloc]init];
    red.backgroundColor = [UIColor redColor];
    [self.view addSubview:red];
    
   
    red.translatesAutoresizingMaskIntoConstraints = NO;
    
//    [VFLAutoLayout setTopZero:red];
//    [VFLAutoLayout setLeftZero:red];
//    [VFLAutoLayout setRightZero:red];
//    [VFLAutoLayout setBottomZero:red];
//    [VFLAutoLayout setView:red withHeight:@"100"];
//    [VFLAutoLayout setView:red withInsets:UIEdgeInsetsMake(20, 20, 0, 20)];
//    NSMutableArray *array = [NSMutableArray array];
//    [array addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[red]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(red)]];
//    [array addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[red]-20-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(red)]];
//    [array addObjectsFromArray:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[red(30)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(red)]];
//    [self.view addConstraints:array];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[red]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(red)]];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[red]-20-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(red)]];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[red(30)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(red)]];
    
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[red]-20-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(red)]];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[red]-20-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(red)]];

//    [self insets:UIEdgeInsetsMake(59, 80, 100, 120) view:red];
    UIView *blue = [[UIView alloc]initWithFrame:CGRectMake(10, 10, self.view.frame.size.width - 20, 30)];
    blue.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:blue];
//    UIEdgeInsetsMake(<#CGFloat top#>, <#CGFloat left#>, <#CGFloat bottom#>, <#CGFloat right#>)
}

- (void)insets:(UIEdgeInsets)insets view:(UIView *)view {
    id superView = view.superview;
    NSString *h = [NSString stringWithFormat:@"H:|-%F-[view]-%F-|",insets.left, insets.right];
    [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:h options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];
    NSString *v = [NSString stringWithFormat:@"V:|-%F-[view]-%F-|",insets.top, insets.bottom];
    [superView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:v options:0 metrics:nil views:NSDictionaryOfVariableBindings(view)]];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
