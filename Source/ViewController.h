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

- (IBAction)updateValue:(id)sender;

@end
