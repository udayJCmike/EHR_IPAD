//
//  WorkaccidentViewController.m
//  EHR
//
//  Created by DeemsysInc on 10/11/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "WorkaccidentViewController.h"
#import "BlockAlertView.h"



@interface WorkaccidentViewController ()

@end

@implementation WorkaccidentViewController
@synthesize switch1;
@synthesize switch2;
@synthesize switch3;
@synthesize switch4;
@synthesize recorddict;
@synthesize carryanything;
@synthesize jobinjury;
@synthesize liftinorout;
@synthesize pickuporlift;
@synthesize carrything;
@synthesize carrythinglabel;
@synthesize jobinjuryyes;
@synthesize jobinjuryyeslabel;
@synthesize howmuch;
@synthesize howmuchlabel;
@synthesize howoften;
@synthesize howoftenlabel;
@synthesize fromwhere;
@synthesize fromwherelabel;
@synthesize segdoyou;
@synthesize workingatmac;
@synthesize segliftfrom;
@synthesize segtypeoflifting;
@synthesize howoftensegment;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 =@"(?:[A-Za-z]+[A-Za-z]*)";
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validatealphanumeric:(NSString*)mobilenumber{
    NSString *mobileFormat1 =  @"[A-Z0-9a-z.:_,-]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:mobilenumber];
    
}
-(BOOL)validateperiod:(NSString *)zipnumber{
    NSString *zipFormat1 =  @"[A-Za-z0-9]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *zipTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", zipFormat1];
    return [zipTest1 evaluateWithObject:zipnumber];
    
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    recorddict=[[NSMutableDictionary alloc]init];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
	// Do any additional setup after loading the view.
    
}
-(void)dismissKeyboard
{
    [jobclass resignFirstResponder];
    [doyouother resignFirstResponder];
    [carrything resignFirstResponder];
    [howinjuryocc resignFirstResponder];
    [howmuch resignFirstResponder];
    [howoften resignFirstResponder];
    [jobclass resignFirstResponder];
    [jobinjuryyes resignFirstResponder];
    [period resignFirstResponder];
    [sawperson resignFirstResponder];
    [titletext resignFirstResponder];
    [typeother resignFirstResponder];
    [fromwhere resignFirstResponder];
}

- (IBAction) toggleEnabledTextForSwitch1onSomeLabel: (id) sender
{
	if (switch1.on)
    {
        carryanything.text = @"Yes";
        carrything.hidden=NO;
        carrythinglabel.hidden=NO;
	}
        else
        {
             carryanything.text = @"No";
            carrything.hidden=YES;
            carrythinglabel.hidden=YES;
            carrything.text=@"";
       
        }
}
- (IBAction) toggleEnabledTextForSwitch2onSomeLabel: (id) sender
{
	if (switch2.on) {
        
    jobinjury.text = @"Yes";
        jobinjuryyes.hidden=NO;
        jobinjuryyeslabel.hidden=NO;
    }
	else
    {
        
    jobinjury.text = @"No";
        jobinjuryyes.hidden=YES;
        jobinjuryyeslabel.hidden=YES;
        jobinjuryyes.text=@"";

}
}
- (IBAction) toggleEnabledTextForSwitch3onSomeLabel: (id) sender
{
	if (switch3.on) liftinorout.text = @"Yes";
	else liftinorout.text = @"No";
}
- (IBAction) toggleEnabledTextForSwitch4onSomeLabel: (id) sender
{
	if (switch4.on)
    {
        pickuporlift.text = @"Yes";
        howmuch.hidden=NO;
        howoftensegment.hidden=NO;
        fromwhere.hidden=NO;
        howmuchlabel.hidden=NO;
        howoftenlabel.hidden=NO;
        fromwherelabel.hidden=NO;
        howmuch.text=@"";
        fromwhere.text=@"";
        
    }
	else
    {
        pickuporlift.text = @"No";
        howoftensegment.hidden=YES;
        howmuch.hidden=YES;
        fromwhere.hidden=YES;
        howmuchlabel.hidden=YES;
        howoftenlabel.hidden=YES;
        fromwherelabel.hidden=YES;

    }
}
-(IBAction)segselected1:(id)sender{
    if(segdoyou.selectedSegmentIndex==0)
    {  doyouother.hidden=YES;
        doyou.text=@"Sit a desk";
    }
    else if (segdoyou.selectedSegmentIndex==1)
    {
       doyouother.hidden=YES;
        doyou.text=@"Walk";
    }
    else if (segdoyou.selectedSegmentIndex==2)
    {
        doyouother.hidden=YES;
             doyou.text=@"Stand";
    }
    else if (segdoyou.selectedSegmentIndex==3)
    {
        doyouother.hidden=YES;
             doyou.text=@"Stoop";
    }
    else if (segdoyou.selectedSegmentIndex==4)
    {
        doyouother.hidden=YES;
             doyou.text=@"Hold";
    }
    else if (segdoyou.selectedSegmentIndex==5)
    {
        doyouother.hidden=YES;
             doyou.text=@"Carry";
    }
    else if (segdoyou.selectedSegmentIndex==6)
    {
        doyouother.hidden=YES;
               doyou.text=@"Drive";
    }
    else if (segdoyou.selectedSegmentIndex==7)
    {
        doyouother.hidden=YES;
             doyou.text=@"Load";
    }
    else if (segdoyou.selectedSegmentIndex==8)
    {
        doyouother.hidden=NO;
        
        doyou.text=@"";
    }
}
-(IBAction)segselected2:(id)sender{
    if(segtypeoflighting.selectedSegmentIndex==0)
    { typeother.hidden=YES;
                typeoflighting.text=@"Fluorescent";
    }
    else if (segtypeoflighting.selectedSegmentIndex==1)
    {
         typeother.hidden=YES;
        typeoflighting.text=@"Overhead";
    }
    else if (segtypeoflighting.selectedSegmentIndex==2)
    {
         typeother.hidden=YES;
        typeoflighting.text=@"On Machine";
    }
    else if (segtypeoflighting.selectedSegmentIndex==3)
    {
        typeother.hidden=NO;
        typeoflighting.text=typeother.text;
    }
    
}
-(IBAction)segselected3:(id)sender{
if (segliftfrom.selectedSegmentIndex==0)
    {
        liftfrom.text=@"Ground";
    }
   else if (segliftfrom.selectedSegmentIndex==1)
    {
        liftfrom.text=@"Bench";
    }
   else if (segliftfrom.selectedSegmentIndex==2)
   {
       liftfrom.text=@"Platform";
   }
    
}
-(IBAction)segselected4:(id)sender
{
    if(workingatmac.selectedSegmentIndex==0)
    {
      labworkingatmaching.text=@"Sit";
    }
    else if (workingatmac.selectedSegmentIndex==1)
    {
      labworkingatmaching.text=@"Stand";
    }
    else if (workingatmac.selectedSegmentIndex==2)
    {
     labworkingatmaching.text=@"Kneel";
    }
}

-(IBAction)segselected5:(id)sender
{
    if(howoftensegment.selectedSegmentIndex==0)
    {
        howoften.text=@"Seldom";
    }
    else if(howoftensegment.selectedSegmentIndex==1)
    {
        howoften.text=@"Sometimes";
    }
    else if(howoftensegment.selectedSegmentIndex==2)
    {
        howoften.text=@"Often";
    }
    else if(howoftensegment.selectedSegmentIndex==3)
    {
        howoften.text=@"Regularly";
    }
}

-(IBAction)saveandcontinue:(id)sender
{
    recorddict=[[NSMutableDictionary alloc]init];
    a=0;
    b=0;
    d=0;
  if ([carryanything.text  isEqual: @"Yes"])
    {
        a=[self validateNames:[carrything text]];
       
	}
    else
        a=1;
    
    if([jobinjury.text isEqual:@"Yes"])
    {
        b=[self validatealphanumeric:[jobinjuryyes text]];
    }
    else
        b=1;
    if ([pickuporlift.text isEqual:@"Yes"])
    {
        if (([self validateNames:[fromwhere text]])&&
            ([self validatealphanumeric:[howmuch text]]))
        {
            d=1;
        }
        else d=0;
    }
    else
        d=1;
    if (segdoyou.selectedSegmentIndex==8)
    {
        doyou.text=doyouother.text;
        seg1=[self validateNames:[doyouother text]];
    }
    else seg1=1;
    if (segtypeoflighting.selectedSegmentIndex==3)
    {
        
        typeoflighting.text=typeother.text;
        seg2=[self validateNames:[typeoflighting text]] ;
    }
    else
        seg2=1;

    if(([jobclass.text length]!=0)&&
       ([howinjuryocc.text length]!=0)&&
         ([sawperson.text length]!=0)&&
         ([titletext.text length]!=0)&&
         ([period.text length]!=0))
    {
       if([self validateNames:[jobclass text]]==1)
       {
          if([self validateNames:[howinjuryocc text]]==1)
          {
              if([self validateNames:[sawperson text]]==1)
              {
                  if([self validateNames:[titletext text]]==1)
                  {
                     if([self validateperiod:[period text]]==1)
                     {
                         [recorddict setValue:liftinorout.text forKey:@"liftinoroutofmachine"];
                         [recorddict setValue:jobclass.text forKey:@"jobclass"];
                         [recorddict setValue:howinjuryocc.text forKey:@"howinjuryocc"];
                         [recorddict setValue:sawperson.text forKey:@"sawperson"];
                         [recorddict setValue:titletext.text forKey:@"title"];
                         [recorddict setValue:period.text forKey:@"period"];
                         [recorddict setValue:liftfrom.text forKey:@"liftfrom"];
                         [recorddict setValue:labworkingatmaching.text forKey:@"labworkingatmaching"];
                         if(a==1){
                             if([carryanything.text isEqual:@"Yes"]){
                             [recorddict setValue:carryanything.text forKey:@"carryanything"];
                                 [recorddict setValue:carrything.text forKey:@"carrything"];}
                             else
                                 [recorddict setValue:carryanything.text forKey:@"carryanything"];
                             if(b==1)
                             {
                                 if([jobinjury.text isEqual:@"Yes"]){
                                 [recorddict setValue:jobinjury.text forKey:@"jobinjury"];
                                 [recorddict setValue:jobinjuryyes.text forKey:@"jobinjuryyesdetail"];
                                 }
                                 else
                                 {
                                      [recorddict setValue:jobinjury.text forKey:@"jobinjury"];
                                 }
                                 if(d==1)
                                 {
                                     if([pickuporlift.text isEqual:@"Yes"])
                                     {
                                     [recorddict setValue:pickuporlift.text forKey:@"pickuporlift"];
                                     [recorddict setValue:fromwhere.text forKey:@"fromwhere"];
                                         [recorddict setValue:howmuch.text forKey:@"howmuch"];
                                         [recorddict setValue:howoften.text forKey:@"howoften"];
                                     }
                                     else{
                                        [recorddict setValue:pickuporlift.text forKey:@"pickuporlift"];
                                     }
                                     if(seg1==1){
                                         [recorddict setValue:doyou.text forKey:@"doyou"];
                                         if(seg2==1)
                                         {c =1;
                                             [recorddict setValue:typeoflighting.text forKey:@"typeoflighting"];
                                         }
                                         else{
                                             BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid type of lighting data."];
                                             
                                             //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                             [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                             [alert show];

                                         }
                                         
                                     }
                                     else{
                                        
                                             BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid do you field."];
                                             
                                             //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                             [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                             [alert show];
                                         
                                     }
                    
                                 }
                                 else{
                                     BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Pickup or lift data."];
                                     
                                     //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                     [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                     [alert show];
  
                                 }
                                 }
                             else
                             {
                                 BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid time loss or absenteesim caused detail."];
                                 
                                 //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                                 [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                 [alert show];
                             }
                             
                         }
                         
                             
                         
                         else{
                             BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid carry material name."];
                             
                             //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                             [alert setDestructiveButtonWithTitle:@"x" block:nil];
                             [alert show];
                         }
                     }
                     else{
                         BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid period."];
                         
                         //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                         [alert setDestructiveButtonWithTitle:@"x" block:nil];
                         [alert show];
                     }
                  }
                  else{
                      BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid title name."];
                      
                      //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                      [alert setDestructiveButtonWithTitle:@"x" block:nil];
                      [alert show];
                  }
              }
              else
              {
                  BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid saw person name."];
                  
                  //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                  [alert setDestructiveButtonWithTitle:@"x" block:nil];
                  [alert show];
              }
          }
          else{
              BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid injury occured reason."];
              
              //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
              [alert setDestructiveButtonWithTitle:@"x" block:nil];
              [alert show];
          }
       }
       else{
           BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Job Classification."];
           
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
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"Workaccident1"])
    {
        if ((c==1)&&(a==1)&&(b==1)&&(d==1)&&(seg2==1)&&(seg1==1))
        {
            c=0;
            a=0;
            b=0;
            d=0;
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
    
    
    if ([segue.identifier isEqualToString:@"Workaccident1"])
    {
        c=0;
        a=0;
        b=0;
        d=0;
   Workaccident2ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in Workaccident first %@",recorddict);
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
