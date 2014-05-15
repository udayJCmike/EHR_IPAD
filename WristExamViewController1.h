//
//  WristExamViewController1.h
//  EHR
//
//  Created by deemsys on 2/25/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "BlockBackground.h"
#import "BlockAlertView.h"
#import "BlockUI.h"
#import "TextFieldDatePicker.h"


@interface WristExamViewController1 : UIViewController<UITextViewDelegate,TextFieldDatePickerDelegate>
{

    IBOutlet UISegmentedControl *seg1;
    IBOutlet UIButton *check1;

    IBOutlet UIButton *check2;

    IBOutlet UIButton *check3;

    IBOutlet UIButton *check4;

    IBOutlet UITextField *first;

    IBOutlet UITextField *sec;

    IBOutlet UITextField *other;
    IBOutlet UITextView *addcomments;
    IBOutlet UITextField *twentysix;
    IBOutlet UITextField *twentyfive;
    IBOutlet UITextField *twentyfour;
    IBOutlet UITextField *twentythree;
    IBOutlet UITextField *twentytwo;
    IBOutlet UITextField *twentyone;
    IBOutlet UITextField *twenty;
    IBOutlet UITextField *ninteen;
    IBOutlet UITextField *eighteen;
    IBOutlet UITextField *seventeen;
    IBOutlet UITextField *sixteen;
    IBOutlet UITextField *fift;
    IBOutlet UITextField *fourt;
    IBOutlet UITextField *thrt;
    IBOutlet UITextField *twe;
    IBOutlet UITextField *thr;
    IBOutlet UITextField *four;
    IBOutlet UITextField *fiv;
    IBOutlet UITextField *six;
    IBOutlet UITextField *sev;
    IBOutlet UITextField *eight;
    IBOutlet UITextField *nine;
    IBOutlet UITextField *ten;
    IBOutlet UITextField *eleven;
    NSMutableDictionary *recorddict;
}
- (IBAction)checkchange:(id)sender;
@property(nonatomic,retain)NSMutableDictionary*temp;
@property(nonatomic,retain)NSMutableDictionary*recorddict;
- (IBAction)next:(id)sender;
- (IBAction)segbut:(id)sender;

@end
