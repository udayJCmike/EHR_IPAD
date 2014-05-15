//
//  ROMRAViewController.h
//  EHR
//
//  Created by DeemSysInc on 16/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextFieldDatePicker.h"
@interface ROMRAViewController : UIViewController<TextFieldDatePickerDelegate>
{
    IBOutlet UITextField * name;
    IBOutlet UITextField * doc;
    IBOutlet UITextField * sign;
    NSMutableDictionary * recorddict;
    
}

-(IBAction)submit:(id)sender;
-(IBAction)reset:(id)sender;
@property(nonatomic,retain) NSMutableDictionary * recorddict;
@end
