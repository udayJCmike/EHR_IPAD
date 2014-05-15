//
//  RegisterViewController.h
//  EHR
//
//  Created by DeemSysInc on 08/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockAlertView.h"
#import "BlockBackground.h"
#import "BlockUI.h"

@interface RegisterViewController : UIViewController
{
    IBOutlet UISegmentedControl * rolesegment;
    IBOutlet UILabel * doctid;
    IBOutlet UITextField * doctoridtext;
}
-(IBAction)registerkey:(id)sender;
-(IBAction)rolechange:(id)sender;
@end
