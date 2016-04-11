//
//  KeyBoardView.m
//  KeyboardToolbarObjectiveC
//
//  Created by IOS Developer on 11/04/2016.
//  Copyright © 2016 IOS Developer. All rights reserved.
//

#import "KeyBoardView.h"

@implementation KeyBoardView



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


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/







@end
