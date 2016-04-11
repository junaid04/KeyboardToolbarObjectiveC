//
//  KeyBoardView.h
//  KeyboardToolbarObjectiveC
//
//  Created by IOS Developer on 11/04/2016.
//  Copyright © 2016 IOS Developer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomButton.h"

@interface KeyBoardView : UIView

@property (weak, nonatomic) IBOutlet CustomButton *approxButton;

@property (weak, nonatomic) IBOutlet CustomButton *AtTheRateButton;
@property (weak, nonatomic) IBOutlet CustomButton *HashButton;

@property (weak, nonatomic) IBOutlet CustomButton *DollarButton;

@end
