//
//  ViewController.m
//  AutoLayout
//
//  Created by DHSD on 2018/5/9.
//  Copyright © 2018年 DHSD. All rights reserved.
//

#import "VCComon.h"
#import "CommonAutoLayout.h"

/**
 添加一个方法、就需要测试一个方法
 */
@interface VCComon ()

@end

@implementation VCComon

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    UIView *view = [[UIView alloc]init];
//    view.backgroundColor = [UIColor redColor];
//    
//    [self.view addSubview:view];
//    
//    [CommonAutoLayout setView:view withHeight:50];
//    view.translatesAutoresizingMaskIntoConstraints = NO;
////    UIEdgeInsetsMake(<#CGFloat top#>, <#CGFloat left#>, <#CGFloat bottom#>, <#CGFloat right#>)
//    [CommonAutoLayout setView:view withInsets:UIEdgeInsetsMake(20, 20, 0, 100)];
//    UIView *red = [[UIView alloc]init];
//    red.backgroundColor = [UIColor redColor];
//    [self.view addSubview:red];
//    
//    red.translatesAutoresizingMaskIntoConstraints = NO;
//    
//    [CommonAutoLayout setView:red withWidth:44];
//    [CommonAutoLayout setView:red withHeight:44];
//    [CommonAutoLayout setXMidView:red superView:self.view];
//    [CommonAutoLayout setYMidView:red superView:self.view];
//    [CommonAutoLayout setSpace:10 leftView:view rightView:red];
//    [CommonAutoLayout setSpace:10 topView:view bottomView:red];
    
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
//    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 30)];
//    label.text = @"试试这个东西";
//    [view addSubview:label];
//    CGFloat f = [view systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
//    NSLog(@"%f",f);
    NSMutableArray *views = [NSMutableArray array];
    for (NSInteger i = 0; i < 10; i++) {
        UIView *v = [[UIView alloc]init];
        v.backgroundColor = [UIColor redColor];
        v.translatesAutoresizingMaskIntoConstraints = NO;
        [self.view addSubview:v];
        [views addObject:v];
    }
//    [CommonAutoLayout setHorizontallyViews:views withSpace:10 andHeight:40 topInset:50 orBottomInset:0];
    [CommonAutoLayout setVerticallyViews:views withSpace:10 andWidth:40 leftInset:50 andRightInset:0];
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
