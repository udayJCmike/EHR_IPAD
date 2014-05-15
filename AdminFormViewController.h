//
//  AdminFormViewController.h
//  Admin Form
//
//  Created by deemsys on 3/1/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockBackground.h"
#import "BlockAlertView.h"
#import "BlockUI.h"
#import "TextFieldDatePicker.h"

@interface AdminFormViewController : UIViewController<TextFieldDatePickerDelegate>

{
    
    IBOutlet UITextField *other;
    
    IBOutlet UITextField *tofax;
    IBOutlet UITextField *toaddress;
    IBOutlet UITextField *clinicrepsign;
     NSMutableDictionary *recorddict;
}
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property (retain, nonatomic) IBOutlet UIButton *check1;
@property (retain, nonatomic) IBOutlet UIButton *check2;
@property (retain, nonatomic) IBOutlet UIButton *check3;
@property (retain, nonatomic) IBOutlet UIButton *check4;
@property (retain, nonatomic) IBOutlet UIButton *check5;
@property (retain, nonatomic) IBOutlet UIButton *check6;
@property (retain, nonatomic) IBOutlet UIButton *check7;
@property (retain, nonatomic) IBOutlet UIButton *check8;
@property (retain, nonatomic) IBOutlet UIButton *check9;
@property (retain, nonatomic) IBOutlet UIButton *check10;
@property (retain, nonatomic) IBOutlet UIButton *check11;
@property (retain, nonatomic) IBOutlet UIButton *check12;
- (IBAction)checkchange:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *save;
- (IBAction)save:(id)sender;
@property (retain, nonatomic) IBOutlet UITextField *toaddress;
@property (retain, nonatomic) IBOutlet UITextField *tofax;

@end
