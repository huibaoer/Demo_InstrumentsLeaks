//
//  DelegateViewController.m
//  InstrumentsLeaksDemo
//
//  Created by GrayLeo on 2017/3/13.
//  Copyright © 2017年 GrayLeo. All rights reserved.
//

#import "DelegateViewController.h"
#import "CustomView.h"

@interface DelegateViewController () <CustomViewDelegate>
@property (weak, nonatomic) IBOutlet CustomView *customView;

@end

@implementation DelegateViewController

- (void)dealloc {
    //内存泄漏
    // DelegateViewController 强引用 view
    // view 强引用 CustomView
    // CustomView 通过delegate强引用 DelegateViewController
    NSLog(@"-- ht log -- %@, %s", NSStringFromClass(self.class), __FUNCTION__);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.customView.delegate = self;
}

//MARK : - CustomViewDelegate
- (void)customView:(CustomView *)view didTapButtonWithIndex:(int)index {
    NSLog(@"-- ht log -- customView tap button : %d", index);
}

@end
