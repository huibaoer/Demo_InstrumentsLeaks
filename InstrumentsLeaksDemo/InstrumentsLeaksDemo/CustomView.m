//
//  CustomView.m
//  InstrumentsLeaksDemo
//
//  Created by GrayLeo on 2017/3/13.
//  Copyright © 2017年 GrayLeo. All rights reserved.
//

#import "CustomView.h"

@interface CustomView ()
@property (strong, nonatomic) IBOutlet UIView *contentView;

@end

@implementation CustomView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI {
    [[NSBundle mainBundle] loadNibNamed:@"CustomView" owner:self options:nil];
    [self addSubview:_contentView];
    
    //约束
    self.translatesAutoresizingMaskIntoConstraints = NO;
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_contentView]|" options:NSLayoutFormatAlignAllTop metrics:nil views:NSDictionaryOfVariableBindings(_contentView)]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_contentView]|" options:NSLayoutFormatAlignAllLeft metrics:nil views:NSDictionaryOfVariableBindings(_contentView)]];
}


- (IBAction)button1Action:(id)sender {
    if ([self.delegate respondsToSelector:@selector(customView:didTapButtonWithIndex:)]) {
        [self.delegate customView:self didTapButtonWithIndex:0];
    }
}

- (IBAction)button2Action:(id)sender {
    if ([self.delegate respondsToSelector:@selector(customView:didTapButtonWithIndex:)]) {
        [self.delegate customView:self didTapButtonWithIndex:0];
    }
}


@end








