//
//  AutoAccidentViewController1.h
//  EHR
//
//  Created by DeemSysInc on 08/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"

@interface AutoAccidentViewController1 : UIViewController<TextFieldDatePickerDelegate>
{
    IBOutlet UITextField * claimno;
    IBOutlet UITextField * adjustername;
    IBOutlet UITextField * anyoneincar;
    IBOutlet UITextField * mymake;
    IBOutlet UITextField * mymodel;
    IBOutlet UITextField * myyear;
    IBOutlet UITextField * othermake;
    IBOutlet UITextField * othermodel;
    IBOutlet UITextField * otheryear;
    IBOutlet UITextField * carstopped;
    IBOutlet UITextField * footonbrake;
    IBOutlet UITextField * timeofimpact;
    IBOutlet UITextField * wascar;
    IBOutlet UITextField * speed;
    IBOutlet UISwitch * anyoneincarswitch;
    IBOutlet UISwitch * carstoppedswitch;
    IBOutlet UISwitch * footonbrakeswitch;
    IBOutlet UISwitch * vehiclemovingswitch;
    IBOutlet UILabel * anyoneincarlabel;
    IBOutlet UILabel * carstoppedlabel;
    IBOutlet UILabel * footonbrakelabel;
    IBOutlet UILabel * vehiclemovinglabel;
    IBOutlet UISegmentedControl * estimatesegment;
    IBOutlet UILabel * estimatelabel;
    NSMutableDictionary *recorddict;
    int c;
    UISegmentedControl * timeofdaysegment1;
    UISegmentedControl * wereyouthesegment;
    UISegmentedControl * vehiclehitsegment;
    UISegmentedControl * wasscarsegment;
    UISegmentedControl * roadconditionsegment;
    UISegmentedControl * headrestarintsegment;
    UISegmentedControl * seatbeforesegment;
    UISegmentedControl * seataftersegment;
    UISegmentedControl * lapseatbeltsegment;
    UILabel * timeofdaylabel1;
    UILabel * wereyouthelabel;
    UILabel * vehiclehitlabel;
    UILabel * wasscarlabel;
    UILabel * roadconditionlabel;
    UILabel * headrestraintlabel;
    UILabel * seatbeforelabel;
    UILabel * seatafterlabel;
    UILabel * lapseatbeltlabel;
    
}





-(IBAction)savecontinue:(id)sender;
-(IBAction)clearall:(id)sender;
- (IBAction) toggleEnabledTextForSwitch1onSomeLabel: (id) sender;
-(IBAction) toggleEnabledTextForSwitch2onSomeLabel: (id) sender;
- (IBAction) toggleEnabledTextForSwitch3onSomeLabel: (id) sender;
-(IBAction) toggleEnabledTextForSwitch4onSomeLabel: (id) sender;
-(IBAction) estimatechange:(id)sender;
-(IBAction) wereoyuthechange:(id)sender;
-(IBAction) vehiclehitchange:(id)sender;
-(IBAction) wasscarchange:(id)sender;
-(IBAction) roadconditionchange:(id)sender;
-(IBAction) headrestraintchange:(id)sender;
-(IBAction) seatbeforechange:(id)sender;
-(IBAction) seatafterchange:(id)sender;
-(IBAction) lapseatbeltchange:(id)sender;
-(IBAction)timeofdaysegmentchange:(id)sender;
@property (nonatomic, retain) UISwitch * anyoneincarswitch;
@property (nonatomic, retain) UISwitch * carstoppedswitch;
@property (nonatomic, retain) UISwitch * footonbrakeswitch;
@property (nonatomic, retain) UISwitch * vehiclemovingswitch;
@property (nonatomic, retain) UILabel * anyoneincarlabel;
@property (nonatomic, retain) UILabel * carstoppedlabel;
@property (nonatomic, retain) UILabel * footonbrakelabel;
@property (nonatomic, retain) UILabel * vehiclemovinglabel;
@property (nonatomic,retain)  NSMutableDictionary *recorddict;
@property (nonatomic, retain) UISegmentedControl * estimatesegment;
@property (nonatomic, retain) IBOutlet UISegmentedControl * wereyouthesegment;
@property (nonatomic, retain) IBOutlet UISegmentedControl * vehiclehitsegment;
@property (nonatomic, retain) IBOutlet UISegmentedControl * wasscarsegment;
@property (nonatomic, retain) IBOutlet UISegmentedControl * roadconditionsegment;
@property (nonatomic, retain) IBOutlet UISegmentedControl * headrestraintsegment;
@property (nonatomic, retain) IBOutlet UISegmentedControl * seatbeforesegment;
@property (nonatomic, retain) IBOutlet UISegmentedControl * seataftersegment;
@property (nonatomic, retain) IBOutlet UISegmentedControl * lapseatbeltsegment;
@property (nonatomic, retain) IBOutlet UISegmentedControl * timeofdaysegment1;
@property (nonatomic,retain) IBOutlet UILabel * timeofdaylabel1;
@property (nonatomic, retain) UILabel *  estimatelabel;
@property (nonatomic, retain) IBOutlet UILabel * wereyouthelabel;
@property (nonatomic, retain) IBOutlet UILabel * vehiclehitlabel;
@property (nonatomic, retain) IBOutlet UILabel * wasscarlabel;
@property (nonatomic, retain) IBOutlet UILabel * roadconditionlabel;
@property (nonatomic, retain) IBOutlet UILabel * headrestraintlabel;
@property (nonatomic, retain) IBOutlet UILabel * seatbeforelabel;
@property (nonatomic, retain) IBOutlet UILabel * seatafterlabel;
@property (nonatomic, retain) IBOutlet UILabel * lapseatbeltlabel;
@end
