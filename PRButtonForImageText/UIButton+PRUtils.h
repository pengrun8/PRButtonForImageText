//
//  UIButton+PRUtils.h
//  PRButtonForImageText
//
//  Created by MH-Pengrun on 15/6/12.
//  Copyright (c) 2015年 MH. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, PRButtonType){
    ///image左 label右
    PRButtonImageOnLeftWithLabelOnRight,
    ///image右 label左
    PRButtonImageOnRightWithLabelLeft,
    ///image上 label下
    PRButtonImageOnTopWithLabelBottom,
    ///image下 label上
    PRButtonImageOnBottomWithLabelTop
};

@interface UIButton (PRUtils)

/**
 *  设置按钮
 *
 *  @param buttonType button的类型：图片、标题位置
 *  @param gap        标题 图片之间距离
 */
- (void)setButtonType:(PRButtonType)buttonType withGap:(CGFloat)gap;

/**
 *  设置按钮的方向，默认图片和title间隔10
 *
 *  @param buttonType button的类型：图片、标题位置
 */
- (void)setButtonType:(PRButtonType)buttonType;
@end
