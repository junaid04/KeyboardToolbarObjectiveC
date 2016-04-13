//
//  ButtonDelegate.h
//  KeyboardToolbarObjectiveC
//
//  Created by IOS Developer on 13/04/2016.
//  Copyright © 2016 IOS Developer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>



@protocol ButtonDelegate <NSObject>

@required
-(void)keyPressed:(UIButton *)sender;

@end
