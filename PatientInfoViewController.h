//
//  PatientInfoViewController.h
//  EHR
//
//  Created by DeemsysInc on 10/7/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockAlertView.h"
#import "BlockBackground.h"
#import "BlockUI.h"
#import "TextFieldDatePicker.h"
@interface PatientInfoViewController : UIViewController<UIPickerViewDelegate,TextFieldDatePickerDelegate>
{
    IBOutlet UITextField * name;
    IBOutlet UITextField *todaydate ;
    IBOutlet UITextField *streetaddress ;
    IBOutlet UITextField * homeph;
    IBOutlet UITextField * city;
    IBOutlet UITextField * cellph;
    IBOutlet UITextField * state;
    IBOutlet UITextField * zip;
    IBOutlet UITextField * pager;
    IBOutlet UITextField * socialsecnum;
    IBOutlet UITextField * empname;
    IBOutlet UITextField * occ;
    IBOutlet UITextField * empadd;
    IBOutlet UITextField * workph;
    IBOutlet UITextField * workcity;
    IBOutlet UITextField * workstate;
    IBOutlet UITextField * workzip;
    IBOutlet UITextField * spousename;
    IBOutlet UITextField * spouseemp;
    IBOutlet UITextField * spouseph;
    IBOutlet UITextField * relativeph;
    IBOutlet UITextField *relativename;
     IBOutlet UISwitch *switch1;
    IBOutlet UISwitch *switch2;
    IBOutlet UILabel *seg;
    IBOutlet UISegmentedControl*seggender;
    IBOutlet UILabel *marital;
    IBOutlet UISegmentedControl*segmarital;
          NSMutableDictionary *recorddict;
    int c;
    IBOutlet UILabel *resLabel;
   IBOutlet UILabel*resLabel2;
    IBOutlet UITextField *fromd;
    
      IBOutlet UIButton*setdate;
        UIDatePicker *datePicker;
    IBOutlet UILabel * sd1;
     IBOutlet UILabel * sd2;
     IBOutlet UILabel * sd3;
     IBOutlet UILabel * sd4;
     IBOutlet UILabel * sd5;
     IBOutlet UILabel * sd6;
    IBOutlet UILabel * sd7;
        
}
-(IBAction)saveandcontinue:(id)sender;

-(IBAction)setFromDate;
- (IBAction) toggleEnabledTextForSwitch1onSomeLabel: (id) sender;
-(IBAction) toggleEnabledTextForSwitch2onSomeLabel: (id) sender;
-(BOOL)validateMobile:(NSString*)mobilenumber;
-(BOOL)validateNames:(NSString*)country1;
-(BOOL)validateUsername:(NSString*)user;
-(BOOL)validateZip:(NSString*)zipnumber;
-(BOOL)validatessn:(NSString*)ssnnumber;
@property (nonatomic, retain) UISwitch *switch1;
@property (nonatomic, retain) UILabel *resLabel;
@property (nonatomic, retain) UISwitch *switch2;
@property (nonatomic, retain) UILabel *resLabel2;
@property (nonatomic, retain) UILabel *seg;
@property (nonatomic, retain) UISegmentedControl*seggender;
@property (nonatomic, retain)IBOutlet UILabel *datelabel;
@property (nonatomic,retain) IBOutlet UIDatePicker *datePicker;
@property(nonatomic,retain)NSMutableDictionary *recorddict;
@property (nonatomic, retain) UILabel *marital;
@property (nonatomic, retain) UISegmentedControl*segmarital;
- (IBAction)changefromdate:(id)sender;
-(IBAction)segselected:(id)sender;
-(IBAction)segmaritalselected:(id)sender;
-(IBAction)clear:(id)sender;

@end
