//
//  TimerViewController.m
//  InstrumentsLeaksDemo
//
//  Created by GrayLeo on 2017/3/13.
//  Copyright © 2017年 GrayLeo. All rights reserved.
//

#import "TimerViewController.h"

@interface TimerViewController ()
@property (nonatomic, strong) NSTimer *timer;
@property (nonatomic, assign) long num;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation TimerViewController

- (void)dealloc {
    // 内存泄露
    // runloop 强引用了 timer
    // timer 强引用了 self
    // self 强引用了 timer（非必要条件）
    [_timer invalidate];
    _timer = nil;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _num = 0;
    _label.text = [NSString stringWithFormat:@"timer : %ld", _num];
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerUpdate:) userInfo:nil repeats:YES];
    [self.timer fire];
}

- (void)timerUpdate:(NSTimer *)timer {
    _num++;
    if (_num > 9999) _num = 0;
    NSLog(@"-- ht log -- timer ： %ld", _num);
    _label.text = [NSString stringWithFormat:@"timer : %ld", _num];
}

@end
