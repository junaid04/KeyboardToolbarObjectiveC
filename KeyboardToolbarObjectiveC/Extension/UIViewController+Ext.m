//
//  UIViewController+Ext.m
//  KeyboardToolbarObjectiveC
//
//  Created by IOS Developer on 11/04/2016.
//  Copyright © 2016 IOS Developer. All rights reserved.
//

#import "UIViewController+Ext.h"

@implementation UIViewController (Ext)

-(UIView*) keyboardToolBar {
   
    UIViewController *toolbarNib = [[UIViewController alloc] initWithNibName:@"ToolbarViewLandscape" bundle:nil];
    UIView *toolBarView = toolbarNib.view;
    return toolBarView;

}


@end
