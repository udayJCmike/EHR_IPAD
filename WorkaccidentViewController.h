//
//  WorkaccidentViewController.h
//  EHR
//
//  Created by DeemsysInc on 10/11/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockAlertView.h"
#import "BlockBackground.h"
#import "BlockUI.h"
#import "Workaccident2ViewController.h"
#import "TextFieldDatePicker.h"
@interface WorkaccidentViewController : UIViewController<TextFieldDatePickerDelegate>
{
    IBOutlet UITextField*jobclass;
    IBOutlet UILabel*doyou;
    IBOutlet UISegmentedControl*segdoyou;
    IBOutlet UITextField*doyouother;
    IBOutlet UILabel*carryanything;
    IBOutlet UITextField*carrything;
    IBOutlet UILabel*carrythinglabel;
    IBOutlet UITextField*howinjuryocc;
    IBOutlet UITextField*sawperson;
    IBOutlet UITextField*titletext;
    IBOutlet  UITextField*period;
    IBOutlet UILabel*jobinjury;
    IBOutlet UILabel*jobinjuryyeslabel;
    IBOutlet UITextField*jobinjuryyes;
    IBOutlet UILabel*typeoflighting;
    IBOutlet UISegmentedControl*segtypeoflighting;
    IBOutlet UITextField*typeother;
    IBOutlet UILabel*liftfrom;
    IBOutlet UISegmentedControl*segliftfrom;
    IBOutlet UILabel*liftinorout;
    IBOutlet UISegmentedControl*workingatmac;
    IBOutlet UISegmentedControl * howoftensegment;
    IBOutlet UILabel*labworkingatmaching;
    IBOutlet UILabel*pickuporlift;
    IBOutlet UITextField*howmuch;
    IBOutlet UILabel*howoften;
    IBOutlet UITextField*fromwhere;
    IBOutlet UILabel*howmuchlabel;
    IBOutlet UILabel*howoftenlabel;
    IBOutlet UILabel*fromwherelabel;
    IBOutlet UISwitch *switch1;
    IBOutlet UISwitch*switch2;
    IBOutlet UISwitch*switch3;
    IBOutlet UISwitch*switch4;
    int a,b,c,d;
    int seg1,seg2;
    NSMutableDictionary *recorddict;
    
    
}
@property(nonatomic,retain)UISwitch *switch1;
@property(nonatomic,retain)UISwitch*switch2;
@property(nonatomic,retain)UISwitch*switch3;
@property(nonatomic,retain)UISwitch*switch4;
@property(nonatomic,retain)UILabel*carryanything;
@property(nonatomic,retain)UILabel*jobinjury;
@property(nonatomic,retain)UILabel*liftinorout;
@property(nonatomic,retain)UILabel*pickuporlift;
@property(nonatomic,retain)NSMutableDictionary *recorddict;
@property(nonatomic,retain)UILabel*carrythinglabel;
@property(nonatomic,retain)UITextField *carrything;
@property(nonatomic,retain)UILabel*jobinjuryyeslabel;
@property(nonatomic,retain)UITextField *jobinjuryyes;
@property(nonatomic,retain)UILabel*howmuchlabel;
@property(nonatomic,retain)UITextField *howmuch;
@property(nonatomic,retain)UILabel*howoftenlabel;;
@property(nonatomic,retain)UILabel *howoften;
@property(nonatomic,retain)UILabel*fromwherelabel;
@property(nonatomic,retain)UITextField *fromwhere;
@property(nonatomic,retain)UISegmentedControl*workingatmac;
@property(nonatomic,retain)UISegmentedControl*segliftfrom;
@property(nonatomic,retain)UISegmentedControl*segdoyou;
@property(nonatomic,retain)UISegmentedControl*segtypeoflifting;
@property(nonatomic,retain)UISegmentedControl*howoftensegment;
- (IBAction) toggleEnabledTextForSwitch1onSomeLabel: (id) sender;
- (IBAction) toggleEnabledTextForSwitch2onSomeLabel: (id) sender;
- (IBAction) toggleEnabledTextForSwitch3onSomeLabel: (id) sender;
- (IBAction) toggleEnabledTextForSwitch4onSomeLabel: (id) sender;
-(IBAction)clear:(id)sender;
-(IBAction)saveandcontinue:(id)sender;
-(IBAction)segselected1:(id)sender;
-(IBAction)segselected2:(id)sender;
-(IBAction)segselected3:(id)sender;
-(IBAction)segselected4:(id)sender;
-(IBAction)segselected5:(id)sender;


@end
