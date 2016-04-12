//
//  CustomButton.h
//  KeyboardToolbarObjectiveC
//
//  Created by IOS Developer on 11/04/2016.
//  Copyright © 2016 IOS Developer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface CustomButton : UIButton

@property (strong) id<ButtonDelegate>delegate;
@property (nonatomic) NSTimer* timer;

@end
