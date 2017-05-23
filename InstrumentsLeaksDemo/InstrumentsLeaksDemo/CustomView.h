//
//  CustomView.h
//  InstrumentsLeaksDemo
//
//  Created by GrayLeo on 2017/3/13.
//  Copyright © 2017年 GrayLeo. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomViewDelegate;


@interface CustomView : UIView
@property (nonatomic, strong/*内存泄露*/) id<CustomViewDelegate> delegate;

@end

@protocol CustomViewDelegate <NSObject>

- (void)customView:(CustomView *)view didTapButtonWithIndex:(int)index;

@end
