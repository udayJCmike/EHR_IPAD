//
//  ROMRAViewController.m
//  EHR
//
//  Created by DeemSysInc on 16/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "ROMRAViewController.h"
#import "BlockAlertView.h"
#import "BlockBackground.h"
#import "BlockUI.h"

@interface ROMRAViewController ()

@end


@implementation ROMRAViewController
@synthesize recorddict;
int a;


-(BOOL)onlyalphabetsexpress:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[a-z]*)";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
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

-(IBAction)submit:(id)sender
{
    recorddict=[[NSMutableDictionary alloc]init];
    if(([name.text length]!=0)&&
       ([doc.text length]!=0)&&
       ([sign.text length]!=0))
    {
        a=0;
        if ([self onlyalphabetsexpress:[name text]]==1)
        {
            if([self onlyalphabetsexpress:[doc text]]==1)
            {
                if([self onlyalphabetsexpress:[sign text]]==1)
                {
                    a=1;
                    [recorddict setValue:name.text forKey:@"patientname"];
                    [recorddict setValue:doc.text forKey:@"docs"];
                    [recorddict setValue:sign.text forKey:@"patientsign"];
                }
                else
                {
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Signature."];
                    
                    //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
            }
            else
            {
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Data."];
                
                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
        }
        else
        {
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Name."];
            
            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }
    else
    {
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter all required fields."];
        
        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    if (a==1)
    {
        NSLog(@"recorddict in ROMRA %@",recorddict);
    }
    else
    {
        NULL;
    }
    
}
-(IBAction)reset:(id)sender
{
    name.text=@"";
    doc.text=@"";
    sign.text=@"";
    
}
-(void)dismissKeyboard
{
    [name resignFirstResponder];
    [doc resignFirstResponder];
    [sign resignFirstResponder];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
   // recorddict=[[NSMutableDictionary alloc]init];
    [super viewDidLoad];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
