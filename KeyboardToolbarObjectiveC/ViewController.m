//
//  ViewController.m
//  KeyboardToolbarObjectiveC
//
//  Created by IOS Developer on 11/04/2016.
//  Copyright © 2016 IOS Developer. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+Ext.h"


@interface ViewController ()
@end

@implementation ViewController

@synthesize interfaceOrientation;
@synthesize txtFld;
@synthesize modifierFlag;
@synthesize kbdmodifierFlag;
@synthesize textLbl;


- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter]
     addObserver:self
     selector:@selector(keyboardWillHide:)
     name:UIKeyboardWillHideNotification
     object:nil];
    
    keyboardView = [self keyboardToolBar];
    keyboardView.backgroundColor = [UIColor grayColor];
    txtFld.keyboardAppearance = UIKeyboardAppearanceDark;
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(buttonText:) name:@"ButtonPress" object:nil];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self.view endEditing:true];
    interfaceOrientation = NO;
    
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    
    if(interfaceOrientation == YES) {
        
        [txtFld becomeFirstResponder];
        
    }
}


-(void)viewDidLayoutSubviews{
    
    [super viewDidLayoutSubviews];
    txtFld.inputAccessoryView = keyboardView;
}

#pragma mark - Notification Selector

-(void)keyboardWillHide:(NSNotification *)notification{
    
    [txtFld resignFirstResponder];
    interfaceOrientation = YES;
}

- (void)buttonText:(NSNotification *)notification {
    
    NSString *textVal = [[NSUserDefaults standardUserDefaults]valueForKey:@"buttonTitle"];
    
    [txtFld insertText:textVal];
    NSLog(@"notify");

}

#pragma mark - Button Delegate

- (void)keyPressed:(UIButton *)sender {
    
    
    NSString *textLabel = sender.titleLabel.text;
    
    if (sender.tag == 0) {// Special string , the text of the button should go to textfiel
        
        //[self.txtFld insertText:textLabel];
        self.txtFld.text = textLabel;
        NSLog(@"%@", textLabel);
        modifyValue = NO;
        
    }
    
    else { // Modifiers, when key down, pressed to yes.
        //when key up , press to no

        if (modifierFlag == false) {
            modifierFlag = true;
            NSLog(@"0");
            
        }
        else {
            modifierFlag = false;
            NSLog(@"3");
        
        }
        
        
        
        
//        if (sender.tag == 1) {
//            
//            if (self.modifierFlag == YES) {
//                
//                modifyValue = 1;
//            
//            }
//            else {
//                
//                modifyValue = 5;
//            }
//
//        }
//        
//        if (sender.tag == 2) {
//            
//            if (self.modifierFlag == 0) {
//                
//                modifyValue = 2;
//                
//            }
//            else {
//                
//                modifyValue = 5;
//            }
//            
//        }
//        
//        if (sender.tag == 3) {
//            
//            if (self.modifierFlag == 0) {
//                
//                modifyValue = 3;
//                
//            }
//            else {
//                
//                modifyValue = 5;
//            }
//            
//        }
//        
//        if (sender.tag == 4) {
//            
//            if (self.modifierFlag == 0) {
//                
//                modifyValue = 4;
//                
//            }
//            else {
//                
//                modifyValue= 5;
//            }
//            
//        }
        
        

    }
    
    NSLog(@"%ld",(long)self.modifierFlag);
}

@end
