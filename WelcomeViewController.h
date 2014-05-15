//
//  WelcomeViewController.h
//  EHR
//
//  Created by DeemSysInc on 08/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WelcomeViewController : UIViewController
{
    IBOutlet UIButton*consentminor;
    int age1,typeofaccident;
    IBOutlet UIButton *autoaccident;
    IBOutlet UIButton *workaccident;
    
    
}
@property (strong, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@end
