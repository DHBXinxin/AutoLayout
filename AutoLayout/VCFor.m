//
//  VCFor.m
//  AutoLayout
//
//  Created by DHSD on 2018/5/12.
//  Copyright © 2018年 DHSD. All rights reserved.
//

#import "VCFor.h"

@interface VCFor ()

@property (strong, nonatomic) UIView *redView;

@property (strong, nonatomic) UIView *blueView;

@end

@implementation VCFor

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
//    NSMutableDictionary *views = [NSMutableDictionary dictionary];
//    for (NSInteger i = 0; i < 2; i++) {
//        UIView *view = [[UIView alloc]init];
//        [self.view addSubview:view];
//        NSDictionary *viewDic = NSDictionaryOfVariableBindings(view);
//        [views setValuesForKeysWithDictionary:viewDic];
////        view.backgroundColor = [UIColor redColor];
//        view.translatesAutoresizingMaskIntoConstraints = NO;
//        if (i == 1) {
//            self.redView = view;
//        } else {
//            self.blueView = view;
//        }
//    }
    self.redView = [[UIView alloc]init];
    self.redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redView];
    self.blueView = [[UIView alloc]init];
    self.blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.blueView];
    self.redView.translatesAutoresizingMaskIntoConstraints = NO;
    self.blueView.translatesAutoresizingMaskIntoConstraints = NO;
//    NSDictionary *views = NSDictionaryOfVariableBindings(self.redView, self.blueView);
//    //与其相对应的是@{@"self.redView": self.redView, @"self.blueView": self.blueView}
//    views = @{@"redView": self.redView, @"blueView": self.blueView};
//    //这句代码探明了、前面的key不是一定要与后面的值完全一样、只要这个key与控件绑定了就可以、与下面的这个定义相同、只要能传值就可以
//    NSDictionary *spaceMetrics = @{@"space": @30};
//    spaceMetrics = @{@"space": @"30"};
//    //所以这样写也是可以识别为30
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-space-[blueView]-space-[redView(==blueView)]-space-|" options:NSLayoutFormatAlignAllTop | NSLayoutFormatAlignAllBottom metrics:spaceMetrics views:views]];
//    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[blueView(50)]-space-|" options:0 metrics:spaceMetrics views:views]];

    NSMutableDictionary *views = [NSMutableDictionary dictionary];
    NSMutableString *hvfl = [NSMutableString string];
    NSMutableString *vvfl = [NSMutableString string];
    NSString *firstKey = nil;
    NSString *lastKey = nil;
    for (NSInteger i = 0 ; i < 4; i++) {
        UIView *view = [[UIView alloc]init];
        NSString *viewKey = [NSString stringWithFormat:@"view%li",(long)i];
        [views setObject:view forKey:viewKey];
        if (i == 0) {
            firstKey = viewKey;
            [hvfl appendFormat:@"H:|-20-[%@]",viewKey];
        } else if (i < 3) {
            [hvfl appendFormat:@"-20-[%@(==%@)]",viewKey, lastKey];
        } else if (i == 3) {
            [hvfl appendFormat:@"-20-[%@(==%@)]-20-|",viewKey, lastKey];
        }
        view.backgroundColor = [UIColor redColor];
        [self.view addSubview:view];
        view.translatesAutoresizingMaskIntoConstraints = NO;
        lastKey = viewKey;
    }
    [vvfl appendFormat:@"V:[%@(50)]-100-|",firstKey];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:hvfl options:NSLayoutFormatAlignAllTop|NSLayoutFormatAlignAllBottom metrics:nil views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vvfl options:0 metrics:nil views:views]];
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
