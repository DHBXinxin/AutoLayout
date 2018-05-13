//
//  VCScroll.m
//  AutoLayout
//
//  Created by DHSD on 2018/5/12.
//  Copyright © 2018年 DHSD. All rights reserved.
//

#import "VCScroll.h"
#import "CommonAutoLayout.h"
#import "VCFor.h"
@interface VCScroll ()


@end

@implementation VCScroll

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:scrollView];
    
    scrollView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [CommonAutoLayout setViewZero:scrollView];
    
    UILabel *lastLabel = nil;
    for (NSInteger i = 0; i < 30; i++) {
        UILabel *label = [[UILabel alloc]init];
        label.text = @"这个世界太冷了";
        [scrollView addSubview:label];
        label.translatesAutoresizingMaskIntoConstraints = NO;
        [CommonAutoLayout setView:label withHeight:50];
//        [CommonAutoLayout setView:label withWidth:200];
        [CommonAutoLayout setView:label withInsets:UIEdgeInsetsMake(0, 20, 0, 20)];
        label.backgroundColor = [UIColor redColor];
        if (lastLabel) {
            [CommonAutoLayout setSpace:20 topView:lastLabel bottomView:label];
        } else {
            [CommonAutoLayout setView:label withInsets:UIEdgeInsetsMake(20, 0, 0, 0)];
        }
        lastLabel = label;
    }
    
    [scrollView layoutIfNeeded];//layout之后所有的自动布局就会马上起作用、而lastLabel的frame也就有值了
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width, lastLabel.frame.origin.y + lastLabel.frame.size.height);
//    NSLog(@"%@",scrollView);
    CGFloat f = [scrollView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
//    NSLog(@"%f",f);
    UIView *vLabel = [[UILabel alloc]init];
//    vLabel.text = @"这个杀手不太冷";
    vLabel.backgroundColor = [UIColor blueColor];
    vLabel.translatesAutoresizingMaskIntoConstraints = NO;
//    [self.view addSubview:vLabel];
//    [CommonAutoLayout setView:vLabel withHeight:50];
//    [CommonAutoLayout setView:vLabel withInsets:UIEdgeInsetsMake(0, 20, 0, 20)];
    
    [scrollView addSubview:vLabel];
    [CommonAutoLayout setViewZero:vLabel];
    
    
    UIButton *bt = [[UIButton alloc]init];
    bt.backgroundColor = [UIColor redColor];
    [bt setTitle:@"button" forState:UIControlStateNormal];
    [self.view addSubview:bt];
    bt.translatesAutoresizingMaskIntoConstraints = NO;
    [bt addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    
    [CommonAutoLayout setView:bt withHeight:44];
    [CommonAutoLayout setView:bt withWidth:44];
    [CommonAutoLayout setYMidView:bt superView:self.view];
    [CommonAutoLayout setXMidView:bt superView:self.view];
    
}
- (void)push {
    VCFor *vc = [[VCFor alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
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
