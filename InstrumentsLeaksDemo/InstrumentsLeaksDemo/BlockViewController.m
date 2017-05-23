//
//  BlockViewController.m
//  InstrumentsLeaksDemo
//
//  Created by GrayLeo on 2017/3/13.
//  Copyright © 2017年 GrayLeo. All rights reserved.
//

#import "BlockViewController.h"

typedef void (^Block) (void);

@interface BlockViewController ()
@property (nonatomic, strong) Block block;

@end

@implementation BlockViewController

- (void)dealloc {
    //内存泄漏
    // BlockViewController 强引用 block
    // block 强引用 BlockViewController
    NSLog(@"-- ht log -- %@, %s", NSStringFromClass(self.class), __FUNCTION__);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.block = ^(){
        int num = arc4random()%3;
        UIColor *color = nil;
        switch (num) {
            case 0:
                color = [UIColor redColor];
                break;
            case 1:
                color = [UIColor greenColor];
                break;
            case 2:
                color = [UIColor yellowColor];
                break;
            default:
                break;
        }
        self.view.backgroundColor = color;
    };
    self.block();
    
}


@end
