//
//  ViewController.m
//  KeyboardToolbarObjectiveC
//
//  Created by IOS Developer on 11/04/2016.
//  Copyright © 2016 IOS Developer. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+Ext.h"
#import "KeyBoardView.h"


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
    // Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillHide:)
                                                 name:UIKeyboardWillHideNotification
                                               object:nil];
    
    keyboardView = [self keyboardToolBar];
    keyboardView.backgroundColor = [UIColor grayColor];
    txtFld.keyboardAppearance = UIKeyboardAppearanceDark;
    
    
   }

- (void)SendTextToController:(UIButton *)sender :(NSString *)text {
    
    modifierFlag = 0;
    NSString *textLabel = sender.titleLabel.text;
    if (sender.tag == 0) // Special string , the text of the button should go to textfield
    {
        
        [self.txtFld insertText:textLabel];
        self.txtFld.text = @"Junaid";
        NSLog(@"%@", textLabel);
        
    }
    else // Modifiers, when key down, pressed to yes.
        //when key up , press to no
    {
        if (sender.tag == 1) {
            modifierFlag = 1;
        }
        else if (sender.tag == 2)
        {
            modifierFlag = 2;
        }
        else if (sender.tag == 3)
        {
            modifierFlag = 3;
        }
        else if (sender.tag == 4)
        {
            modifierFlag = 4;
        }
        
    }
    NSLog(@"%ld",(long)modifierFlag);


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

-(void)keyboardWillHide:(NSNotification *)notification{
    
    [txtFld resignFirstResponder];
    interfaceOrientation = YES;
}


-(void)viewDidLayoutSubviews{
    
    [super viewDidLayoutSubviews];
    txtFld.inputAccessoryView = keyboardView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
