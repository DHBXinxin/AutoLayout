//
//  VCTopBottom.m
//  AutoLayout
//
//  Created by DHSD on 2018/5/10.
//  Copyright © 2018年 DHSD. All rights reserved.
//

#import "VCTopBottom.h"

@interface VCTopBottom ()

@end

@implementation VCTopBottom

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView *redView = [[UIView alloc]init];
    UIView *blueView = [[UIView alloc]init];
    redView.backgroundColor = [UIColor redColor];
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:redView];
    [self.view addSubview:blueView];
    redView.translatesAutoresizingMaskIntoConstraints = NO;
    
    
    
//    [self addViews:redView, blueView, nil];
//
//    [self foo:@"%@",@"abc"];
    
}
//就是因为前面的那个format表达式它的可变参数才不用写上nil
- (void)foo:(NSString *)format, ...
{
    va_list args;
    va_start(args, format);
    NSString *str = [[NSString alloc] initWithFormat:format arguments:args];
    va_end(args);
    printf("%s", [str UTF8String]);
}
//可变参数、以nil结束
- (void)addViews:(UIView *)view, ... {
    va_list list;
    va_start(list, view);
    while (YES) {
        UIView *v = va_arg(list, UIView *);
        //v是从第二个参数开始获取的
        if (v == nil) {
            break;
        }
        NSLog(@"%@",v);
    }
    va_end(list);
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