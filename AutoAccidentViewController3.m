//
//  AutoAccidentViewController3.m
//  EHR
//
//  Created by DeemSysInc on 08/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "AutoAccidentViewController3.h"
#import "BlockAlertView.h"
#import "BlockBackground.h"
#import "BlockUI.h"

@interface AutoAccidentViewController3 ()

@end

@implementation AutoAccidentViewController3
@synthesize recorddict;
@synthesize  anyonecitedswitch;
@synthesize  anyoneciteswitchlabel;
@synthesize  anyonecitedsegment;
@synthesize  anyonecitedsegmentlabel;
@synthesize  afteraccidenthadsegment;
@synthesize  symptomssegment;
@synthesize  symptomshours;
@synthesize  symptomsdays;
@synthesize  afteraccidentwentsegment;
@synthesize  hospitalname;
@synthesize hospitalcity;
@synthesize hospitalstay;
@synthesize hospitalgoingsegment;
@synthesize hospitalgoingother;
@synthesize treatmentgiven;
@synthesize waswrong;
@synthesize wholabel;
@synthesize pleasecomplelabel;
@synthesize hospitallabel;
@synthesize citylabel;
@synthesize staylabel;
@synthesize hospitalgoinglabel;
@synthesize hospitaltreatmentlabel;
@synthesize waswronglabel;
@synthesize afteraccidentsegmentlabel;
@synthesize symptomsappearedsegmentlabel;
@synthesize afteraccidentwentsegmentlabel;
@synthesize  hospitalgoingsegmentlabel;

int a,b,c,d;
-(BOOL)onlyalphabetvalidate:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[a-z]*)";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
int a,b,c,d;
-(BOOL)onlyalphanumericvalidate:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z0-9]+[a-zA-Z0-9]*)";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(IBAction)back:(id)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
-(IBAction)submit:(id)sender;
{
    recorddict=[[NSMutableDictionary alloc]init];
    [recorddict addEntriesFromDictionary:temp];
        [recorddict setValue:anyoneciteswitchlabel.text forKey:@"anyonesited"];
    [recorddict setValue:afteraccidentwentsegmentlabel.text forKey:@"afteraccidentwent"];
    [recorddict setValue:anyonecitedsegmentlabel.text forKey:@"anyonesitedseglabel"];
    [recorddict setValue:symptomsappearedsegmentlabel.text forKey:@"symptomsappearedsegmentlabel"];
    [recorddict setValue:afteraccidentsegmentlabel.text forKey:@"afteraccidentsegmentlabel"];
   if(symptomssegment.selectedSegmentIndex==1)
   {
       a=[self onlyalphanumericvalidate:[symptomshours text]];
   }
    
    if(symptomssegment.selectedSegmentIndex==2)
    {
        b=[self onlyalphanumericvalidate:[symptomsdays text]];
    }
  
if(hospitalgoingsegment.selectedSegmentIndex==1)
{hospitalgoingsegmentlabel.text=hospitalgoingother.text;
    d=[self onlyalphabetvalidate:[hospitalgoingsegmentlabel text]];
}
else d=1;
    
    if (afteraccidentwentsegment.selectedSegmentIndex==2)
 {
     if(([self onlyalphabetvalidate:[hospitalname text]]==1)&&
        ([self onlyalphabetvalidate:[hospitalcity text]]==1)&&
        ([self onlyalphanumericvalidate:[hospitalstay text]]==1)&&
        ([self onlyalphabetvalidate:[treatmentgiven text]]==1)&&
        ([self onlyalphabetvalidate:[waswrong text]]==1)&&
        (d==1))
     {
         
         [recorddict setValue:hospitalname.text forKey:@"hospitalname"];
         [recorddict setValue:hospitalcity.text forKey:@"hospitalcity"];
         [recorddict setValue:hospitalstay.text forKey:@"hospitalstay"];
         [recorddict setValue:treatmentgiven.text forKey:@"treatmentgiven"];
         [recorddict setValue:waswrong.text forKey:@"waswrong"];
         [recorddict setValue:hospitalgoingsegmentlabel.text forKey:@"hospitalgoing"];
        
            if(a==1)
            {
              
                c=1;
                
             [recorddict setValue:symptomshours.text forKey:@"symptomshours"];
                
            }
            else if(b==1)
             {
                 
                 c=1;
                 
                [recorddict setValue:symptomsdays.text forKey:@"symptomsdays"];
             }
             else if(symptomssegment.selectedSegmentIndex==0)
                 {
                     c=1;
                     
                     
                 }
         
             else{
                 BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid after days or hours data."];
                 [alert setDestructiveButtonWithTitle:@"x" block:nil];
                 [alert show];
                 }
         
         
     }
     
     
     else
     {
         BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Hospital details."];
         [alert setDestructiveButtonWithTitle:@"x" block:nil];
         [alert show];
     }
 

 }
    else{
    if(a==1)
    {c=1;
        
        [recorddict setValue:symptomshours.text forKey:@"symptomshours"];
    }
    else if(b==1)
    {c=1;
        
        [recorddict setValue:symptomsdays.text forKey:@"symptomsdays"];
    }
    else if(symptomssegment.selectedSegmentIndex==0)
    {
        c=1;
        
    }
    
    else{
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid after days or hours data."];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    }
  if(c==1)
  {
      c=0;
      a=0;
      b=0;
      NSLog(@"value at %@",symptomsdays.text);
            NSLog(@"value at %@",symptomshours.text);
      NSLog(@"Final result %@",recorddict);
  }
}



-(IBAction)clearall:(id)sender;
{
    symptomshours.text=@"";
    symptomsdays.text=@"";
    hospitalname.text=@"";
    hospitalcity.text=@"";
    hospitalstay.text=@"";
    hospitalgoingother.text=@"";
    treatmentgiven.text=@"";
    waswrong.text=@"";
    
}
-(void)dismissKeyboard
{
    [symptomsdays resignFirstResponder];
    [symptomshours resignFirstResponder];
    [hospitalcity resignFirstResponder];
    [hospitalgoingother resignFirstResponder];
    [hospitalstay resignFirstResponder];
    [hospitalname resignFirstResponder];
    [treatmentgiven resignFirstResponder];
    [waswrong resignFirstResponder];
    
}
-(IBAction)anyonecitedswichchange:(id)sender;
{
    if (anyonecitedswitch.on)
    {
        anyoneciteswitchlabel.text=@"Yes";
        wholabel.hidden=NO;
        anyonecitedsegment.hidden=NO;
    }
    else
    {
        anyoneciteswitchlabel.text=@"No";
        wholabel.hidden=YES;
        anyonecitedsegment.hidden=YES;
    }
}
-(IBAction)whocitedsegmentchange:(id)sender;
{
    if (anyonecitedsegment.selectedSegmentIndex==0)
    {
        anyonecitedsegmentlabel.text=@"You";
    }
    if (anyonecitedsegment.selectedSegmentIndex==1)
    {
        anyonecitedsegmentlabel.text=@"Other Driver";
    }
}
-(IBAction)afteraccidenthadsegmentchange:(id)sender;
{
    if (afteraccidenthadsegment.selectedSegmentIndex==0)
    {
        afteraccidentsegmentlabel.text=@"Headache";
    }
    if (afteraccidenthadsegment.selectedSegmentIndex==1)
    {
        afteraccidentsegmentlabel.text=@"Dizziness";
    }
    if (afteraccidenthadsegment.selectedSegmentIndex==2)
    {
        afteraccidentsegmentlabel.text=@"Nausea";
    }
    if (afteraccidenthadsegment.selectedSegmentIndex==3)
    {
        afteraccidentsegmentlabel.text=@"Confusion";
    }
    if (afteraccidenthadsegment.selectedSegmentIndex==4)
    {
        afteraccidentsegmentlabel.text=@"DisOrientation";
    }
    if (afteraccidenthadsegment.selectedSegmentIndex==5)
    {
        afteraccidentsegmentlabel.text=@"NeckPain";
    }
    if (afteraccidenthadsegment.selectedSegmentIndex==6)
    {
        afteraccidentsegmentlabel.text=@"Other";
    }
}
-(IBAction)symptomsappearedsegmentchange:(id)sender;
{
    if (symptomssegment.selectedSegmentIndex==0)
    {
        symptomsappearedsegmentlabel.text=@"Immediately";
        symptomshours.hidden=YES;
        symptomsdays.hidden=YES;
    }
    if (symptomssegment.selectedSegmentIndex==1)
    {
        symptomsappearedsegmentlabel.text=@"After Hours";
        symptomshours.hidden=NO;
        symptomshours.text=@"";
        symptomsdays.hidden=YES;
    }
    if (symptomssegment.selectedSegmentIndex==2)
    {
        symptomsappearedsegmentlabel.text=@"After Days";
        symptomshours.hidden=YES;
        symptomsdays.text=@"";
        symptomsdays.hidden=NO;
    }
}
-(IBAction)afteraccidentwentsegmentchange:(id)sender;
{
    if (afteraccidentwentsegment.selectedSegmentIndex==0)
    {
        afteraccidentwentsegmentlabel.text=@"Home";
        pleasecomplelabel.hidden=YES;
        hospitallabel.hidden=YES;
        hospitalname.hidden=YES;
        hospitalcity.hidden=YES;
        citylabel.hidden=YES;
        hospitalstay.hidden=YES;
        staylabel.hidden=YES;
        hospitalgoingsegment.hidden=YES;
        hospitalgoingother.hidden=YES;
        hospitalgoinglabel.hidden=YES;
        treatmentgiven.hidden=YES;
        hospitaltreatmentlabel.hidden=YES;
        waswrong.hidden=YES;
        waswronglabel.hidden=YES;
    }
    if (afteraccidentwentsegment.selectedSegmentIndex==1)
    {
        afteraccidentwentsegmentlabel.text=@"Work";
        pleasecomplelabel.hidden=YES;
        hospitallabel.hidden=YES;
        hospitalname.hidden=YES;
        hospitalcity.hidden=YES;
        citylabel.hidden=YES;
        hospitalstay.hidden=YES;
        staylabel.hidden=YES;
        hospitalgoingsegment.hidden=YES;
        hospitalgoingother.hidden=YES;
        hospitalgoinglabel.hidden=YES;
        treatmentgiven.hidden=YES;
        hospitaltreatmentlabel.hidden=YES;
        waswrong.hidden=YES;
        waswronglabel.hidden=YES;
    }

    if (afteraccidentwentsegment.selectedSegmentIndex==2)
    {
        afteraccidentwentsegmentlabel.text=@"Hospital";
        pleasecomplelabel.hidden=NO;
        hospitallabel.hidden=NO;
        hospitalname.hidden=NO;
        hospitalcity.hidden=NO;
        citylabel.hidden=NO;
        hospitalstay.hidden=NO;
        staylabel.hidden=NO;
        hospitalgoingsegment.hidden=NO;
        hospitalgoingother.hidden=YES;
        hospitalgoinglabel.hidden=NO;
        treatmentgiven.hidden=NO;
        hospitaltreatmentlabel.hidden=NO;
        waswrong.hidden=NO;
        waswronglabel.hidden=NO;
    }

    if (afteraccidentwentsegment.selectedSegmentIndex==3)
    {
        afteraccidentwentsegmentlabel.text=@"Family";
        pleasecomplelabel.hidden=YES;
        hospitallabel.hidden=YES;
        hospitalname.hidden=YES;
        hospitalcity.hidden=YES;
        citylabel.hidden=YES;
        hospitalstay.hidden=YES;
        staylabel.hidden=YES;
        hospitalgoingsegment.hidden=YES;
        hospitalgoingother.hidden=YES;
        hospitalgoinglabel.hidden=YES;
        treatmentgiven.hidden=YES;
        hospitaltreatmentlabel.hidden=YES;
        waswrong.hidden=YES;
        waswronglabel.hidden=YES;
    }

    if (afteraccidentwentsegment.selectedSegmentIndex==4)
    {
        afteraccidentwentsegmentlabel.text=@"Physician";
        pleasecomplelabel.hidden=YES;
        hospitallabel.hidden=YES;
        hospitalname.hidden=YES;
        hospitalcity.hidden=YES;
        citylabel.hidden=YES;
        hospitalstay.hidden=YES;
        staylabel.hidden=YES;
        hospitalgoingsegment.hidden=YES;
        hospitalgoingother.hidden=YES;
        hospitalgoinglabel.hidden=YES;
        treatmentgiven.hidden=YES;
        hospitaltreatmentlabel.hidden=YES;
        waswrong.hidden=YES;
        waswronglabel.hidden=YES;
    }

    if (afteraccidentwentsegment.selectedSegmentIndex==5)
    {
        afteraccidentwentsegmentlabel.text=@"Other";
        pleasecomplelabel.hidden=YES;
        hospitallabel.hidden=YES;
        hospitalname.hidden=YES;
        hospitalcity.hidden=YES;
        citylabel.hidden=YES;
        hospitalstay.hidden=YES;
        staylabel.hidden=YES;
        hospitalgoingsegment.hidden=YES;
        hospitalgoingother.hidden=YES;
        hospitalgoinglabel.hidden=YES;
        treatmentgiven.hidden=YES;
        hospitaltreatmentlabel.hidden=YES;
        waswrong.hidden=YES;
        waswronglabel.hidden=YES;
    }

}
-(IBAction)hospitalgoingsegmentchange:(id)sender;
{
    if (hospitalgoingsegment.selectedSegmentIndex==0)
    {
        hospitalgoingsegmentlabel.text=@"Ambulance";
        hospitalgoingother.hidden=YES;
    }
    if (hospitalgoingsegment.selectedSegmentIndex==1)
    {
        hospitalgoingsegmentlabel.text=@"Other";
        hospitalgoingother.hidden=NO;
        hospitalgoingother.text=@"";
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
    temp=[[NSMutableDictionary alloc]init];
    temp=recorddict;
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
