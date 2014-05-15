//
//  PatientInfoViewController.m
//  EHR
//
//  Created by DeemsysInc on 10/7/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "PatientInfoViewController.h"
#import "BlockAlertView.h"
#import "Patient2ViewController.h"
@interface PatientInfoViewController ()

@end

@implementation PatientInfoViewController
@synthesize switch1;
@synthesize resLabel;
@synthesize switch2;
@synthesize resLabel2;
@synthesize datePicker;
@synthesize seg;
@synthesize seggender;
@synthesize marital;
@synthesize segmarital;
- (IBAction) toggleEnabledTextForSwitch1onSomeLabel: (id) sender
{
	if (switch1.on)
    {
        resLabel.text = @"Full Time";
    sd1.hidden=TRUE;
    sd2.hidden=TRUE;
    sd3.hidden=TRUE;
    sd4.hidden=TRUE;
    sd5.hidden=TRUE;
    sd6.hidden=TRUE;
        sd7.hidden=TRUE;
        empname.hidden=TRUE;
        empadd.hidden=TRUE;
        workcity.hidden=TRUE;
        workzip.hidden=TRUE;
        occ.hidden=TRUE;
        workstate.hidden=TRUE;
        workph.hidden=TRUE;
    
    }
	else
    {
        resLabel.text = @"Part Time";
    sd1.hidden=FALSE;
    sd2.hidden=FALSE;
    sd3.hidden=FALSE;
    sd4.hidden=FALSE;
    sd5.hidden=FALSE;
    sd6.hidden=FALSE;
        sd7.hidden=FALSE;
        empname.hidden=FALSE;
        empadd.hidden=FALSE;
        workcity.hidden=FALSE;
        workzip.hidden=FALSE;
        occ.hidden=FALSE;
        workstate.hidden=FALSE;
        workph.hidden=FALSE;
    }}
- (IBAction) toggleEnabledTextForSwitch2onSomeLabel: (id) sender
{
	if (switch2.on) resLabel2.text = @"Yes";
	else resLabel2.text = @"No";
}

-(IBAction)segselected:(id)sender
{
    if(seggender.selectedSegmentIndex==0)
        seg.text=@"Male";
    else if (seggender.selectedSegmentIndex==1)
        seg.text=@"Female";
}

-(IBAction)segmaritalselected:(id)sender
{
   if(segmarital.selectedSegmentIndex==0)
   {
      marital.text=@"Single";
   }
    else if (segmarital.selectedSegmentIndex==1)
    {
             marital.text=@"Married";
    }
    else if (segmarital.selectedSegmentIndex==2)
    {
             marital.text=@"Divorced";
    }
}
- (IBAction)changefromdate:(id)sender
{
    int date;
    //datePicker1.minimumDate=datePicker.date;
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
	df.dateStyle = NSDateFormatterMediumStyle;
	fromd.text = [NSString stringWithFormat:@"%@",
                  [df stringFromDate:datePicker.date]];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    unsigned unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit;
    NSDateComponents *dateComponentsNow = [calendar components:unitFlags fromDate:[NSDate date]];
    NSDateComponents *dateComponentsBirth = [calendar components:unitFlags fromDate:datePicker.date];
  //  NSLog(@"day %ld month %ld year %ld",(long)[dateComponentsBirth day],(long)[dateComponentsBirth month],(long)[dateComponentsBirth year]);
  //   NSLog(@"nowday %ld month %ld year %ld",(long)[dateComponentsNow day],(long)[dateComponentsNow month],(long)[dateComponentsNow year]);
    
    if (([dateComponentsNow month] < [dateComponentsBirth month]) ||
        (([dateComponentsNow month] == [dateComponentsBirth month]) && ([dateComponentsNow day] < [dateComponentsBirth day])))
    {
      date=  [dateComponentsNow year] - [dateComponentsBirth year] - 1;
    }
    else
    {
       date= [dateComponentsNow year] - [dateComponentsBirth year];
    }
    NSLog(@"date from picker %d ",-(date));
    date=-(date);
   
    NSUserDefaults *ageofperson=[NSUserDefaults standardUserDefaults] ;
                                  [ageofperson setInteger:date forKey:@"age"];
    [ageofperson synchronize];
    
	[df release];
    
    
}
 
-(IBAction)setFromDate
{
     if(datePicker.hidden==YES)
    {
        self.datePicker.hidden=NO;
    }
    else
    {
        self.datePicker.hidden=YES;
    }
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if(datePicker.hidden==NO)
    {
        datePicker.hidden=YES;
        
        
    }
    

    
    
}


-(BOOL)validateUsername:(NSString *)user

{
    NSString *userFormat1 =@"[A-Z0-9a-z._/-]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateZip:(NSString *)zipnumber{
    NSString *zipFormat1 =  @"[0-9]{5}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *zipTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", zipFormat1];
    return [zipTest1 evaluateWithObject:zipnumber];
    
}
/*-(BOOL)validateAddress:(NSString *)zipnumber{

    NSString*zipFormat1=@"(^[A-Za-z]+( [A-Za-z']+)*$)";
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *zipTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", zipFormat1];
    return [zipTest1 evaluateWithObject:zipnumber];
    


}
*/
-(BOOL)validateEmail:(NSString*)candidate{
    NSString *emailFormat1 = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    
    
    NSPredicate *emailTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailFormat1];
    return [emailTest1 evaluateWithObject:candidate];
    
}

-(BOOL)validateMobile:(NSString*)mobilenumber{
    NSString *mobileFormat1 =  @"[0-9]{10}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:mobilenumber];
    
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[A-Za-z]*)";
    
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
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validatessn:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{3}\\-[0-9]{2}\\-[0-9]{4}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
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
    datePicker.hidden=YES;
    
     fromd.text=@"Select DOB";
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    
    UITapGestureRecognizer *tapGR = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pickerViewTapped)];
    [datePicker addGestureRecognizer:tapGR];
  
    UITapGestureRecognizer *tap1 = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];


    
    recorddict=[[NSMutableDictionary alloc]init];
   // Do any additional setup after loading the view.
}
-(void)dismissKeyboard {
    [name resignFirstResponder];
    [todaydate resignFirstResponder];
    [streetaddress resignFirstResponder];
    [homeph resignFirstResponder];

    [city resignFirstResponder];

    [cellph resignFirstResponder];

    [state resignFirstResponder];

    [zip resignFirstResponder];
    [pager resignFirstResponder];
    [socialsecnum resignFirstResponder];

    [empname resignFirstResponder];
    [occ resignFirstResponder];
    [empadd resignFirstResponder];
    [workph resignFirstResponder];
    [workcity resignFirstResponder];
    [workstate resignFirstResponder];
    [workzip resignFirstResponder];
    [spouseemp resignFirstResponder];
    [spousename resignFirstResponder];
    [spouseph resignFirstResponder];
    [relativeph resignFirstResponder];
    [relativename resignFirstResponder];
}
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
}

-(IBAction)saveandcontinue:(id)sender
{
    
    // NSLog(@"selected value in gender %@",seg.text);
  //  NSLog(@"selected value in marrital  %@",marital.text);
//NSLog(@"%@ sex",sex);
   // NSLog(@"%@ gender",gender);
    //   NSLog(@"%@ Student",resLabel.text);
    // NSLog(@"%@ YES or NO question",resLabel2.text);
    if(([name.text length]!=0)&&
       ([todaydate.text length]!=0)&&
       ([streetaddress.text length]!=0)&&
       ([homeph.text length]!=0)&&
       ([city.text length]!=0)&&
       ([cellph.text length]!=0)&&
       ([state.text length]!=0)&&
       ([zip.text length]!=0)&&
       ([pager.text length]!=0)&&
       ([socialsecnum.text length]!=0)&&
       //([empname.text length]!=0)&&
       //([occ.text length]!=0)&&
       //([empadd.text length]!=0)&&
       //([workph.text length]!=0)&&
       ///([workcity.text length]!=0)&&
       //([workstate.text length]!=0)&&
       //([workzip.text length]!=0)&&
       ([spousename.text length]!=0)&&
       ([spouseemp.text length]!=0)&&
       ([spouseph.text length]!=0)&&
       ([relativeph.text length]!=0)&&
      (![fromd isEqual:@"Select DOB"])&&
       ([resLabel.text length]!=0)&&
       ([resLabel2.text length]!=0)&&
       ([relativename.text length]!=0))
    {
        c=0;
        if ([self validateNames:[name text]]==1)
        {
            if([self validateUsername:[streetaddress text]]==1)
            {
                if([self validateMobile:[homeph text]]==1)
                {
                    if([self validateMobile:[cellph text]]==1)
                    {
                        if([self validateNames:[city text]]==1)
                        {
                            if([self validateNames:[state text]]==1)
                            {
                                if([self validateZip:[zip text]]==1)
                                {
                                    if([self validatessn:[socialsecnum text]]==1)
                                    {
                                        
                                        if([self validateNames:[spousename text]]==1)
                                        {
                                            if([self validateNames:[spouseemp text]]==1)
                                            {
                                                if([self validateMobile:[spouseph text]]==1)
                                                {
                                                    if([self validateMobile:[relativeph text]]==1)
                                                    {
                                                        if ([self validateDate:[todaydate text]]==1)
                                                        {
                                                            if([self validateEmail:[pager text]]==1)
                                                            {
                                                                if ([self validateNames:[relativename text]]==1)
                                                                {
                                                                    [recorddict setValue:name.text forKey:@"name"];
                                                                    [recorddict setValue:streetaddress.text forKey:@"streetaddress"];
                                                                    [recorddict setValue:homeph.text forKey:@"homephone"];
                                                                    [recorddict setValue:cellph.text forKey:@"cellphone"];
                                                                    [recorddict setValue:city.text forKey:@"city"];
                                                                    [recorddict setValue:state.text forKey:@"state"];
                                                                    [recorddict setValue:zip.text forKey:@"zipcode"];
                                                                    [recorddict setValue:socialsecnum.text forKey:@"ssn"];
                                                                    [recorddict setValue:spousename.text forKey:@"spousename"];
                                                                    [recorddict setValue:spouseemp.text forKey:@"spouseemp"];
                                                                    [recorddict setValue:spouseph.text forKey:@"spousephone"];
                                                                    [recorddict setValue:relativeph.text forKey:@"relativephone"];
                                                                    [recorddict setValue:relativename.text forKey:@"relativename"];
                                                                    [recorddict setValue:todaydate.text forKey:@"todaydate"];
                                                                    [recorddict setValue:pager.text forKey:@"pager"];
                                                                    [recorddict setValue:fromd.text forKey:@"DateOfBirth"];
                                                                    
                                                                    [recorddict setValue:resLabel.text forKey:@"Student"];
                                                                    [recorddict setValue:resLabel2.text forKey:@"hadchiropractic"];
                                                                    [recorddict setValue:seg.text forKey:@"sex"];
                                                                    [recorddict setValue:marital.text forKey:@"Maritalstatus"];
                                                                    if([resLabel.text isEqual:@"Full Time"])
                                                                    {
                                                                       c=1;

                                                                    }
                                                                    else if([resLabel.text isEqual:@"Part Time"])
                                                                    {
                                                                        if([self validateNames:[empname text]]==1)
                                                                        {
                                                                            
                                                                            if([self validateNames:[occ text]]==1)
                                                                            {
                                                                                if([self validateUsername:[empadd text]]==1)
                                                                                    
                                                                                {
                                                                                    if([self validateMobile:[workph text]]==1)
                                                                                    {
                                                                                   if([self validateNames:[workcity text]]==1)
                                                                                        {
                                                                                            
                                                                                            if([self validateNames:[workstate text]]==1)
                                                                                                
                                                                                            {
                                                                                                if([self validateZip:[workzip text]]==1)
                                                                                                {
                                                                                                    c=1;
                                                                                                    [recorddict setValue:empname.text forKey:@"empname"];
                                                                                                    [recorddict setValue:occ.text forKey:@"occupation"];
                                                                                                    [recorddict setValue:empadd.text forKey:@"empaddress"];
                                                                                                    [recorddict setValue:workph.text forKey:@"workphone"];
                                                                                                    [recorddict setValue:workcity.text forKey:@"empcity"];
                                                                                                    [recorddict setValue:workstate.text forKey:@"workstate"];
                                                                                                    [recorddict setValue:workzip.text forKey:@"workzipcode"];

                                                                                                    
                                                                                                    
                                                                                                }
                                                                                                else{
                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Work Zipcode."];
                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                    [alert show];
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid WorkState."];                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];                                                                [alert show];                                                 
                                                                                            }
                                                                                        }
                                                                                        else   {
                                                                                            
                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Workcity."];                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                            [alert show];
                                                                                            
                                                                                        }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid WorkPhone."];                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                        [alert show];
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Employee Address."];
                                                                                    //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                    [alert show];
                                                                                }
                                                                            }
                                                                            
                                                                            else
                                                                            {
                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Occupation."];
                                                                                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                [alert show];
                                                                            }
                                                                            
                                                                        }
                                                                        else
                                                                        {
                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Employee Name."];
                                                                            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                            [alert show];
                                                                        }
  
                                                                        
                                                                        
                                                                        
                                                                    }
                                                                    
                                                                }
                                                                else{
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Relative Name."];
                                                                    
                                                                    //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                    
                                                                    
                                                                }
                                                                
                                                            }
                                                            else
                                                            {
                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Email id."];
                                                                
                                                                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                [alert show];
                                                            }
                                                        }
                                                        else
                                                        {
                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Date."];
                                                            
                                                            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                            [alert show];
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Relative PhoneNumber."];
                                                        
                                                        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                        
                                                    }
                                                }
                                                else
                                                {
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Spouse Phone Number."];
                                                    
                                                    //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                    
                                                }
                                            }
                                            else
                                            {
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Spouse Employeer ."];
                                                
                                                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                                
                                            }
                                        }
                                        else
                                        {
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid SpouseName."];
                                            
                                            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                            
                                        }
                                        
                                    }
                                    else
                                    {
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid SocialSecurityNumber."];
                                        
                                        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                        
                                        
                                    }
                                }
                                else
                                {
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Zipcode."];
                                    
                                    //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                    
                                }
                            }
                            else
                            {
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid State Name."];
                                
                                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                                
                            }
                        }
                        else
                        {
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid City Name."];
                            
                            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                            
                        }
                    }
                    else
                    {
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid CellPhone Number."];
                        
                        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                        
                    }
                }
                else
                {
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid HomePhone Number."];
                    
                    //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                    
                    
                }
            }
            else
            {
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid StreetAddress."];
                
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
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter all the required fields."];
        
        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
        
    }




}


- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"Patientdetail1"])
    {
        if (c==1)
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
    

    if ([segue.identifier isEqualToString:@"Patientdetail1"])
    {
    
        
       Patient2ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in PatientVC first %@",recorddict);
       // destViewController.delegate=self;
       
    }
    
 
    
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
