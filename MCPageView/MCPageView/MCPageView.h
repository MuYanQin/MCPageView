//
//  MCPageView.h
//  QQFoundation
//
//  Created by qinmuqiao on 2018/6/10.
//  Copyright © 2018年 Yuan er. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MCPageView;
@protocol MCPageViewDelegate <NSObject>

/// 切换试图的回调
/// @param MCPageView MCPageView
/// @param index 选择的视图
- (void)MCPageView:(MCPageView *)MCPageView didSelectIndex:(NSInteger)index;

/// 手指开始接触视图
- (void)startGestureRecognizer;

/// 手指离开视图
- (void)endGestureRecognizer;
@end

@interface MCPageView : UIView

@property (nonatomic , assign) id<MCPageViewDelegate>  delegate;

/**
 右边距离屏幕的距离 默认0
 */
@property (nonatomic , assign) CGFloat  marginToRight;

/**
 左边距离屏幕的距离 默认0
 */
@property (nonatomic , assign) CGFloat  marginToLfet;

/**
 可选 默认[UIFont systemFontOfSize:14]
 */
@property (nonatomic , strong) UIFont * defaultTitleFont;

/**
 可选 默认[UIFont systemFontOfSize:14]
 */
@property (nonatomic , strong) UIFont * selectTitleFont;

/**
 可选 默认灰色
 */
@property (nonatomic , strong) UIColor * defaultTitleColor;

/**
 可选 默认黑色
 */
@property (nonatomic , strong) UIColor * selectTitleColor;

/**
 可选 默认平分整个屏幕  设置就按照设置的来
 */
@property (nonatomic , assign) CGFloat  titleButtonWidth;

/**
 可选 item下  横线的颜色 默认取选中字体的颜色
 */
@property (nonatomic , strong) UIColor * lineColor;

/**
可选 item下  横线的高度 默认 1
*/
@property (nonatomic , assign) CGFloat  lineHeight;

/**
 可选 item下 横线的宽度相对于item宽度的比例。0～1 默认0.5
 */
@property (nonatomic , assign) CGFloat lineWitdhScale;


/**
 可选 是否可以滑动 默认yes
 */
@property (nonatomic , assign) BOOL  canSlide;

/**
 可选 设置头部滑动部分的高度
 由于修改 UICollectionView 的frame会重置 contenOffset值 就会引起scrollViewDidScroll代理执行 会造成 设置初始下表不正确
 故 需要在调用 selectIndex 方法前设置此属性
 */
@property (nonatomic , assign) CGFloat  titleViewHeight;


/**
 可选 设置选中时候字体当大的倍数 0～1 默认0.2
*/
@property (nonatomic , assign) CGFloat  fontScale;

/**
 可选 设置角标的数据
 个数须与item个数相同
 设置角标  0 消失  大于零展示 小于0 圆圈
 @param badgeArray 角标的数据
 */
- (void)setItemBadgeWithArray:(NSArray *)badgeArray;


/**
 可选 设置某个item的角标
 设置角标  0 消失  大于零展示 小于0 圆圈
 @param index item下标 0开始
 @param badge 角标数量
 */
- (void)setBadgeWithIndex:(NSInteger)index  badge:(NSInteger)badge;

/**
 可选 手动选中某个iem
 在 titleViewHeight 后使用此方法 原因见 titleViewHeight 属性说明
 @param index item下标
 */
- (void)selectIndex:(NSInteger)index;

/**
 必选 使用Controller实例化方法
 
 @param frame frame
 @param titles titleS数组
 @param controllers controller数组
 @return 实例
 */
- (instancetype)initWithFrame:(CGRect)frame titles:(NSArray *)titles  controllers:(NSArray *)controllers;



/**
 必选 使用View实例化方法
 
 @param frame frame
 @param titles title 数组
 @param views view数组
 @return 实例
 */
- (instancetype)initWithFrame:(CGRect)frame titles:(NSArray *)titles  views:(NSArray *)views;

@end


@interface MCItem : UIButton

/**
 设置角标  0 消失, 小于0 展示圆圈 ,  大于零展示 大于999  显示999+
 */
@property (nonatomic,assign) NSInteger badge;

@end

