//
//  ViewController.h
//  KeyboardToolbarObjectiveC
//
//  Created by IOS Developer on 11/04/2016.
//  Copyright © 2016 IOS Developer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ButtonDelegate.h"

@interface ViewController : UIViewController <ButtonDelegate>

{
    UIView* keyboardView;

}

@property (nonatomic) BOOL interfaceOrientation;
@property (weak, nonatomic) IBOutlet UITextField *txtFld;
@property (nonatomic) NSInteger modifierFlag;
@property (nonatomic) NSInteger kbdmodifierFlag;
@property (nonatomic) NSString *textLbl;

-(void)keyboardWillHide:(NSNotification *)notification;


@end


