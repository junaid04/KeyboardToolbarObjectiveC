//
//  ViewController.h
//  KeyboardToolbarObjectiveC
//
//  Created by IOS Developer on 11/04/2016.
//  Copyright © 2016 IOS Developer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ButtonDelegate.h"
#import "CustomButton.h"


@interface ViewController : UIViewController <ButtonDelegate>

{
    UIView* keyboardView;
    NSInteger modifyValue;

}

@property (nonatomic) BOOL interfaceOrientation;
@property (weak, nonatomic) IBOutlet UITextField *txtFld;
@property (nonatomic) BOOL modifierFlag;
@property (nonatomic) NSInteger kbdmodifierFlag;
@property (nonatomic) NSString *textLbl;
@property (nonatomic) UIButton *btn;
@property (nonatomic) NSInteger btnCheck;

-(void)keyboardWillHide:(NSNotification *)notification;
-(void)buttonText:(NSNotification *)notification;


@end


