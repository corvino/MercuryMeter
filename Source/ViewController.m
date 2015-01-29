//
//  ViewController.m
//  MercuryMeter
//
//  Created by Nathan Corvino on 1/28/15.
//  Copyright (c) 2015 Nathan Corvino. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)updateValue:(id)sender {
    if (self.mercuryMeter.value != self.slider.value) {
        [UIView animateWithDuration:2.0 animations:^{
            self.mercuryMeter.value = self.slider.value;
        }];
    }
}

@end
