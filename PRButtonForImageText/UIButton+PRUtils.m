//
//  UIButton+PRUtils.m
//  PRButtonForImageText
//
//  Created by MH-Pengrun on 15/6/12.
//  Copyright (c) 2015年 MH. All rights reserved.
//

#import "UIButton+PRUtils.h"

@implementation UIButton (PRUtils)

- (void)setButtonType:(PRButtonType)buttonType
{
    [self setButtonType:buttonType withGap:10];
}

- (void)setButtonType:(PRButtonType)buttonTYpe withGap:(CGFloat)gap
{
    CGSize imageSize = self.imageView.image.size;
    CGSize titleSize = CGSizeZero;
#if __IPHONE_OS_VERSION_MIN_REQUIRED >= 70000
    titleSize = [self.titleLabel.text sizeWithAttributes:@{NSFontAttributeName : self.titleLabel.font}];
#else
    titleSize = [self.titleLabel.text sizeWithFont:self.title.font];
#endif

    switch (buttonTYpe) {
        case PRButtonImageOnBottomWithLabelTop:
        {
            self.titleEdgeInsets = UIEdgeInsetsMake(- (imageSize.height + gap / 2) , -imageSize.width, 0, 0);
            self.titleLabel.textAlignment = NSTextAlignmentCenter;
            self.imageEdgeInsets = UIEdgeInsetsMake((titleSize.height +  gap / 2), 0, 0, -titleSize.width);
            
        }
            break;
        case PRButtonImageOnTopWithLabelBottom:
        {
            self.titleEdgeInsets = UIEdgeInsetsMake(imageSize.height + gap / 2, -imageSize.width, 0, 0);
            self.titleLabel.textAlignment = NSTextAlignmentCenter;
            self.imageEdgeInsets = UIEdgeInsetsMake(-(titleSize.height + gap / 2), 0, 0, -titleSize.width);
        }
            break;
        case PRButtonImageOnLeftWithLabelOnRight:
        {
            self.titleEdgeInsets = UIEdgeInsetsMake(0, gap / 2, 0, 0);
            self.titleLabel.textAlignment = NSTextAlignmentCenter;
            self.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, gap / 2);
        }
            break;
        case PRButtonImageOnRightWithLabelLeft:
        {
            self.titleEdgeInsets = UIEdgeInsetsMake(0, - (imageSize.width * 2 + gap / 2), 0, 0);
            self.titleLabel.textAlignment = NSTextAlignmentCenter;
            self.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, - (titleSize.width * 2 + gap / 2));
        }
            break;
            
        default:
            break;
    }
}
@end
