//
//  XrayViewController.m
//  Xray
//
//  Created by Admin on 28/02/14.
//  Copyright (c) 2014 Deemsysinc. All rights reserved.
//

#import "XrayViewController.h"
#import "BlockAlertView.h"

@interface XrayViewController ()

@end

@implementation XrayViewController
@synthesize recorddict;

-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z0-9,/\'.;]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
- (IBAction)SAVE:(id)sender
{
    recorddict=[[NSMutableDictionary alloc]init];
    [recorddict addEntriesFromDictionary:recorddict];
    a=1;
    temp1=[name.text stringByReplacingOccurrencesOfString:@" " withString:@" "];
    temp2=[borrow.text stringByReplacingOccurrencesOfString:@" " withString:@" "];
    temp3=[due.text stringByReplacingOccurrencesOfString:@" " withString:@" "];
    temp4=[sign.text stringByReplacingOccurrencesOfString:@" " withString:@" "];
    temp5=[date.text stringByReplacingOccurrencesOfString:@" " withString:@" "];
    
    if(([temp1 length]!=0)&&
       ([temp2 length]!=0)&&
       ([temp3 length]!=0)&&
       ([temp4 length]!=0)&&
       ([temp5 length]!=0))
    {
        
        if([self validateNames:temp1]==1)
        {
            if([self validateDate:temp2]==1)
            {
                if([self validateDate:temp3]==1)
                {
                    if([self validateNames:temp4]==1)
                    {
                        if([self validateDate:temp3]==1)
                        {
                        [recorddict setValue:name.text forKey:@"Name"];
                        [recorddict setValue:borrow.text forKey:@"Date Borrowed"];
                        [recorddict setValue:due.text forKey:@"Date Due"];
                        [recorddict setValue:sign.text forKey:@"Signature"];
                        [recorddict setValue:date.text forKey:@"Date"];
                        NSLog(@"Success!!!%@",recorddict);
                    }
                    else
                    {
                        a=0;
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Date."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                }
                else
                {
                    a=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Signature."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
            }
            else
            {
                a=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Date Due."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
        }
        else
        {
            a=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Date Borroweed."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }
        else
        {
            a=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Name."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }
    else
    {
        a=0;
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"All Fields Are Mandatory."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
