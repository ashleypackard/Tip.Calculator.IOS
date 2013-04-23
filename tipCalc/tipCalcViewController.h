//
//  tipCalcViewController.h
//  tipCalc
//
//  Created by Ashley Packard on 1/30/13.
//  Copyright (c) 2013 Ashley Packard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tipCalcViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentTextField;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UIStepper *tipPercentStepper;
@property (weak, nonatomic) IBOutlet UILabel *percentStepperTextField;
@property (weak, nonatomic) IBOutlet UILabel *totalBillThatNeedsToBePaid;
- (IBAction)exitKeyboard:(id)sender;
- (IBAction)calcTapped:(id)sender;
- (IBAction)valueChanged:(id)sender;

@end
