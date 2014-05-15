//
//  HippaViewController.h
//  EHR
//
//  Created by DeemSysInc on 16/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "/usr/include/sqlite3.h"

#import "TextFieldDatePicker.h"



@interface HippaViewController : UIViewController<TextFieldDatePickerDelegate>
{
    NSMutableDictionary * recorddict;
    IBOutlet UITextField * name;
    IBOutlet UITextField * sign;
    IBOutlet UITextField * witness;
    IBOutlet UITextField * date;
    NSString *databasePath;
   // sqlite3 * ehrdbase1;
}

-(IBAction)submit:(id)sender;
-(IBAction)reset:(id)sender;
@property(nonatomic,retain)NSMutableDictionary * recorddict;

@end
