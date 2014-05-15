//
//  ThoracicExamViewController1.h
//  EHR
//
//  Created by Admin on 22/02/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockBackground.h"
#import "BlockAlertView.h"
#import "BlockUI.h"
#import "TextFieldDatePicker.h"

@interface ThoracicExamViewController1 : UIViewController<UIPickerViewDelegate,UITextViewDelegate,TextFieldDatePickerDelegate>{

    IBOutlet UITextField *first;
    
    IBOutlet UITextField *second;
    
    IBOutlet UITextField *three;
    
    IBOutlet UITextField *four;
    
    IBOutlet UITextField *five;
    
    
    IBOutlet UITextField *six;
    IBOutlet UITextView *textv1;
    
    IBOutlet UITextField *othertext0;
    IBOutlet UITextView *textv2;
   
    IBOutlet UISegmentedControl *segmentnew2;
    IBOutlet UILabel *pickonelab;
    IBOutlet UITextField *eight;
    IBOutlet UITextField *seven;
    IBOutlet UITextField *othertext;
    NSMutableDictionary *temp;
    NSMutableDictionary *recorddict;
    IBOutlet UITextField *signature;
}
- (IBAction)pickselect:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *check1;
@property (retain, nonatomic) IBOutlet UIButton *check2;
@property (retain, nonatomic) IBOutlet UIButton *check3;
@property (retain, nonatomic) IBOutlet UIButton *check4;
@property (retain, nonatomic) IBOutlet UIButton *check5;

@property (retain, nonatomic) IBOutlet UIPickerView *picker2;
@property (retain, nonatomic) IBOutlet UIPickerView *picker1;
@property (retain, nonatomic) IBOutlet UIButton *cancel;
- (IBAction)save:(id)sender;
@property(nonatomic,retain)NSMutableDictionary*temp;
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property (retain, nonatomic) IBOutlet UIButton *checkbut15;
@property (retain, nonatomic) IBOutlet UIButton *checkbut14;
@property (retain, nonatomic) IBOutlet UIButton *checkbut12;
@property (retain, nonatomic) IBOutlet UIButton *checkbut11;
@property (retain, nonatomic) IBOutlet UIButton *checkbut8;
@property (retain, nonatomic) IBOutlet UIButton *checkbut7;
@property (retain, nonatomic) IBOutlet UIButton *checkbut6;
@property (retain, nonatomic) IBOutlet UIButton *checkbut5;
@property (retain, nonatomic) IBOutlet UIButton *checkbut4;
@property (retain, nonatomic) IBOutlet UIButton *checkbut3;
@property (retain, nonatomic) IBOutlet UIButton *checkbut2;
@property (nonatomic, strong) NSMutableArray *patcarearray;
@property (nonatomic, strong) NSMutableArray *poarray;
@property (retain, nonatomic) IBOutlet UIButton *checkbut1;
- (IBAction)checked:(UIButton*)sender;
- (IBAction)pick1but:(id)sender;
- (IBAction)pick2but:(id)sender;

@property (retain, nonatomic) IBOutlet UIButton *checkbut9;
@property (retain, nonatomic) IBOutlet UIButton *checkbut10;
@property (retain, nonatomic) IBOutlet UIButton *checkbut13;
@end







