//
//  AutoAccidentViewController1.m
//  EHR
//
//  Created by DeemSysInc on 08/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "AutoAccidentViewController1.h"
#import "BlockAlertView.h"
#import "BlockBackground.h"
#import "BlockUI.h"
#import "AutoAccidentViewController2.h"
@interface AutoAccidentViewController1 ()

@end

@implementation AutoAccidentViewController1
@synthesize anyoneincarswitch;
@synthesize carstoppedswitch;
@synthesize footonbrakeswitch;
@synthesize vehiclemovingswitch;
@synthesize anyoneincarlabel;
@synthesize carstoppedlabel;
@synthesize footonbrakelabel;
@synthesize vehiclemovinglabel;
@synthesize recorddict;
@synthesize timeofdaysegment1;
@synthesize timeofdaylabel1;
@synthesize estimatesegment;
@synthesize estimatelabel;
@synthesize wereyouthelabel;
@synthesize wereyouthesegment;
@synthesize vehiclehitlabel;
@synthesize vehiclehitsegment;
@synthesize wasscarlabel;
@synthesize wasscarsegment;
@synthesize roadconditionlabel;
@synthesize roadconditionsegment;
@synthesize headrestraintlabel;
@synthesize headrestraintsegment;
@synthesize seatbeforelabel;
@synthesize seatbeforesegment;
@synthesize seatafterlabel;
@synthesize seataftersegment;
@synthesize lapseatbeltlabel;
@synthesize lapseatbeltsegment;
int a;

- (IBAction) toggleEnabledTextForSwitch1onSomeLabel: (id) sender
{
	if (anyoneincarswitch.on)
        {
            anyoneincarlabel.text = @"Yes";
            anyoneincar.hidden=NO;
            anyoneincar.text=@"";
        }
	else
    {
      anyoneincarlabel.text = @"No";
      anyoneincar.hidden=YES;
    }
}
- (IBAction) toggleEnabledTextForSwitch2onSomeLabel: (id) sender
{
	if (carstoppedswitch.on) carstoppedlabel.text = @"Yes";
	else carstoppedlabel.text = @"No";
}
- (IBAction) toggleEnabledTextForSwitch3onSomeLabel: (id) sender
{
	if (footonbrakeswitch.on) footonbrakelabel.text = @"Yes";
	else footonbrakelabel.text = @"No";
}
- (IBAction) toggleEnabledTextForSwitch4onSomeLabel: (id) sender
{
	if (vehiclemovingswitch.on) vehiclemovinglabel.text = @"Yes";
	else vehiclemovinglabel.text = @"No";
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
-(IBAction)estimatechange:(id)sender
{
    if (estimatesegment.selectedSegmentIndex==0)
    {
        estimatelabel.text=@"your Insurance Company";
    }
    if (estimatesegment.selectedSegmentIndex==1)
    {
        estimatelabel.text=@"Other Drivers Insurance Company";
    }
    if (estimatesegment.selectedSegmentIndex==2)
    {
        estimatelabel.text=@"Body Shop";
    }
}

-(IBAction)timeofdaysegmentchange:(id)sender
{
    if ([sender selectedSegmentIndex]==0)
    {
        timeofdaylabel1.text=@"Daylight";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        timeofdaylabel1.text=@"Dawn";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        timeofdaylabel1.text=@"Dusk";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        timeofdaylabel1.text=@"Dark";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        timeofdaylabel1.text=@"UnKnown";
    }
}
-(IBAction)wereoyuthechange:(id)sender
{
    if ([sender selectedSegmentIndex]==0)
    {
        wereyouthelabel.text=@"Driver";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        wereyouthelabel.text=@"front Seat";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        wereyouthelabel.text=@"Back Seat";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        wereyouthelabel.text=@"On the Job at the time of accident";
    }
    
}
-(IBAction)vehiclehitchange:(id)sender
{
    if ([sender selectedSegmentIndex]==0)
    {
        vehiclehitlabel.text=@"RightFront";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        vehiclehitlabel.text=@"LeftFront";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        vehiclehitlabel.text=@"RightRear";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        vehiclehitlabel.text=@"LeftRear";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        vehiclehitlabel.text=@"RightSide";
    }
    if ([sender selectedSegmentIndex]==5)
    {
       vehiclehitlabel.text=@"LeftSide";
    }
    if ([sender selectedSegmentIndex]==6)
    {
        vehiclehitlabel.text=@"Other";
    }

    
}
-(IBAction)wasscarchange:(id)sender
{
    if ([sender selectedSegmentIndex]==0)
    {
        wasscarlabel.text=@"Slowing Down";
    }
    if ([sender selectedSegmentIndex]==1)
    {
         wasscarlabel.text=@"gaining Speed";
    }
    if ([sender selectedSegmentIndex]==2)
    {
         wasscarlabel.text=@"Steady rate of Speed";
    }

}
-(IBAction)roadconditionchange:(id)sender
{
    if ([sender selectedSegmentIndex]==0)
    {
        roadconditionlabel.text=@"Dry";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        roadconditionlabel.text=@"Damp";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        roadconditionlabel.text=@"Wet";
    }
    if ([sender selectedSegmentIndex]==3)
    {
        roadconditionlabel.text=@"Snow";
    }
    if ([sender selectedSegmentIndex]==4)
    {
        roadconditionlabel.text=@"Ice";
    }
    if ([sender selectedSegmentIndex]==5)
    {
        roadconditionlabel.text=@"Other";
    }

}
-(IBAction)headrestraintchange:(id)sender
{
    if ([sender selectedSegmentIndex]==0)
    {
        headrestraintlabel.text=@"Up";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        headrestraintlabel.text=@"Down";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        headrestraintlabel.text=@"Dont Know";
    }

    
}
-(IBAction)seatafterchange:(id)sender
{
    if ([sender selectedSegmentIndex]==0)
    {
        seatafterlabel.text=@"Broken";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        seatafterlabel.text=@"Not Broken";
    }

}
-(IBAction)seatbeforechange:(id)sender
{
    if ([sender selectedSegmentIndex]==0)
    {
        seatbeforelabel.text=@"Was Altered";
    }
    if ([sender selectedSegmentIndex]==1)
    {
         seatbeforelabel.text=@"Was Not Altered";
    }
    if ([sender selectedSegmentIndex]==2)
    {
         seatbeforelabel.text=@"Dont Know";
    }

}
-(IBAction)lapseatbeltchange:(id)sender
{
    if ([sender selectedSegmentIndex]==0)
    {
        lapseatbeltlabel.text=@"Worn";
    }
    if ([sender selectedSegmentIndex]==1)
    {
        lapseatbeltlabel.text=@"Not Worn";
    }
    if ([sender selectedSegmentIndex]==2)
    {
        lapseatbeltlabel.text=@"Dont Know";
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
     recorddict=[[NSMutableDictionary alloc]init];
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

-(BOOL)modelvalidate:(NSString *)user

{
    NSString *userFormat1 =@"(?:[A-Za-z]+[a-z0-9,/+-.]*)";
    
   // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)yearvalidate:(NSString *)zipnumber{
    NSString *zipFormat1 =  @"[0-9]{4}?";
    
  //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *zipTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", zipFormat1];
    return [zipTest1 evaluateWithObject:zipnumber];
    
}
-(BOOL)speedvalidate:(NSString *)zipnumber{
    NSString *zipFormat1 =  @"[0-9]{1,3}?";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *zipTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", zipFormat1];
    return [zipTest1 evaluateWithObject:zipnumber];
    
}

-(BOOL)claimnovalidate:(NSString*)mobilenumber{
    NSString *mobileFormat1 =  @"[0-9]{5,10}?";
    
   // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:mobilenumber];
    
}
-(BOOL)onlyalphabetsexpress:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[a-z]*)";
    
   // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)dateexpress:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
  //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

-(IBAction)savecontinue:(id)sender
{
     //NSLog(@"estimee %@",estimatelabel.text);
    if(([anyoneincarlabel.text isEqual:@"Yes"] )&& (anyoneincar.hidden==NO))
    {
        a=[self onlyalphabetsexpress:[anyoneincar text]];
    }
    else if(([anyoneincarlabel.text isEqual:@"No"] )&&(anyoneincar.hidden==YES))
    {
        a=1;
    }
    if(([claimno.text length]!=0)&&
       ([adjustername.text length]!=0)&&
       ([mymake.text length]!=0)&&
       ([mymodel.text length]!=0)&&
       ([myyear.text length]!=0)&&
       ([othermake.text length]!=0)&&
       ([othermodel.text length]!=0)&&
       ([otheryear.text length]!=0)&&
       ([speed.text length]!=0))
    {
        c=0;
        if ([self claimnovalidate:[claimno text]]==1)
        {
            if([self onlyalphabetsexpress:[adjustername text]]==1)
            {
                if([self onlyalphabetsexpress:[mymake text]]==1)
                {
                    if([self modelvalidate:[mymodel text]]==1)
                    {
                        if([self yearvalidate:[myyear text]]==1)
                        {
                            if([self onlyalphabetsexpress:[othermake text]]==1)
                            {
                                if([self onlyalphabetsexpress:[othermodel text]]==1)
                                {
                                    if([self yearvalidate:[otheryear text]]==1)
                                    {
                                        if([self speedvalidate:[speed text]]==1)
                                        {
                                                    c=1;
                                            [recorddict setValue:estimatelabel.text forKey:@"estimatelabel"];
                                            [recorddict setValue:wereyouthelabel.text forKey:@"wereyouthelabel"];
                                            [recorddict setValue:vehiclehitlabel.text forKey:@"vehiclehitlabel"];
                                            [recorddict setValue:wasscarlabel.text forKey:@"wasscarlabel"];
                                            [recorddict setValue:roadconditionlabel.text forKey:@"roadconditionlabel"];
                                            [recorddict setValue:headrestraintlabel.text forKey:@"headrestraintlabel"];
                                            [recorddict setValue:seatafterlabel.text forKey:@"seatafterlabel"];
                                            [recorddict setValue:seatbeforelabel.text forKey:@"seatbeforelabel"];
                                            [recorddict setValue:lapseatbeltlabel.text forKey:@"lapseatbeltlabel"];
                                                    [recorddict setValue:claimno.text forKey:@"claim No"];
                                            [recorddict setValue:adjustername.text forKey:@"adjustername"];
                                        [recorddict setValue:anyoneincarlabel.text forKey:@"anyoneincarlabel"];
                                        [recorddict setValue:anyoneincar.text forKey:@"anyoneincar"];
                                            [recorddict setValue:mymake.text forKey:@"mymake"];
                                        [recorddict setValue:mymodel.text forKey:@"mymodel"];
                                        [recorddict setValue:myyear.text forKey:@"myyear"];
                                    [recorddict setValue:othermake.text forKey:@"othermake"];
                                [recorddict setValue:othermodel.text forKey:@"othermodel"];
                                [recorddict setValue:otheryear.text forKey:@"otheryear"];
                            [recorddict setValue:carstoppedlabel.text forKey:@"carstoppedlabel"];
                            [recorddict setValue:footonbrakelabel.text forKey:@"footonbrakelabel"];
                            [recorddict setValue:vehiclemovinglabel.text forKey:@"vehiclemovinglabel"];
                            [recorddict setValue:speed.text forKey:@"speed"];
                                            [recorddict setValue:timeofdaylabel1.text forKey:@"timeofdaylabel"];
                                        
                                        if(a==1)
                                                {
                                                [recorddict setValue:anyoneincar.text forKey:@"anyoneincar"];
                                                    
                                                }
                                                    else{
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Name."];
                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                    }
                                                    
                                                }
                                                                                                                                                else
                                                                                    {
                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Speed."];
                                                                                        
                                                                                        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                        [alert show];
                                                                                    }
                                                                                    
                                                                                }
                                                                            else
                                                                            {
                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Year."];
                                                                                
                                                                                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                [alert show];
                                                                                
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Model ."];
                                                                            
                                                                            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                            [alert show];
                                                                            
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Make ."];
                                                                        
                                                                        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                        [alert show];
                                                                        
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Year."];
                                                                    
                                                                    //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                    
                                                                }
                                                                
                                                            }
                                                            else
                                                            {
                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Model."];
                                                                
                                                                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                [alert show];
                                                                
                                                            }
                                                        }
                                                        else
                                                        {
                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Make."];
                                                            
                                                            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                            [alert show];
                                                            
                                                        }
               
                }
                                                    else
                                                    {
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Adjuster's Name."];
                                                        
                                                        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                        
                                                    }
                                                }
                                                else
                                                {
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Claim No."];
                                                    
                                                    //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                    
                                                }
                                            }
    else
    {
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter all the required fields."];
        
        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
        
    }
    
}

-(IBAction)clearall:(id)sender
{
    claimno.text=@"";
    adjustername.text=@"";
    anyoneincar.text=@"";
    mymake.text=@"";
    mymodel.text=@"";
    myyear.text=@"";
    othermake.text=@"";
    othermodel.text=@"";
    otheryear.text=@"";
    wascar.text=@"";
    speed.text=@"";
    
}
-(void)dismissKeyboard
{
    [claimno resignFirstResponder];
    [adjustername resignFirstResponder];
    [anyoneincar resignFirstResponder];
    [mymake resignFirstResponder];
    [mymodel resignFirstResponder];
    [myyear resignFirstResponder];
    [othermake resignFirstResponder];
    [othermodel resignFirstResponder];
    [otheryear resignFirstResponder];
    [wascar resignFirstResponder]  ;
    [speed resignFirstResponder];
     
}

-(BOOL)validateUsername:(NSString *)user

{
    NSString *userFormat1 =@"(?:[A-Za-z]+[a-z0-9,/+-.]*)";
    
   // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateZip:(NSString *)zipnumber{
    NSString *zipFormat1 =  @"[0-9]{5}?";
    
  //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *zipTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", zipFormat1];
    return [zipTest1 evaluateWithObject:zipnumber];
    
}

-(BOOL)validatePager:(NSString*)mobilenumber{
    NSString *mobileFormat1 =  @"[A-Z0-9a-z._%+-]+";
    
  //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:mobilenumber];
    
}
-(BOOL)validateMobile:(NSString*)mobilenumber{
    NSString *mobileFormat1 =  @"[0-9]{10}?";
    
  //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:mobilenumber];
    
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[a-z]*)";
    
   // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
  //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validatessn:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{3}\\-[0-9]{2}\\-[0-9]{4}?";
    
   // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"autoacc1"])
    {
        if ((c==1)&&(a==1))
        {
            return YES;
        }
        else
        {
            
            return NO;
        }
    }
    else
        return NO;
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"autoacc1"])
    {
        
        AutoAccidentViewController2 *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in autoaccident first page %@",recorddict);
    }
    
    
}


- (void)dealloc {
    [super dealloc];
}
@end
