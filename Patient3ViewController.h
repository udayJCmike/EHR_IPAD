//
//  Patient3ViewController.h
//  EHR
//
//  Created by DeemsysInc on 10/8/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BlockBackground.h"
#import "BlockAlertView.h"
#import "BlockUI.h"
//#import "/usr/include/sqlite3.h"
#import "TextFieldDatePicker.h"
@interface Patient3ViewController : UIViewController<TextFieldDatePickerDelegate>
{
   // sqlite3*ehrdb6;
    NSString*databasePath;
    NSMutableDictionary *recorddict;
    IBOutlet UITextField*otherdis;
    IBOutlet UITextField*surg;
    IBOutlet UITextField*medhad;
    IBOutlet UITextField*hazlist;
    IBOutlet UITextField*otheropt;
    IBOutlet UITextField*patsign;
    IBOutlet UILabel*reslabel1;
    IBOutlet UILabel*reslabel2;
    IBOutlet UISwitch*switch1;
    IBOutlet UISwitch*switch2;
    IBOutlet UIButton*button1;
    IBOutlet UIButton*button2;
    IBOutlet UIButton*button3;
     IBOutlet UIButton*button4;
    IBOutlet UIButton*button5;
    IBOutlet UIButton*button6;
    IBOutlet UIButton*button7;
    IBOutlet UIButton*button8;
    IBOutlet UIButton*button9;
    IBOutlet UIButton*button10;
    IBOutlet UIButton*button11;
    IBOutlet UIButton*button12;
    IBOutlet UIButton*button13;
    IBOutlet UIButton*button14;
    IBOutlet UIButton*button15;
    IBOutlet UIButton*button16;
    IBOutlet UIButton*button17;
    IBOutlet UIButton*button18;
    IBOutlet UIButton*button19;
    IBOutlet UIButton*button20;
    IBOutlet UIButton*button21;
    IBOutlet UIButton*button22;
    IBOutlet UIButton*button23;
    IBOutlet UIButton*button24;
    IBOutlet UIButton*button25;
    IBOutlet UIButton*button26;
    IBOutlet UIButton*button27;
    IBOutlet UIButton*button28;
    IBOutlet UIButton*button29;
    IBOutlet UIButton*button30;
    IBOutlet UIButton*button31;
    IBOutlet UIButton*button32;
    IBOutlet UIButton*button33;
    IBOutlet UIButton*button34;
    IBOutlet UIButton*button35;
    IBOutlet UIButton*buttonx1;
        IBOutlet UIButton*buttonx2;
        IBOutlet UIButton*buttonx3;
        IBOutlet UIButton*buttonx4;
        IBOutlet UIButton*buttonx5;
  
     IBOutlet UITextField* Anemia;
      IBOutlet UITextField*Muscular;  IBOutlet UITextField* Rheumatic;
    IBOutlet UITextField* Allergies;
      IBOutlet UITextField*Polio1;
      IBOutlet UITextField*Multiple;
     IBOutlet UITextField*Scarlet;
      IBOutlet UITextField*HIV;
      IBOutlet UITextField*Sinus;
      IBOutlet UITextField*Asthma;
      IBOutlet UITextField*German;
      IBOutlet UITextField*Nervousness;
      IBOutlet UITextField*Numbness;
      IBOutlet UITextField*Convulsions;
      IBOutlet UITextField*Epilepsy;
      IBOutlet UITextField*Concussion;
      IBOutlet UITextField*Dizziness;
     IBOutlet UITextField* Neuritis;
      IBOutlet UITextField*Rheumatism;
     IBOutlet UITextField* Diabetes;
      IBOutlet UITextField*Arthritis;
      IBOutlet UITextField*Venereal;
      IBOutlet UITextField*Backaches;
      IBOutlet UITextField*Liver;
     IBOutlet UITextField* Kidney;
      IBOutlet UITextField*Thyroid;
      IBOutlet UITextField*Alcoholism;
      IBOutlet UITextField*Hepatitis;
      IBOutlet UITextField*Mental;
      IBOutlet UITextField*High;
      IBOutlet UITextField*Digestive;
      IBOutlet UITextField*Heart;
    IBOutlet UITextField*Cancer;
    IBOutlet UITextField*Tuberculosis;
      IBOutlet UITextField*other;
     IBOutlet UITextField*ifother;
    IBOutlet UITextField*Drink,*smoke,*Drugs,*Diet,*Excercise;
    NSMutableArray*diseases;
    NSMutableArray*selecteddisease;
   IBOutlet UILabel*patientsign;
    NSMutableArray *circle;
    IBOutlet UITextField*date;
int a,b,c;
    IBOutlet UILabel*plslisthide;
      
    NSMutableDictionary*temp;
   

    

    
    
}
@property(nonatomic,retain)NSMutableDictionary*recorddict;
@property(nonatomic,retain)UISwitch*switch1;
@property(nonatomic,retain)UISwitch*switch2;
@property(nonatomic,retain)UILabel *reslabel1;
@property(nonatomic,retain)UITextField*otherdis;
@property(nonatomic,retain)UITextField*otheropt;

@property(nonatomic,retain)UILabel *reslabel2;
-(IBAction)checkboxSelected:(UIButton*)sender;
-(IBAction)submit:(id)sender;
-(IBAction)clear:(id)sender;
-(IBAction)back:(id)sender;


@end
