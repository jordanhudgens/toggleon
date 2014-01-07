//
//  MyViewController.m
//  Toggle On One
//
//  Created by Jordan Hudgens on 1/4/14.
//  Copyright (c) 2014 Jordan Hudgens. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *switchValue;
@property (retain, nonatomic) IBOutletCollection(UILabel) NSArray *arrayOfLabels;

@end

@implementation MyViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)labelChange:(id)sender {
    
    for (UILabel *label in self.arrayOfLabels)
    {
        if (_switchValue.isOn) {
            [label setHidden:NO];
        } else {
            [label setHidden:YES];
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
