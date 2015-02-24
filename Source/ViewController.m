//
//  ViewController.m
//  MercuryMeter
//
//  Created by Nathan Corvino on 1/28/15.
//  Copyright (c) 2015 Nathan Corvino. All rights reserved.
//

#import "ViewController.h"

// Yes, evilevilkludgekludge. It's a demo. Keep it short.
static const CGFloat meterHeights[] = { 5., 15., 25., 35., 45. };
static const NSUInteger numMeterHeights = sizeof(meterHeights) / sizeof(meterHeights[0]);

@interface ViewController () {
    NSUInteger meterHeightIndex;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    // Magic coordination with IB.
    meterHeightIndex = 2;
}

- (IBAction)updateValue:(id)sender
{
    if (self.mercuryMeter.value != self.slider.value) {
        self.mercuryMeter.value = self.slider.value;
    }
}

- (IBAction)shrinkPressed:(id)sender
{
    meterHeightIndex--;
    [self adjustMeterHeight];
}

- (IBAction)resetPressed:(id)sender
{
    meterHeightIndex = floor(numMeterHeights / 2);
    [self adjustMeterHeight];
}

- (IBAction)growPressed:(id)sender
{
    meterHeightIndex++;
    [self adjustMeterHeight];
}

- (void)adjustMeterHeight
{
    self.mercuryMeterHeight.constant = meterHeights[meterHeightIndex];
    self.meterSliderYAlignment.constant = (25 - meterHeights[meterHeightIndex]) / 2.;

    self.shrinkButton.enabled = (0 != meterHeightIndex);
    self.resetButton.enabled = (floor(numMeterHeights / 2) != meterHeightIndex);
    self.growButton.enabled = (numMeterHeights - 1 != meterHeightIndex);
}

@end
