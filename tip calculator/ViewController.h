//
//  ViewController.h
//  tip calculator
//
//  Created by BridgeLabz on 23/12/15.
//  Copyright © 2015 BridgeLabz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property IBOutlet UILabel *value;
@property IBOutlet UITextField *user;
@property IBOutlet UILabel *slidervalue;
@property IBOutlet UISlider *slider;

-(IBAction)calculate:(id)sender;
-(IBAction)sliderChange:(id)sender;
@end

