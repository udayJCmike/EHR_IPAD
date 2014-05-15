//
//  AutoAccidentViewController3.h
//  EHR
//
//  Created by DeemSysInc on 08/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
@interface AutoAccidentViewController3 : UIViewController<TextFieldDatePickerDelegate>
{
    NSMutableDictionary * recorddict;
    IBOutlet UISwitch * anyonecitedswitch;
    IBOutlet UILabel * anyoneciteswitchlabel;
    IBOutlet UISegmentedControl * anyonecitedsegment;
    IBOutlet UILabel * anyonecitedsegmentlabel;
    IBOutlet UISegmentedControl * afteraccidenthadsegment;
    IBOutlet UILabel * afteraccidentsegmentlabel;
    IBOutlet UISegmentedControl * symptomssegment;
    IBOutlet UITextField * symptomshours;
    IBOutlet UITextField * symptomsdays;
    IBOutlet UISegmentedControl * afteraccidentwentsegment;
    IBOutlet UITextField * hospitalname;
    IBOutlet UITextField * hospitalcity;
    IBOutlet UITextField * hospitalstay;
    IBOutlet UISegmentedControl * hospitalgoingsegment;
    IBOutlet UITextField * hospitalgoingother;
    IBOutlet UILabel * hospitalgoingsegmentlabel;
    IBOutlet UITextField * treatmentgiven;
    IBOutlet UITextField * waswrong;
    IBOutlet UILabel * wholabel;
    IBOutlet UILabel * pleasecomplelabel;
    IBOutlet UILabel * hospitallabel;
    IBOutlet UILabel * citylabel;
     IBOutlet UILabel * staylabel;
     IBOutlet UILabel * hospitalgoinglabel;
     IBOutlet UILabel * hospitaltreatmentlabel;
     IBOutlet UILabel * waswronglabel;
     IBOutlet UILabel * symptomsappearedsegmentlabel;
     IBOutlet UILabel * afteraccidentwentsegmentlabel;
    NSMutableDictionary * temp;
    
    int a,b,c,d ;
    
}
-(IBAction)submit:(id)sender;
-(IBAction)clearall:(id)sender;
-(IBAction)anyonecitedswichchange:(id)sender;
-(IBAction)whocitedsegmentchange:(id)sender;
-(IBAction)afteraccidenthadsegmentchange:(id)sender;
-(IBAction)symptomsappearedsegmentchange:(id)sender;
-(IBAction)afteraccidentwentsegmentchange:(id)sender;
-(IBAction)hospitalgoingsegmentchange:(id)sender;
-(IBAction)back:(id)sender;

@property(nonatomic,retain)NSMutableDictionary * recorddict;
@property(nonatomic,retain) UISwitch * anyonecitedswitch;
@property(nonatomic,retain) UILabel * anyoneciteswitchlabel;
@property(nonatomic,retain) UISegmentedControl * anyonecitedsegment;
@property(nonatomic,retain) UILabel * anyonecitedsegmentlabel;
@property(nonatomic,retain) UISegmentedControl * afteraccidenthadsegment;
@property(nonatomic,retain) UISegmentedControl * symptomssegment;
@property(nonatomic,retain) UITextField * symptomshours;
@property(nonatomic,retain) UITextField * symptomsdays;
@property(nonatomic,retain) UISegmentedControl * afteraccidentwentsegment;
@property(nonatomic,retain) UITextField * hospitalname;
@property(nonatomic,retain) UITextField * hospitalcity;
@property(nonatomic,retain) UITextField * hospitalstay;
@property(nonatomic,retain) UISegmentedControl * hospitalgoingsegment;
@property(nonatomic,retain) UITextField * hospitalgoingother;
@property(nonatomic,retain) UITextField * treatmentgiven;
@property(nonatomic,retain) UITextField * waswrong;
@property(nonatomic,retain) UILabel * wholabel;
@property(nonatomic,retain) UILabel * pleasecomplelabel;
@property(nonatomic,retain) UILabel * hospitallabel;
@property(nonatomic,retain) UILabel * citylabel;
@property(nonatomic,retain) UILabel * staylabel;
@property(nonatomic,retain) UILabel * hospitalgoinglabel;
@property(nonatomic,retain) UILabel * hospitaltreatmentlabel;
@property(nonatomic,retain) UILabel * waswronglabel;
@property(nonatomic,retain) UILabel * afteraccidentsegmentlabel;
@property(nonatomic,retain) UILabel * symptomsappearedsegmentlabel;
@property(nonatomic,retain) UILabel * afteraccidentwentsegmentlabel;
@property(nonatomic,retain) UILabel * hospitalgoingsegmentlabel;
@end
