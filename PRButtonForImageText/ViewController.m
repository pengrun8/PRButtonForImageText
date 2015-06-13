//
//  ViewController.m
//  PRButtonForImageText
//
//  Created by MH-Pengrun on 15/6/12.
//  Copyright (c) 2015年 MH. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+PRUtils.h"

#define kTagWithButton 111

#define gap 20

@interface ViewController ()

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *arrBtn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    for (int i = 0; i < self.arrBtn.count; i ++) {
        UIButton *button = (UIButton *)self.arrBtn[i];
        [button setTitle:@"Vincent" forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"test"] forState:UIControlStateNormal];
        switch (i) {
            case 0:
            {
                [button setButtonType:PRButtonImageOnBottomWithLabelTop withGap:gap];
            }
                break;
            case 1:
            {
                [button setButtonType:PRButtonImageOnTopWithLabelBottom withGap:gap];
            }
                break;
            case 2:
            {
                [button setButtonType:PRButtonImageOnLeftWithLabelOnRight withGap:gap];
            }
                break;
            case 3:
            {
                [button setButtonType:PRButtonImageOnRightWithLabelLeft withGap:gap];
            }
                break;
                
            default:
                break;
        }
    }
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
