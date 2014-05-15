//
//  KneeExamViewController1.h
//  EHR
//
//  Created by deemsys on 2/21/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockBackground.h"
#import "BlockAlertView.h"
#import "BlockUI.h"
#import "TextFieldDatePicker.h"

@interface KneeExamViewController1 : UIViewController<UIPickerViewDelegate,UITextViewDelegate,TextFieldDatePickerDelegate>
{
    IBOutlet UITextField *sensleft;
    IBOutlet UITextField *sensright;
    IBOutlet UITextField *motorleft;
    IBOutlet UITextField *motorright;
    IBOutlet UITextField *sensel2left;
    IBOutlet UITextField *sensl2right;
    IBOutlet UITextField *motorl2left;
    IBOutlet UITextField *motorl2right;
    IBOutlet UITextField *sensl3left;
    IBOutlet UITextField *sensl3right;
    IBOutlet UITextField *motorl3left;
    IBOutlet UITextField *motorl3right;
    IBOutlet UITextField *sensl4left;
    IBOutlet UITextField *sensl4right;
    IBOutlet UITextField *motorl4left;
    IBOutlet UITextField *motorl4right;
    IBOutlet UITextField *refl4left;
    IBOutlet UITextField *refl4right;
    IBOutlet UITextField *refl5left;
    IBOutlet UITextField *refl5right;
    IBOutlet UITextField *refsileft;
    IBOutlet UITextField *refsiright;
    IBOutlet UITextField *motorl5left;
    IBOutlet UITextField *motorsileft;
    IBOutlet UITextField *motorsiright;
    IBOutlet UITextField *motorl5right;
    IBOutlet UITextField *sensel5left;
    IBOutlet UITextField *sensel5right;
    IBOutlet UITextField *sensileft;
    IBOutlet UITextField *sensiright;
    NSMutableDictionary *temp;
 NSMutableDictionary *recorddict;
    IBOutlet UILabel *stairslab;
    IBOutlet UILabel *standlab;
    IBOutlet UILabel *walklab;
    IBOutlet UILabel *neuro;
    
    IBOutlet UISegmentedControl *segpat;

    IBOutlet UITextView *addcomments;

}

- (IBAction)pickselect:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *check4;
@property (retain, nonatomic) IBOutlet UIButton *check3;
@property (retain, nonatomic) IBOutlet UIButton *check1;
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property (nonatomic, strong) NSMutableArray *patcarearray;

- (IBAction)check1:(UIButton*)sender;
@property (retain, nonatomic) IBOutlet UIButton *check2;
- (IBAction)nextact:(id)sender;

@end
