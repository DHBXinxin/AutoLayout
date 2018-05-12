//
//  VCLeftRight.m
//  AutoLayout
//
//  Created by DHSD on 2018/5/10.
//  Copyright © 2018年 DHSD. All rights reserved.
//

#import "VCLeftRight.h"

@interface VCLeftRight ()

@end

@implementation VCLeftRight

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIView *redView = [[UIView alloc]init];
    UIView *blueView = [[UIView alloc]init];
    redView.backgroundColor = [UIColor redColor];
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:redView];
    [self.view addSubview:blueView];
    //取消系统自动创建的约束
    redView.translatesAutoresizingMaskIntoConstraints = NO;
    blueView.translatesAutoresizingMaskIntoConstraints = NO;
    
    NSDictionary *spaceMetrics = @{@"space": @30};
    NSString *hVFC = @"V:|-space-[redView]-[blueView(==redView)]-space-|";
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:hVFC options:NSLayoutFormatAlignAllRight metrics:spaceMetrics views:NSDictionaryOfVariableBindings(redView,blueView)]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-100-[redView(50)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(redView)]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[blueView(30)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(blueView)]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
