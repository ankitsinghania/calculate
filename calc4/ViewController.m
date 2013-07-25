//
//  ViewController.m
//  calc4
//
//  Created by ankit on 7/24/13.
//  Copyright (c) 2013 xperttech. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize sliderLabel, slider, boxOne, boxTwo, answerLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sliderChanged:(id)sender {
    
    if (slider.value == 1) {
        sliderLabel.text = @"Add";
    }
    if (slider.value > 1 && slider.value < 2) {
        sliderLabel.text = @"Subtract";
    }
    if (slider.value > 2 && slider.value < 3) {
        sliderLabel.text = @"Multiply";
    }
    if (slider.value == 3) {
        sliderLabel.text = @"Divide";
    }
    
}
- (IBAction)buttonIsPressed:(id)sender {
    int box1 = [boxOne.text integerValue];
    int box2 = [boxTwo.text integerValue];
    int add = box1 + box2;
    int mult = box1 * box2;
    int sub = box1 - box2;
    double div = ((double)box1)/box2;
    if ([sliderLabel.text isEqualToString:@"Add"]) {
        answerLabel.text = [NSString stringWithFormat:@"%d", add];
    }
    if ([sliderLabel.text isEqualToString:@"Subtract"]) {
        answerLabel.text = [NSString stringWithFormat:@"%d", sub];
    }
    if ([sliderLabel.text isEqualToString:@"Multiply"]) {
        answerLabel.text = [NSString stringWithFormat:@"%d", mult];
    }
    if ([sliderLabel.text isEqualToString:@"Divide"]) {
        answerLabel.text = [NSString stringWithFormat:@"%f", div];
        
    }
    [self.view endEditing:YES];

}



@end
