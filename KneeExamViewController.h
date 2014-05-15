//
//  KneeExamViewController.h
//  EHR
//
//  Created by deemsys on 2/20/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockBackground.h"
#import "BlockAlertView.h"
#import "BlockUI.h"
#import "TextFieldDatePicker.h"
@interface KneeExamViewController : UIViewController<UIPickerViewDelegate,TextFieldDatePickerDelegate>
{
    IBOutlet UILabel *gaitlabel;
    IBOutlet UITextField *datefield;
    IBOutlet UITextField *patname;
    IBOutlet UILabel *pelviclabel;
    IBOutlet UILabel *check5lab;
    IBOutlet UIPickerView *anqpicker;
    IBOutlet UILabel *anqlabel;
    IBOutlet UIPickerView *gaitpicker;
    IBOutlet UIPickerView *pelvicpicker;
    IBOutlet UILabel *check4lab;
    IBOutlet UILabel *check1lab;
    IBOutlet UILabel *check2lab;
    IBOutlet UILabel *check3lab;
    IBOutlet UITextField *check1text;
    IBOutlet UITextField *check2text;
    IBOutlet UILabel *vmo;
    IBOutlet UILabel *quadvmo;
    IBOutlet UILabel *semimem;
    IBOutlet UILabel *semitend;
    IBOutlet UILabel *Gastroc;
    IBOutlet UILabel *sol;
    IBOutlet UILabel *Illio;
    IBOutlet UILabel *biceps;
    IBOutlet UISegmentedControl *segmentnew2;
    IBOutlet UISegmentedControl *segmentnew1;
    IBOutlet UISegmentedControl *segment1;
    IBOutlet UISegmentedControl *segment2;
    IBOutlet UISegmentedControl *segment3;
    IBOutlet UITextField *flexion;
    IBOutlet UISegmentedControl *segment4;
    IBOutlet UISegmentedControl *segment5;
    IBOutlet UISegmentedControl *segment8;
  
    IBOutlet UISegmentedControl *segment7;
    IBOutlet UISegmentedControl *segment6;
    IBOutlet UITextField *antleft;
    IBOutlet UITextField *antright;
    IBOutlet UITextField *extension;
    IBOutlet UITextField *postleft;
    IBOutlet UITextField *postright;
    IBOutlet UITextField *internalleft;
    IBOutlet UITextField *internalright;
    IBOutlet UITextField *lclleft
    ;
    IBOutlet UITextField *right4;
    IBOutlet UITextField *right3;
    IBOutlet UITextField *right2;
    IBOutlet UITextField *right1;
    IBOutlet UITextField *left4;
    IBOutlet UITextField *left3;
    IBOutlet UITextField *left2;
    IBOutlet UITextField *left1;
    IBOutlet UILabel *check6lab;
    IBOutlet UITextField *externalright;
    IBOutlet UITextField *externalleft;
    IBOutlet UITextField *patright;
    IBOutlet UITextField *patleft;
    IBOutlet UITextField *cmpright;
    IBOutlet UITextField *cmpleft;
    IBOutlet UITextField *corright;
    IBOutlet UITextField *corleft;
    IBOutlet UITextField *menisright;
    IBOutlet UITextField *menisleft;
    IBOutlet UITextField *lclright;
    IBOutlet UITextField *medright;
    IBOutlet UITextField *mclleft;
    IBOutlet UITextField *mclright;
    IBOutlet UITextField *medleft;
    NSMutableDictionary *recorddict;
    IBOutlet UIButton *check22;
    IBOutlet UIButton *check33;
    IBOutlet UIButton *check11;
    IBOutlet UIButton *check44;
    IBOutlet UIButton *check55;
    IBOutlet UIButton *check66;
}
@property (nonatomic, strong) NSMutableArray *gaitarray;

@property (retain, nonatomic) IBOutlet UIPickerView *gaitpicker;

@property (retain, nonatomic) IBOutlet UILabel *gaitlabel;

- (IBAction)changegait:(id)sender;

- (IBAction)next:(id)sender;

@property(nonatomic,retain)NSMutableDictionary*recorddict;

@property (retain, nonatomic) IBOutlet UILabel *check4lab;

@property (retain, nonatomic) IBOutlet UIButton *check4;
- (IBAction)segment8:(id)sender;
- (IBAction)segment7:(id)sender;
- (IBAction)segment6:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *segment7;
@property (retain, nonatomic) IBOutlet UISegmentedControl *segment6;
- (IBAction)segment5:(id)sender;
- (IBAction)segment4:(id)sender;
- (IBAction)segement1:(id)sender;
@property (retain, nonatomic) IBOutlet UILabel *semimem;
- (IBAction)checkChanged:(UIButton *)sender;
- (IBAction)pelseg:(id)sender;
- (IBAction)anqseg:(id)sender;


- (IBAction)segment2:(id)sender;
- (IBAction)segment3:(id)sender;
@property (retain, nonatomic) IBOutlet UISegmentedControl *segment4;
@property (retain, nonatomic) IBOutlet UITextField *datefield;

@end
