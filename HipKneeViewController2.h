//
//  HipKneeViewController2.h
//  HipKneeQuestionnaire
//
//  Created by deemsys on 3/4/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockBackground.h"
#import "BlockAlertView.h"
#import "BlockUI.h"
#import "TextFieldDatePicker.h"

@interface HipKneeViewController2 : UIViewController<TextFieldDatePickerDelegate>
{
    IBOutlet UIButton *radi6;
    IBOutlet UIButton *radi5;
    IBOutlet UIButton *radi4;
    IBOutlet UIButton *radi3;
    IBOutlet UIButton *radi2;
    IBOutlet UIButton *radi1;
   
    IBOutlet UITextField *date1;

    IBOutlet UITextField *secnumber;
    IBOutlet UITextField *date2;
  NSMutableDictionary *recorddict;
}

- (IBAction)rad6:(id)sender;
- (IBAction)rad5:(id)sender;
- (IBAction)rad4:(id)sender;
- (IBAction)rad2:(id)sender;
- (IBAction)rad1:(id)sender;
- (IBAction)rad3:(id)sender;
@property(nonatomic,retain)NSMutableDictionary*recorddict;
- (IBAction)next:(id)sender;

@end
