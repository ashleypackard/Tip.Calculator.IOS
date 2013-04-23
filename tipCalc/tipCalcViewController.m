//
//  tipCalcViewController.m
//  tipCalc
//
//  Created by Ashley Packard on 1/30/13.
//  Copyright (c) 2013 Ashley Packard. All rights reserved.
//

#import "tipCalcViewController.h"

@interface tipCalcViewController ()

@end

@implementation tipCalcViewController


- (IBAction)exitKeyboard:(id)sender
{
    [sender resignFirstResponder];
}

- (IBAction)calcTapped:(id)sender
{
    NSString *billAmountString = [_billAmountTextField text];
    float billAmountFloat = [billAmountString floatValue];
    
    NSString *tipPercentString = [_percentStepperTextField text];
    float tipPercentFloat = [tipPercentString floatValue];
    tipPercentFloat = tipPercentFloat/100;
        
    float tipAmount = billAmountFloat * tipPercentFloat;
    
    NSString *result = nil;
   

                        
    if ([billAmountString length] == 0)
    {
        result = @"Bill amount was not entered.";
    }
    else
    {
        result = [NSString stringWithFormat:@"Your tip should be: $%0.2f", tipAmount];
    }
    
     [_resultLabel setText:result];
    
    NSString *totalResult = [NSString stringWithFormat:@"Your total bill is $%0.2f", (tipAmount + billAmountFloat)];
    
    [_totalBillThatNeedsToBePaid setText: totalResult];
    
    
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    // Set min and max
    [_tipPercentStepper setMinimumValue:-15];
    [_tipPercentStepper setMaximumValue:85];
        
    // Value wraps around from minimum to maximum
    [_tipPercentStepper setWraps:YES];
    
    // If continuos (default), changes are sent for each change in stepper,
    // otherwise, change event occurs once user lets up on button
    [_tipPercentStepper setContinuous:YES];
    
    // To change the increment value for each step
    // (default is 1)
    [_tipPercentStepper setStepValue:5];
}

- (IBAction)valueChanged:(UIStepper *)sender
{
    int tipPercentFromStepper = [sender value];
    
    [_percentStepperTextField setText:[NSString stringWithFormat:@"%d", (15 + tipPercentFromStepper)]];

}

@end
