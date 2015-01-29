//
//  NRCMercuryMeter.m
//  MercuryMeter
//
//  Created by Nathan Corvino on 1/28/15.
//  Copyright (c) 2015 Nathan Corvino. All rights reserved.
//

#import "NRCMercuryMeter.h"

@interface NRCMercuryMeter () {
    CALayer *rightLayer;
    CALayer *leftLayer;
}

@end

@implementation NRCMercuryMeter

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self doInit];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self doInit];
    }
    return self;
}

- (void)doInit
{
    rightLayer = [CALayer layer];
    rightLayer.masksToBounds = YES;

    leftLayer = [CALayer layer];
    self.value = 0.;

    [self.layer addSublayer:rightLayer];
    [rightLayer addSublayer:leftLayer];
}

- (void)layoutSublayersOfLayer:(CALayer *)layer
{
    rightLayer.frame = CGRectMake(0., 0., self.bounds.size.width, self.bounds.size.height);
    rightLayer.cornerRadius = self.bounds.size.height / 2.;

    CGRect frame = CGRectMake(0., 0., self.bounds.size.width * self.value, self.bounds.size.height);
    leftLayer.frame = frame;
}

- (void)setValue:(CGFloat)value
{
    _value = value;

    [self layoutSublayersOfLayer:self.layer];
}

- (void)setLeftColor:(UIColor *)leftColor
{
    _leftColor = leftColor;
    leftLayer.backgroundColor = leftColor.CGColor;
}

- (void)setRightColor:(UIColor *)rightColor
{
    _rightColor = rightColor;
    rightLayer.backgroundColor = rightColor.CGColor;
}

@end
