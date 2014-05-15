//
//  NoticeOfAssignmentViewController.h
//  MedPay
//
//  Created by deemsys on 3/1/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "BlockBackground.h"
#import "BlockAlertView.h"
#import "BlockUI.h"
#import "TextFieldDatePicker.h"
@interface NoticeOfAssignmentViewController : UIViewController<UITextViewDelegate,TextFieldDatePickerDelegate>
{
    IBOutlet UITextField *insname;
    IBOutlet UITextField *patname;
    IBOutlet UITextView *addrs;
    IBOutlet UITextView *addrs1;
    IBOutlet UITextField *patattory;
    IBOutlet UITextField *reg;
    IBOutlet UITextField *dofacc;
    IBOutlet UITextField *todaydate;
    IBOutlet UITextField *dearname;
    IBOutlet UITextField *sincname;
    IBOutlet UITextField *writingby;
    NSMutableDictionary *recorddict;
}
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property (retain, nonatomic) IBOutlet UILabel *mail;
- (IBAction)submit:(id)sender;

@end
