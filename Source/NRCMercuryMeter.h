//
//  NRCMercuryMeter.h
//  MercuryMeter
//
//  Created by Nathan Corvino on 1/28/15.
//  Copyright (c) 2015 Nathan Corvino. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface NRCMercuryMeter : UIView

@property (nonatomic) IBInspectable CGFloat value;
@property (nonatomic, strong) IBInspectable UIColor *leftColor;
@property (nonatomic, strong) IBInspectable UIColor *rightColor;

@end
