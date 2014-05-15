//
//  PerryFaxCoverViewController.h
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

@interface PerryFaxCoverViewController : UIViewController<TextFieldDatePickerDelegate>
{
    IBOutlet UITextField *fax;
    IBOutlet UITextField *nubofpag;
    IBOutlet UITextField *to;
    IBOutlet UITextField *date;
    IBOutlet UITextField *from;
    IBOutlet UIButton *check1;
    IBOutlet UIButton *check2;
    IBOutlet UIButton *check3;
    IBOutlet UIButton *check4;
    IBOutlet UITextField *re;
  
    IBOutlet UITextView *msg;
    IBOutlet UITextField *doi;
 NSMutableDictionary *recorddict;
    IBOutlet UITextField *claim;
}
- (IBAction)cancel:(id)sender;
- (IBAction)submit:(id)sender;
@property (retain, nonatomic) IBOutlet UILabel *todaydate;
@property(nonatomic,retain)NSMutableDictionary*recorddict;
- (IBAction)checkchange:(id)sender;
@end
