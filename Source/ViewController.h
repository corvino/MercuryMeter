//
//  ViewController.h
//  MercuryMeter
//
//  Created by Nathan Corvino on 1/28/15.
//  Copyright (c) 2015 Nathan Corvino. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "NRCMercuryMeter.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet NRCMercuryMeter *mercuryMeter;

@property (weak, nonatomic) IBOutlet UIButton *shrinkButton;
@property (weak, nonatomic) IBOutlet UIButton *resetButton;
@property (weak, nonatomic) IBOutlet UIButton *growButton;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *mercuryMeterHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *meterSliderYAlignment;

- (IBAction)updateValue:(id)sender;

- (IBAction)shrinkPressed:(id)sender;
- (IBAction)resetPressed:(id)sender;
- (IBAction)growPressed:(id)sender;

@end
