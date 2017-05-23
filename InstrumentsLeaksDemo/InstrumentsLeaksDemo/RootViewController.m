//
//  RootViewController.m
//  InstrumentsLeaksDemo
//
//  Created by GrayLeo on 2017/3/13.
//  Copyright © 2017年 GrayLeo. All rights reserved.
//

#import "RootViewController.h"
#import "TimerViewController.h"
#import "DelegateViewController.h"
#import "BlockViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"内存泄露Demo";
}

- (IBAction)timerAction:(id)sender {
    TimerViewController *vc = [[TimerViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)delegateAction:(id)sender {
    DelegateViewController *vc = [[DelegateViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)blockAction:(id)sender {
    BlockViewController *vc = [[BlockViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
