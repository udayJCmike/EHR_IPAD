//
//  Patient2ViewController.m
//  EHR
//
//  Created by DeemsysInc on 10/7/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "Patient2ViewController.h"
#import "Patient3ViewController.h"
@interface Patient2ViewController ()

@end

@implementation Patient2ViewController
@synthesize recorddict;
@synthesize switch1;
@synthesize switch2;
@synthesize switch3;
@synthesize switch4;
@synthesize resLabel1;
@synthesize resLabel2;
@synthesize resLabel3;
@synthesize resLabel4;
@synthesize datePicker;
@synthesize syml1;
@synthesize slider1;
@synthesize slider2;
@synthesize slider3;
@synthesize syml2;
@synthesize syml3;
@synthesize seg;
@synthesize segtype;

-(IBAction)back:(id)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (IBAction) toggleEnabledTextForSwitch1onSomeLabel: (id) sender
{
	if (switch1.on) resLabel1.text = @"Yes";
	else resLabel1.text = @"No";
}
- (IBAction) toggleEnabledTextForSwitch2onSomeLabel: (id) sender
{
	if (switch2.on) resLabel2.text = @"Yes";
	else resLabel2.text = @"No";
}
- (IBAction) toggleEnabledTextForSwitch3onSomeLabel: (id) sender
{
	if (switch3.on) resLabel3.text = @"Yes";
	else resLabel3.text = @"No";
}
- (IBAction) toggleEnabledTextForSwitch4onSomeLabel: (id) sender
{
	if (switch4.on)
    {
        resLabel4.text = @"Yes";
        optwhen.hidden=NO;
       
    }
	else
    {resLabel4.text = @"No";
        optwhen.hidden=YES;
        optwhen.text=@" ";
    }
}
- (IBAction)changefromdate:(id)sender
{
    //datePicker1.minimumDate=datePicker.date;
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
	df.dateStyle = NSDateFormatterMediumStyle;
	fromd.text = [NSString stringWithFormat:@"%@",
                  [df stringFromDate:datePicker.date]];
	[df release];
    
    
}
-(IBAction)segselected:(id)sender{
if(seg.selectedSegmentIndex==0)
{
   segtype.text=@"Auto";
}
    else if (seg.selectedSegmentIndex==1)
    {
        segtype.text=@"Work";
    }
    else if (seg.selectedSegmentIndex==2)
    {
       segtype.text=@"Other";
    }
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
     datePicker.hidden=YES;
  
    [super viewDidLoad];
    CGRect frame=CGRectMake(0.0,0.0, 200.0,10.0);
    slider1=[[UISlider alloc]initWithFrame:frame];
    slider1.minimumValue = 0.0;
    slider1.maximumValue = 10.0;
    slider1.continuous = YES;
    [slider1 addTarget:self action:@selector(sliderAction:) forControlEvents:UIControlEventValueChanged];
    slider2=[[UISlider alloc]initWithFrame:frame];
    slider2.minimumValue = 0.0;
    slider2.maximumValue = 10.0;
    slider2.continuous = YES;
    [slider2 addTarget:self action:@selector(sliderAction2:) forControlEvents:UIControlEventValueChanged];
    slider3=[[UISlider alloc]initWithFrame:frame];
    slider3.minimumValue = 0.0;
    slider3.maximumValue = 10.0;
    slider3.continuous = YES;
    [slider3 addTarget:self action:@selector(sliderAction3:) forControlEvents:UIControlEventValueChanged];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    
    UITapGestureRecognizer *tapGR = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pickerViewTapped)];
    [datePicker addGestureRecognizer:tapGR];
    [self.view addSubview:slider1];
    
    temp=[[NSMutableDictionary alloc]init];
    temp=recorddict;
	// Do any additional setup after loading the view.
}
-(void)dismissKeyboard {
    [sym1 resignFirstResponder];
    [sym2 resignFirstResponder];
    [sym3 resignFirstResponder];
    [medwhen resignFirstResponder];
    [medwhere resignFirstResponder];
    [nameofattorney resignFirstResponder];
    [attorneyph resignFirstResponder];
    [autoname resignFirstResponder];
    [autoph resignFirstResponder];
    [autopolicy resignFirstResponder];
    [helph resignFirstResponder];
    [helname resignFirstResponder];
    [optwhen resignFirstResponder];
    [nop resignFirstResponder];
    [comname resignFirstResponder];
    [comph resignFirstResponder];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if(datePicker.hidden==NO)
    {
        datePicker.hidden=YES;
        
        
    }
    
    
    
    
}
- (IBAction)sliderAction:(id)sender{
    UISlider *MYslider = (UISlider *)sender;
    int SliderValue = (int)roundf(MYslider.value);
   syml1.text = [NSString stringWithFormat:@"%d", SliderValue];
}
- (IBAction)sliderAction2:(id)sender{
    UISlider *MYslider = (UISlider *)sender;
    int SliderValue = (int)roundf(MYslider.value);
    syml2.text = [NSString stringWithFormat:@"%d", SliderValue];
}

- (IBAction)sliderAction3:(id)sender{
    UISlider *MYslider = (UISlider *)sender;
    int SliderValue = (int)roundf(MYslider.value);
    syml3.text = [NSString stringWithFormat:@"%d", SliderValue];
}


-(IBAction)clear:(id)sender
{
    syml1.text=0;
    syml2.text=0;
    syml3.text=0;
    for (UIView *subview in [self.view subviews])
        if([subview isKindOfClass:[UITextField class]])
            [(UITextField*)subview setText:@""];
}


-(IBAction)savecontinuebtn:(id)sender
{
    recorddict=[[NSMutableDictionary alloc]init];
       [recorddict addEntriesFromDictionary:temp];
    if(([resLabel4.text isEqual:@"Yes"] )&& (optwhen.hidden==NO))
    {
        a=[self validateDate:[optwhen text]];
    }
    else if(([resLabel4.text isEqual:@"No"] )&&(optwhen.hidden==YES))
    {
        a=1;
    }
    else{
        a=0;
    }
    if((([sym1.text length]!=0)&&([syml1.text length]!=0))&&
        (![fromd.text isEqual:@"Select Date"])&&
        ([medwhen.text length]!=0)&&
        ([medwhere.text length]!=0)&&
        ([nameofattorney.text length]!=0)&&
        ([attorneyph.text length]!=0)&&
        ([nop.text length]!=0)&&
        ([comname.text length]!=0)&&
        ([comph.text length]!=0)&&
        ([autoname.text length]!=0)&&
        ([autoph.text length]!=0)&&
        ([autopolicy.text length]!=0)&&
        ([helname.text length]!=0)&&
        ([helph.text length]!=0)
       )
    {c=0;
        
        if ([self validateNames:[sym1 text]]==1)
        {
           if([self validateNames:[medwhere text]]==1)
           {
              if([self validateDate:[medwhen text]]==1)
              {
                  if([self validateNames:[nameofattorney text]]==1)
                  {
                     if([self validateMobile:[attorneyph text]]==1)
                     {
                        if([self validateNames:[nop text]]==1)
                        {
                          if([self validateNames:[comname text]]==1)
                          {
                              if([self validateMobile:[comph text]])
                              {
                                 if([self validateNames:[autoname text]]==1)
                                 {
                                  if([self validateMobile:[autoph text]]==1)
                                  {
                                   if([self validateNames:[autopolicy text]]==1)
                                   {
                                       if([self validateNames:[helname text]]==1)
                                       {
                                           if([self validateMobile:[helph text]]==1)
                                           {
                                               c=1;
                                               [recorddict setValue:sym1.text forKey:@"symptom1"];
                                               [recorddict setValue:syml1.text forKey:@"symrate1"];
                                               [recorddict setValue:sym2.text forKey:@"symptom2"];
                                               [recorddict setValue:syml2.text forKey:@"symrate2"];
                                               [recorddict setValue:sym3.text forKey:@"symptom3"];
                                               [recorddict setValue:syml3.text forKey:@"symrate3"];
                                               [recorddict setValue:resLabel1.text forKey:@"symduetoacc"];
                                               [recorddict setValue:resLabel2.text forKey:@"accreported"];
                                               [recorddict setValue:resLabel3.text forKey:@"retainedattorney"];
                                               [recorddict setValue:resLabel4.text forKey:@"prevautoorwork"];
                                               [recorddict setValue:segtype.text forKey:@"Typeofaccident"];
                                               [recorddict setValue:medwhere.text forKey:@"MedicalLocation"];
                                                 [recorddict setValue:medwhen.text forKey:@"Medicaltime"];
                                                 [recorddict setValue:nameofattorney.text forKey:@"nameofattorney"];
                                                 [recorddict setValue:attorneyph.text forKey:@"attorneyphone"];
                                                 [recorddict setValue:nop.text forKey:@"NOP"];
                                                 [recorddict setValue:comname.text forKey:@"insurancecom"];
                                                 [recorddict setValue:comph.text forKey:@"insurancepho"];
                                                 [recorddict setValue:autoname.text forKey:@"autoname"];
                                                 [recorddict setValue:autoph.text forKey:@"autoph"];
                                                 [recorddict setValue:autopolicy.text forKey:@"autopolicy"];
                                                 [recorddict setValue:helname.text forKey:@"healthname"];
                                                 [recorddict setValue:helph.text forKey:@"healthphone"];
                                               [recorddict setValue:fromd.text forKey:@"Dateofaccident"];
                                               if([[recorddict objectForKey:@"Typeofaccident"] isEqual:@"Auto"])
                                               {
                                                   [[NSUserDefaults standardUserDefaults]setInteger:1 forKey:@"typeofacc"];
                                               }
                                               else if([[recorddict objectForKey:@"Typeofaccident"] isEqual:@"Work"])
                                               {
                                                   
                                                   [[NSUserDefaults standardUserDefaults]setInteger:2 forKey:@"typeofacc"];
                                               }

                                               if(a==1){
                                                   [recorddict setValue:optwhen.text forKey:@"prevauto"];
                                                  
                                               }
                                               else{
                                                   BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid auto/work accident date."];
                                                   
                                                   //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                                   [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                   [alert show];
                                               }
                                               
                                           }
                                           else{
                                               BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid HealthInsurance Phonenumber."];
                                               
                                               //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                               [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                               [alert show];
                                           }
                                       }
                                       else{
                                           BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid HealthInsurance Name."];
                                           
                                           //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                           [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                           [alert show];
                                       }
                                   }
                                      else
                                      {
                                          BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Auto Insurance Policy Name."];
                                          
                                          //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                          [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                          [alert show];
                                      }
                                  }
                                  else{
                                      BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid AutoInsurance Phone Number."];
                                      
                                      //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                      [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                      [alert show];
                                  }
                                 }
                                 else{
                                     BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Auto Insurance Name."];
                                     
                                     //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                     [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                     [alert show];
                                 }
                              }
                              else{
                                  BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Company Phone Number."];
                                  
                                  //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                  [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                  [alert show];
                              }
                          }
                          else{
                              BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Insurance Company Name."];
                              
                              //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                              [alert setDestructiveButtonWithTitle:@"x" block:nil];
                              [alert show];
                          }
                        }
                        else{
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Person Name."];
                            
                            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                     }
                      else
                      {
                          BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Attorney Phone."];
                          
                          //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                          [alert setDestructiveButtonWithTitle:@"x" block:nil];
                          [alert show];
                      }
                  }
                  else
                  {
                      BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Name Of Attorney."];
                      
                      //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                      [alert setDestructiveButtonWithTitle:@"x" block:nil];
                      [alert show];
                  }
                
              }
               else
               {
                   BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Medical Treatment Date."];
                   
                   //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                   [alert setDestructiveButtonWithTitle:@"x" block:nil];
                   [alert show];
               }
           }
           else{
               BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Medical Treatment Location."];
               
               //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
               [alert setDestructiveButtonWithTitle:@"x" block:nil];
               [alert show];
           }
        }
        else
        {
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Symptom."];
            
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [slider1 release];
    [super dealloc];
}
@end
