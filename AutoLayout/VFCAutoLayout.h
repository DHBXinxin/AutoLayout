//
//  VFCAutolayout.h
//  AutoLayout
//
//  Created by DHSD on 2018/5/9.
//  Copyright © 2018年 DHSD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
/**
 手写代码自动布局
 */
@interface VFCAutoLayout : NSObject
/**
 设置高度
 */
+ (void)setView:(UIView *)view withHeight:(NSString *)height;

+ (void)setView:(UIView *)view withWidth:(NSString *)width;

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
 设置上下两个view的间距

 @param space float
 @param topView 上view
 @param bottomView 下view
 */
+ (void)setSpace:(CGFloat)space topView:(UIView *)topView bottomView:(UIView *)bottomView;
/**
 设置左右两个view的间距

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
#pragma mark - VFC常用
//功能　　　　　　　　表达式
//
//水平方向  　　　　　　  H:
//
//垂直方向  　　　　　　  V:
//
//Views　　　　　　　　 [view]
//
//SuperView　　　　　　|
//
//关系　　　　　　　　　>=,==,<=
//
//空间,间隙　　　　　　　-
//
//优先级　　　　　　　　@value
//例如下面的包含了大约所有的格式字符串
//@"V:|-20-[button(==30@1000)]"

//1.|-[view]-|:  视图处在父视图的左右边缘内
//2.|-[view]  :   视图处在父视图的左边缘
//3.|[view]   :   视图和父视图左边对齐
//4.-[view]-  :  设置视图的宽度高度
//5.|-30.0-[view]-30.0-|:  表示离父视图 左右间距  30
//6.[view(200.0)] : 表示视图宽度为 200.0
//7.|-[view(view1)]-[view1]-| :表示视图宽度一样，并且在父视图左右边缘内
//8. V:|-[view(50.0)] : 视图高度为  50
//9: V:|-(==padding)-[imageView]->=0-[button]-(==padding)-| : 表示离父视图的距离
//为Padding,这两个视图间距必须大于或等于0并且距离底部父视图为 padding。
//10:  [wideView(>=60@700)]  :视图的宽度为至少为60 不能超过  700
//11: 如果没有声明方向默认为  水平  H:

//NSLayoutFormatAlignAllLeft//控件之间左对齐
//
//NSLayoutFormatAlignAllRight//控件之间右对齐
//
//NSLayoutFormatAlignAllTop//...上对齐
//
//NSLayoutFormatAlignAllBottom//...下对齐
//
//NSLayoutFormatAlignAllLeading // 使所有视图根据当前区域文字开始的边缘对齐（英语：左边，希伯来语：右边）
//
//NSLayoutFormatAlignAllTrailing // 使所有视图根据当前区域文字结束的边缘对齐（英语：右边，希伯来语：左边）。
//
//NSLayoutFormatAlignAllCenterX // 使所有视图通过设置中心点的 X 值彼此相等来对齐。
// [NSLayoutConstraint constraintsWithVisualFormat:(nonnull NSString *) options:(NSLayoutFormatOptions) metrics:(nullable NSDictionary<NSString *,id> *) views:(nonnull NSDictionary<NSString *,id> *)]

//1) 第一个参数：使用VFL格式化的字符串，可以参见官方的帮助文档；
//
//2) 第二个参数：指定VFL中所有对象的布局属性和方向。举例：有2个视图使用VFL进行布局，可以使用NSLayoutFormatAlignAllLeft，就让两个视图左对齐；
//
//3) 第三个参数：度量或者指标的字典，字典里面有相关的键值对来控制相关的度量指标，通过key获取；
//例子：NSDictionary* spaceMetrics = @{@"space": @30};取值方式为@"H:|-space-[view]"
//
//4) 第四个参数：指定约束的视图：一个或多个。 NSDictionaryOfVariableBindings(v1, v2, v3) log出来就是 [NSDictionary dictionaryWithObjectsAndKeys:v1, @"v1", v2, @"v2", v3, @"v3", nil]

#pragma mark - NSLayoutConstraint
//[NSLayoutConstraint constraintWithItem:(id)item
//
//                             attribute:(NSLayoutAttribute)attribute
//
//                             relatedBy:(NSLayoutRelation)relation
//
//                                toItem:(id)otherItem
//
//                             attribute:(NSLayoutAttribute)otherAttribute
//
//                            multiplier:(CGFloat)multiplier
//
//                              constant:(CGFloat)constant]
//第一个参数:指定约束左边的视图view1
//
//第二个参数:指定view1的属性attribute1
//
//第三个参数:指定左右两边的视图的关系relation
//
//第四个参数:指定约束右边的视图view2
//
//第五个参数:指定view2的属性attribute2
//
//第六个参数:指定一个与view2属性相乘的乘数multiplier
//
//第七个参数:指定一个与view2属性相加的浮点数constant
//
//依据的公式是：view1.attribute1 = view2.attribute2*multiplier +constant
//NSLayoutAttribute
//NSLayoutAttributeLeft 视图的左边
//
//NSLayoutAttributeRight 视图的右边
//
//NSLayoutAttributeTop 视图的上边
//
//NSLayoutAttributeBottom 视图的下边
//
//NSLayoutAttributeLeading 视图的前边
//
//NSLayoutAttributeTrailing 视图的后边
//
//NSLayoutAttributeWidth 视图的宽度
//
//NSLayoutAttributeHeight 视图的高度
//
//NSLayoutAttributeCenterX 视图的中点的X值
//
//NSLayoutAttributeCenterY 视图中点的Y值
//
//NSLayoutAttributeBaseline 视图的基准线
//
//NSLayoutAttributeNotAnAttribute 无属性
//NSLayoutRelation
//NSLayoutRelationLessThanOrEqual 视图关系小于或等于
//
//NSLayoutRelationEqual      视图关系等于
//
//NSLayoutRelationGreaterThanOrEqual      视图关系大于或等于
