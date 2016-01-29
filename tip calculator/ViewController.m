//
//  ViewController.m
//  tip calculator
//
//  Created by BridgeLabz on 23/12/15.
//  Copyright © 2015 BridgeLabz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize value;
@synthesize user;
@synthesize slider;
@synthesize slidervalue;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [slider setMaximumValue:1.0];
}
-(IBAction)calculate:(id)sender
{
    
    
    NSString *totalValue=[user text];
    if ([totalValue length]==0)
    {
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Empty TextField"
                                                                       message:@"Enter total amount of Bill"
                                                                preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {}];
        
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
    }
    else
    {
        float firstNumber=[totalValue floatValue];
        float ans=[slider value]*firstNumber;
        NSString *finalAns=[NSString stringWithFormat:@"%1.2f",ans];
        [value setText:finalAns];
    }
}
-(IBAction)sliderChange:(id)sender
{
    NSString *s=[NSString stringWithFormat:@"%1.2f",[slider value]];
    [slidervalue setText:s];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
