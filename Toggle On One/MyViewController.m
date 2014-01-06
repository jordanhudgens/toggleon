//
//  MyViewController.m
//  Toggle On One
//
//  Created by Jordan Hudgens on 1/4/14.
//  Copyright (c) 2014 Jordan Hudgens. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;
@property (weak, nonatomic) IBOutlet UISwitch *switchValue;

@property (retain, nonatomic) IBOutletCollection(UILabel) NSArray *test;

@end

@implementation MyViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)labelChange:(id)sender {
    if (_switchValue.isOn) {
        _label1.hidden;
        _label2.hidden;
        _label3.hidden;
    } else {
        _label1.text = @"my string";
        _label2.text = @"my string2";
        _label3.text = @"my string3";
    }
    NSArray *funnyWords = @[@"Schadenfreude", @"Portmanteau", @"Penultimate"];
    
    for (NSString *word in funnyWords) {
        if (_switchValue.isOn) {
            _label1.hidden;
            _label2.hidden;
            _label3.hidden;
        } else {
            _label1.text = @"my string";
            _label2.text = @"my string2";
            _label3.text = @"my string3";
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
