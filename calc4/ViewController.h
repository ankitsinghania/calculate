//
//  ViewController.h
//  calc4
//
//  Created by ankit on 7/24/13.
//  Copyright (c) 2013 xperttech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *sliderLabel;
@property (weak, nonatomic) IBOutlet UITextField *boxOne;
@property (weak, nonatomic) IBOutlet UITextField *boxTwo;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;

@end
