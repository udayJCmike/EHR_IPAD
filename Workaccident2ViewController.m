//
//  Workaccident2ViewController.m
//  EHR
//
//  Created by DeemsysInc on 10/11/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "Workaccident2ViewController.h"

@interface Workaccident2ViewController ()

@end

@implementation Workaccident2ViewController
@synthesize recorddict;
@synthesize switch1;
@synthesize switch2;
@synthesize switch3;
@synthesize switch4;
@synthesize switch5;
@synthesize switch6;
@synthesize reslabel1;
@synthesize reslabel2;
@synthesize reslabel3;
@synthesize reslabel4;
@synthesize reslabel5;
@synthesize reslabel6;
@synthesize seglabel;
@synthesize seg;
@synthesize segothertext;

-(IBAction)back:(id)sender
{
    [[self navigationController] popViewControllerAnimated:YES];
}

-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 =@"(?:[A-Za-z]+[A-Za-z]*)";
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
-(BOOL)validatealphanumeric:(NSString*)mobilenumber{
    NSString *mobileFormat1 =  @"[A-Z0-9a-z.:_,-]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:mobilenumber];
    
}
- (IBAction) toggleEnabledTextForSwitch1onSomeLabel: (id) sender
{
	if (switch1.on)
    {
        reslabel1.text=@"Yes";
        givespecificsyes.hidden=NO;
        givespecificsyestext.hidden=NO;
	}
    else
    {
        reslabel1.text=@"No";
        givespecificsyestext.text=@"";
        givespecificsyes.hidden=YES;
        givespecificsyestext.hidden=YES;
        
    }
}
- (IBAction) toggleEnabledTextForSwitch2onSomeLabel: (id) sender
{
	if (switch2.on)
    {
      reslabel2.text=@"Yes";
	}
    else
    {
      reslabel2.text=@"No";
        
    }
}
- (IBAction) toggleEnabledTextForSwitch3onSomeLabel: (id) sender
{
	if (switch3.on)
    {
      reslabel3.text=@"Yes";
	}
    else
    {
        reslabel3.text=@"No";
        
    }
}
- (IBAction) toggleEnabledTextForSwitch4onSomeLabel: (id) sender
{
	if (switch4.on)
    {
      reslabel4.text=@"Yes";
	}
    else
    {
        reslabel4.text=@"No";
        
    }
}
- (IBAction) toggleEnabledTextForSwitch5onSomeLabel: (id) sender
{
	if (switch5.on)
    {
        reslabel5.text=@"Yes";
	}
    else
    {
       reslabel5.text=@"No";
        
    }
}
- (IBAction) toggleEnabledTextForSwitch6onSomeLabel: (id) sender
{
	if (switch6.on)
    {
       reslabel6.text=@"Yes";
	}
    else
    {
       reslabel6.text=@"No";
        
    }
}
-(IBAction)segselected:(id)sender
{
   
    if(seg.selectedSegmentIndex==0)
    {
        segothertext.hidden=YES;
       seglabel.text=@"Oily";
    }
    else if(seg.selectedSegmentIndex==1)
    {
        segothertext.hidden=YES;
               seglabel.text=@"Dirty";
    }
    else if(seg.selectedSegmentIndex==2)
    {
        segothertext.hidden=YES;
            seglabel.text=@"Slippery";
    }
    else if(seg.selectedSegmentIndex==3)
    {
         segothertext.hidden=NO;
            segothertext.text=@"";
       
    }
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
    [super viewDidLoad];
    temp=[[NSMutableDictionary alloc]init];
    temp=recorddict;
    NSLog(@"temp in didload %@",temp );
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    

	// Do any additional setup after loading the view.
}
-(void)dismissKeyboard {
    [segothertext resignFirstResponder];
    [givespecificsyestext resignFirstResponder];
    [noofemployessinjured resignFirstResponder];
    [changesmadeinjob resignFirstResponder];
}

-(IBAction)submit:(id)sender
{
    recorddict=[[NSMutableDictionary alloc]init];
    a=0;
   
  if(seg.selectedSegmentIndex==3)
  {
      seglabel.text=segothertext.text;
      seg1=[self validateNames:[seglabel text]];
  }
    else
        seg1=1;
    if([reslabel1.text isEqual:@"Yes"])
    {
        a=[self validateNames:[givespecificsyestext text]];
    }
    else
        a=1;
    if(([noofemployessinjured.text length]!=0)&&
       ([changesmadeinjob.text length]!=0))
    {
       if([self validatealphanumeric:[noofemployessinjured text]]==1)
           {
            if([self validateNames:[changesmadeinjob text]]==1)
            {
                [recorddict setValue:noofemployessinjured.text forKey:@"noofemployeesinjured"];
                [recorddict setValue:changesmadeinjob.text forKey:@"changesmadeinjob"];
                [recorddict setValue:reslabel1.text forKey:@"pushorpull"];
                [recorddict setValue:reslabel2.text forKey:@"footorhandlevers"];
                [recorddict setValue:reslabel3.text forKey:@"workoverhead"];
                [recorddict setValue:reslabel4.text forKey:@"likeyourjob"];
                [recorddict setValue:reslabel5.text forKey:@"preemploymentexam"];
                [recorddict setValue:reslabel6.text forKey:@"wanttoreturnjob"];
            
                if([reslabel1.text isEqual:@"Yes"])
                {
                    if(a==1)
                    {
                        [recorddict setValue:givespecificsyestext.text forKey:@"givespecifics"];
                        if(seg1==1)
                        { c=1;
                            [recorddict setValue:seglabel.text forKey:@"workarea"];
                        }
                        else
                        {
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid work area."];
                            
                            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                        }
                    
                    else{
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid push or pull field."];
                        
                        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                        
                    }
            }
                else{
                    if(seg1==1)
                    {
                        c=1;
                        [recorddict setValue:seglabel.text forKey:@"workarea"];
                    }
                    else
                    {
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid work area."];
                        
                        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                }
               
            }
        
            else{
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid text for changes made in your job field."];
                
                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];

            }
           }
       else{
           BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid number of emplyees have been injured field."];
           
           //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
           [alert setDestructiveButtonWithTitle:@"x" block:nil];
           [alert show];

           
       }
    }
    else{
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter all the required fields."];
        
        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    if((a==1)&&(seg1==1)&&(c==1))
    {
        [recorddict addEntriesFromDictionary:temp];
        NSLog(@"record dict values %@",recorddict);
    }
//method end
}
-(IBAction)clear:(id)sender
{
    for (UIView *subview in [self.view subviews])
        if([subview isKindOfClass:[UITextField class]])
            [(UITextField*)subview setText:@""];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
