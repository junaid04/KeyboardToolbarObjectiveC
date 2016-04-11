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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillHide:)
                                                 name:UIKeyboardWillHideNotification
                                               object:nil];
    
    keyboardView = [self keyboardToolBar];
    keyboardView.backgroundColor = [UIColor grayColor];
    _txtFld.keyboardAppearance = UIKeyboardAppearanceDark;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self.view endEditing:true];
    interfaceOrientation = NO;
    
    
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    
    if(interfaceOrientation == YES) {
        
        [_txtFld becomeFirstResponder];
        
    }
    
    
}

-(void)keyboardWillHide:(NSNotification *)notification{
    
    [_txtFld resignFirstResponder];
    interfaceOrientation = YES;
}


-(void)viewDidLayoutSubviews{
    
    [super viewDidLayoutSubviews];
    _txtFld.inputAccessoryView = keyboardView;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
