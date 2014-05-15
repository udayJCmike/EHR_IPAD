//
//  WristExamViewController.h
//  EHR
//
//  Created by deemsys on 2/24/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockBackground.h"
#import "BlockAlertView.h"
#import "BlockUI.h"
#import "TextFieldDatePicker.h"

@interface WristExamViewController : UIViewController<UITextViewDelegate,TextFieldDatePickerDelegate>
{

    IBOutlet UITextField *patname;

    IBOutlet UISegmentedControl *seg11;
    IBOutlet UISegmentedControl *seg10;
    IBOutlet UISegmentedControl *seg9;
    IBOutlet UISegmentedControl *seg8;
    IBOutlet UISegmentedControl *seg7;
    IBOutlet UISegmentedControl *seg6;
    IBOutlet UISegmentedControl *seg5;
    IBOutlet UISegmentedControl *seg4;
    IBOutlet UISegmentedControl *seg3;
    IBOutlet UISegmentedControl *seg2;
    IBOutlet UISegmentedControl *seg1;
    IBOutlet UITextField *swell;
    IBOutlet UITextField *muscle;
    IBOutlet UITextField *datefield;
    IBOutlet UITextField *fift;

    IBOutlet UITextField *twentytwo;
    IBOutlet UITextField *twentyone;
    IBOutlet UITextField *twenty;
    IBOutlet UITextField *ninteen;
    IBOutlet UITextField *eighteen;
    IBOutlet UITextField *sixteen;
    IBOutlet UITextField *ele;
    IBOutlet UITextField *ten;
    IBOutlet UITextField *nine;
    IBOutlet UIButton *check1;
    IBOutlet UIButton *check3;
    IBOutlet UITextField *seventeen;

    IBOutlet UITextField *fourt;
    IBOutlet UITextField *thrt;
    IBOutlet UITextField *twel;
    IBOutlet UIButton *check2;

    IBOutlet UITextField *first;
    IBOutlet UITextView *txtv1;

    IBOutlet UITextField *sec;
    IBOutlet UITextField *thr;

    IBOutlet UITextField *four;

    IBOutlet UITextField *fiv;

    IBOutlet UITextField *six;

    IBOutlet UITextField *sev;
     NSMutableDictionary *recorddict;
    IBOutlet UITextField *eigh;
}
@property(nonatomic,retain)NSMutableDictionary*recorddict;

- (IBAction)next:(id)sender;
- (IBAction)s11:(id)sender;
- (IBAction)s10:(id)sender;
- (IBAction)s9:(id)sender;
- (IBAction)s8:(id)sender;
- (IBAction)s7:(id)sender;
- (IBAction)s6:(id)sender;
- (IBAction)s5:(id)sender;
- (IBAction)s4:(id)sender;
- (IBAction)s2:(id)sender;
- (IBAction)s1:(id)sender;
- (IBAction)s3:(id)sender;
- (IBAction)checkchange:(id)sender;

@end
