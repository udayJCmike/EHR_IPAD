//
//  Patient2ViewController.h
//  EHR
//
//  Created by DeemsysInc on 10/7/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "BlockBackground.h"
#import "BlockAlertView.h"
#import "BlockUI.h"
#import "Patient3ViewController.h"
#import "TextFieldDatePicker.h"

@interface Patient2ViewController : UIViewController<TextFieldDatePickerDelegate>
{
    IBOutlet UITextField*sym1;
     IBOutlet UITextField*sym2;
     IBOutlet UITextField*sym3;
     IBOutlet UITextField*medwhere;
     IBOutlet UITextField*medwhen;
     IBOutlet UITextField*nameofattorney;
     IBOutlet UITextField*attorneyph;
     IBOutlet UITextField*nop;
     IBOutlet UITextField*comname;
     IBOutlet UITextField*comph;
     IBOutlet UITextField*autoname;
     IBOutlet UITextField*autoph;
     IBOutlet UITextField*autopolicy;
     IBOutlet UITextField*helname;
     IBOutlet UITextField*helph;
      IBOutlet UILabel*syml1;
    IBOutlet UILabel*syml2;
    IBOutlet UILabel*syml3;
    IBOutlet UISwitch *switch1;
    IBOutlet UISwitch *switch2;
    IBOutlet UISwitch *switch3;
    IBOutlet UISwitch *switch4;
    IBOutlet UILabel*resLabel1;
    IBOutlet UILabel*resLabel2;
    IBOutlet UILabel*resLabel3;
    IBOutlet UILabel*resLabel4;
    NSString*type;
    IBOutlet UILabel*fromd;
    UIDatePicker*datePicker;
    IBOutlet UITextField*setdate;
    IBOutlet UITextField *optwhen;
    int c;
    int a,b,d ;
     NSMutableDictionary *temp;
    IBOutlet UISlider *slider1;
    IBOutlet UISlider*slider2;
    IBOutlet UISlider*slider3;
    IBOutlet UILabel*segtype;
    IBOutlet UISegmentedControl*seg;
    
NSMutableDictionary *recorddict;
}
@property(nonatomic,retain)NSMutableDictionary*recorddict;
- (IBAction) toggleEnabledTextForSwitch1onSomeLabel: (id) sender;
- (IBAction) toggleEnabledTextForSwitch2onSomeLabel: (id) sender;
- (IBAction) toggleEnabledTextForSwitch3onSomeLabel: (id) sender;
- (IBAction) toggleEnabledTextForSwitch4onSomeLabel: (id) sender;
@property (nonatomic, retain) UISwitch *switch1;
@property (nonatomic, retain) UISwitch *switch2;
@property (nonatomic, retain) UISwitch *switch3;
@property (nonatomic, retain) UISwitch *switch4;
@property (nonatomic, retain) UILabel *resLabel1;
@property (nonatomic, retain) UILabel *resLabel2;
@property (nonatomic, retain) UILabel *resLabel3;
@property (nonatomic, retain) UILabel *resLabel4;
@property(nonatomic,retain)UILabel*syml1;
@property(nonatomic,retain)UILabel*syml2;
@property(nonatomic,retain)UILabel*syml3;
@property(nonatomic,retain)UISlider *slider1;
@property(nonatomic,retain)UISlider *slider2;
@property(nonatomic,retain)UISlider *slider3;
@property(nonatomic,retain)UISegmentedControl*seg;
@property(nonatomic,retain)UILabel*segtype;
-(IBAction)savecontinuebtn:(id)sender;
-(IBAction)setFromDate;
@property (nonatomic,retain) IBOutlet UIDatePicker *datePicker;
- (IBAction)changefromdate:(id)sender;
-(IBAction)segselected:(id)sender;
-(IBAction)clear:(id)sender;
-(IBAction)back:(id)sender;
@end
