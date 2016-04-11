//
//  CustomButton.m
//  KeyboardToolbarObjectiveC
//
//  Created by IOS Developer on 11/04/2016.
//  Copyright © 2016 IOS Developer. All rights reserved.
//

#import "CustomButton.h"

@implementation CustomButton


- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        
        self.layer.cornerRadius = 5.0;
        self.layer.borderWidth = 1.5;
    }
    return self;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    self.backgroundColor = [UIColor whiteColor];
    [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];

}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    self.backgroundColor = [UIColor blackColor];
    self.alpha = 0.75;
    [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

}

@end
