//
//  ResponseAttorneyViewController.h
//  EHR
//
//  Created by deemsys on 2/26/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockBackground.h"
#import "BlockAlertView.h"
#import "BlockUI.h"
#import "TextFieldDatePicker.h"


@interface ResponseAttorneyViewController : UIViewController<UITextViewDelegate,TextFieldDatePickerDelegate>
{
    IBOutlet UITextField *patname;
  
    IBOutlet UITextView *addrs;
    IBOutlet UITextField *patattory;
    IBOutlet UITextField *reg;
    IBOutlet UITextField *dofacc;
    IBOutlet UITextField *dearname;
    IBOutlet UITextField *sincname;
    IBOutlet UITextField *physicianname;
    NSMutableDictionary *recorddict;
}
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property (retain, nonatomic) IBOutlet UILabel *mail;
- (IBAction)submit:(id)sender;

@end
