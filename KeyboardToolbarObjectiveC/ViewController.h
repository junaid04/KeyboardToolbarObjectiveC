//
//  ViewController.h
//  KeyboardToolbarObjectiveC
//
//  Created by IOS Developer on 11/04/2016.
//  Copyright © 2016 IOS Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    UIView* keyboardView;

}
@property (nonatomic) BOOL interfaceOrientation;
@property (weak, nonatomic) IBOutlet UITextField *txtFld;
-(void)keyboardWillHide:(NSNotification *)notification;
@end

