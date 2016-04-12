//
//  KeyBoardView.m
//  KeyboardToolbarObjectiveC
//
//  Created by IOS Developer on 11/04/2016.
//  Copyright © 2016 IOS Developer. All rights reserved.
//

#import "KeyBoardView.h"
#import "ViewController.h"
@implementation KeyBoardView


//- (IBAction)tabButtonPressed:(id)sender {
//    
// //   [_delegate SendTextToController: self : @"Tab bar button pressed"];
//    [self.delegate SendTextToController:self :@"Tab bar button pressed"];
//}

-(void)layoutSubviews{
    
    if (UIDeviceOrientationIsPortrait([UIDevice currentDevice].orientation))
    {
        _approxButton.hidden = YES;
        _HashButton.hidden = YES;
        _AtTheRateButton.hidden = YES;
        _DollarButton.hidden = YES;
    }
    else{
        
        _approxButton.hidden = NO;
        _HashButton.hidden = NO;
        _AtTheRateButton.hidden = NO;
        _DollarButton.hidden = NO;
    }
}




@end
