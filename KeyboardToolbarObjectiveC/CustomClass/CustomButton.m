//
//  CustomButton.m
//  KeyboardToolbarObjectiveC
//
//  Created by IOS Developer on 11/04/2016.
//  Copyright © 2016 IOS Developer. All rights reserved.
//

#import "CustomButton.h"
#import "ViewController.h"

@implementation CustomButton

@synthesize timer;
@synthesize btnTitle;

- (instancetype)initWithCoder:(NSCoder *)coder {
    
    self = [super initWithCoder:coder];
    
    if (self) {
        
        self.layer.cornerRadius = 5.0;
        self.layer.borderWidth = 1.5;
        
       // self.delegate = [ViewController alloc];

    }
    return self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
        
        self.backgroundColor = [UIColor whiteColor];
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        timer = [NSTimer scheduledTimerWithTimeInterval:0.3 target:self selector:@selector(keyTap) userInfo:nil repeats:YES];

}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
  
    if (self.tag == 0) {
        self.backgroundColor = [UIColor blackColor];
        self.alpha = 0.75;
        [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //    MYGlobalVariable = self.titleLabel.text;
        btnTitle = self.titleLabel.text;
        
        [[NSUserDefaults standardUserDefaults]setObject:btnTitle forKey:@"buttonTitle"];
        [[NSUserDefaults standardUserDefaults]synchronize];
        
        NSLog(@"%@",btnTitle);
        
        [[NSNotificationCenter defaultCenter]postNotificationName: @"ButtonPress" object:nil];
    }
    
    
    if (timer != nil) {
        
        [timer invalidate];
    }
       [self keyTap];
    
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    if (timer != nil) {
        
        [timer invalidate];
    }
}

#pragma mark - button delegate function

-(void)keyTap {
    
    [self.delegate keyPressed:self];
}



@end
