//
//  AutoAccidentViewController2.m
//  EHR
//
//  Created by DeemSysInc on 08/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "AutoAccidentViewController2.h"
#import "AutoAccidentViewController3.h"
#import "BlockAlertView.h"
#import "BlockBackground.h"
#import "BlockUI.h"

@interface AutoAccidentViewController2 ()

@end

@implementation AutoAccidentViewController2
@synthesize shoulderseatbeltlabel;
@synthesize airbagdeployedlabel;
@synthesize wereyoulabel;
@synthesize bodypositionlabel;
@synthesize bodypositionotherlabel;
@synthesize headpositionlabel;
@synthesize headpositionotherlabel;
@synthesize handsonwheellabel;
@synthesize awareofcrashlabel;
@synthesize braceyourselflabel;
@synthesize braceyourselfoptionlabel;
@synthesize furtherinjurylabel;
@synthesize injuryexplainlabel;
@synthesize patientbodylabel;
@synthesize patientbodyotherlabel;
@synthesize wearingglasslabel;
@synthesize glassesstilllabel;
@synthesize unconsiouslabel;
@synthesize unconsiousforlabel;
@synthesize propertydamagelabel;
@synthesize damagecarlabel;
@synthesize patientbodystrikelabel;
@synthesize myheadhitlabel;
@synthesize rLhiphitlabel;
@synthesize chesthitlabel;
@synthesize rlleghitlabel;
@synthesize rlshoulderhitlabel;
@synthesize rlkneehitlabel;
@synthesize rlarmhitlabel;
@synthesize otherparthitlabel;
@synthesize shoulderseatbeltsegment;
@synthesize wereyousegment;
@synthesize bodypositionsegment;
@synthesize headpositionsegment;
@synthesize handsonwheelsegment;
@synthesize awareofcrashsegment;
@synthesize braceoptionsegment;
@synthesize patientbodysegment;
@synthesize damagecarsegment;
@synthesize airbagdeployedswitch;
@synthesize braceyourselfswitch;
@synthesize furtherinjuryswitch;
@synthesize wearingglassswitch;
@synthesize glassesstillswitch;
@synthesize unconsiousswitch;
@synthesize patientbodystrikeswitch;
@synthesize recorddict;


-(IBAction)back:(id)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

-(IBAction)shoulderseatbeltsegmentchange:(id)sender
{
    if (shoulderseatbeltsegment.selectedSegmentIndex==0)
    {
        shoulderseatbeltlabel.text=@"Worn";
    }
    if (shoulderseatbeltsegment.selectedSegmentIndex==1)
    {
        shoulderseatbeltlabel.text=@"Not Worn";
    }
    if (shoulderseatbeltsegment.selectedSegmentIndex==2)
    {
        shoulderseatbeltlabel.text=@"Dont Know";
    }
}
-(IBAction)airbagdeployedswitchchange:(id)sender
{
    if (airbagdeployedswitch.on)
    {
        airbagdeployedlabel.text=@"Yes";
        wereyou2.hidden=NO;
        wereyousegment.hidden=NO;
    }
    else
    {
        airbagdeployedlabel.text=@"No";
        wereyou2.hidden=YES;
        wereyousegment.hidden=YES;
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
-(IBAction)wereyousegmentchange:(id)sender
{
    if(wereyousegment.selectedSegmentIndex==0)
    {
        wereyoulabel.text=@"Struck";
    }
    else
    {
        wereyoulabel.text=@"Not Struck";
    }
}
-(IBAction)bodypositionsegmentchange:(id)sender
{
    if (bodypositionsegment.selectedSegmentIndex==0)
    {
        bodypositionlabel.text=@"Good";
        bodypositionotherlabel.hidden=YES;
    }
    if (bodypositionsegment.selectedSegmentIndex==1)
    {
        bodypositionlabel.text=@"Forward";
        bodypositionotherlabel.hidden=YES;
    }
    if (bodypositionsegment.selectedSegmentIndex==2)
    {
        bodypositionlabel.text=@"Leaning";
        bodypositionotherlabel.hidden=YES;
    }
    if (bodypositionsegment.selectedSegmentIndex==3)
    {
        bodypositionlabel.text=@"Unknown";
        bodypositionotherlabel.hidden=YES;
    }
    if (bodypositionsegment.selectedSegmentIndex==4)
    {
        bodypositionotherlabel.hidden=NO;
    }

}
-(IBAction)headpositionsegmentchange:(id)sender
{
    if (headpositionsegment.selectedSegmentIndex==0)
    {
        headpositionlabel.text=@"Forward";
         headpositionotherlabel.hidden=YES;
    }
    if (headpositionsegment.selectedSegmentIndex==1)
    {
        headpositionlabel.text=@"Left";
         headpositionotherlabel.hidden=YES;
    }
    if (headpositionsegment.selectedSegmentIndex==2)
    {
        headpositionlabel.text=@"Right";
         headpositionotherlabel.hidden=YES;
    }
    if (headpositionsegment.selectedSegmentIndex==3)
    {
        headpositionlabel.text=@"Up";
         headpositionotherlabel.hidden=YES;
    }
    if (headpositionsegment.selectedSegmentIndex==4)
    {
        headpositionlabel.text=@"Down";
         headpositionotherlabel.hidden=YES;
    }
    if (headpositionsegment.selectedSegmentIndex==5)
    {
        headpositionlabel.text=@"UnKnown";
         headpositionotherlabel.hidden=YES;
    }
    if (headpositionsegment.selectedSegmentIndex==6)
    {
        headpositionotherlabel.hidden=NO;
    }
}
-(IBAction)handsonwheelsegmentchange:(id)sender
{
    if (handsonwheelsegment.selectedSegmentIndex==0)
    {
        handsonwheellabel.text=@"One";
    }
    if (handsonwheelsegment.selectedSegmentIndex==1)
    {
        handsonwheellabel.text=@"Two";
    }
    
}
-(IBAction)awareofcrashsegmentchange:(id)sender
{
    if (awareofcrashsegment.selectedSegmentIndex==0)
    {
        awareofcrashlabel.text=@"Aware";
    }
    if (awareofcrashsegment.selectedSegmentIndex==1)
    {
        awareofcrashlabel.text=@"Surprised";
    }
}
-(IBAction)braceyourselfswitchchange:(id)sender
{
    if (braceyourselfswitch.on)
    {
        braceyourselflabel.text=@"Yes";
        braceoptionsegment.hidden=NO;
    }
    else
    {
        braceyourselflabel.text=@"No";
        braceoptionsegment.hidden=YES;
    }
}
-(IBAction)braceoptionsegmentchange:(id)sender
{
    if (braceoptionsegment.selectedSegmentIndex==0)
    {
        braceyourselfoptionlabel.text=@"Braced with Arms";
    }
    if (braceoptionsegment.selectedSegmentIndex==1)
    {
        braceyourselfoptionlabel.text=@"Braced with Legs";
    }
}
-(IBAction)furtherinjuryswitchchange:(id)sender
{
    if (furtherinjuryswitch.on)
    {
        furtherinjurylabel.text=@"Yes";
        pleaseexplain2.hidden=NO;
        injuryexplainlabel.hidden=NO;
    }
    else
    {
        furtherinjurylabel.text=@"No";
        pleaseexplain2.hidden=YES;
        injuryexplainlabel.hidden=YES;
    }
}
-(IBAction)patientbodysegmentchange:(id)sender
{
    if (patientbodysegment.selectedSegmentIndex==0)
    {
        patientbodylabel.text=@"Jolted";
        patientbodyotherlabel.hidden=YES;
    }
    if (patientbodysegment.selectedSegmentIndex==1)
    {
        patientbodylabel.text=@"Thrown";
        patientbodyotherlabel.hidden=YES;
    }
    if (patientbodysegment.selectedSegmentIndex==2)
    {
        patientbodylabel.text=@"Stunned";
        patientbodyotherlabel.hidden=YES;
    }
    if (patientbodysegment.selectedSegmentIndex==3)
    {
        patientbodylabel.text=@"Dazzed";
        patientbodyotherlabel.hidden=YES;
    }
    if (patientbodysegment.selectedSegmentIndex==4)
    {
        patientbodylabel.text=@"Whipped";
        patientbodyotherlabel.hidden=YES;
    }
    if (patientbodysegment.selectedSegmentIndex==5)
    {
        patientbodylabel.text=@"Slammed";
        patientbodyotherlabel.hidden=YES;
    }
    if (patientbodysegment.selectedSegmentIndex==6)
    {
        patientbodyotherlabel.hidden=NO;
    }
}
-(IBAction)wearingglassswitchchange:(id)sender
{
    if (wearingglassswitch.on)
    {
     wearingglasslabel.text=@"Yes";
    }
    else
    {
        wearingglasslabel.text=@"No";
    }
    
}
-(IBAction)glassesstillswitchchange:(id)sender
{
    if (glassesstillswitch.on)
    {
        glassesstilllabel.text=@"Yes";
    }
    else
    {
        glassesstilllabel.text=@"No";
    }
}
-(IBAction)unconsiousswitchchange:(id)sender
{
    if (unconsiousswitch.on)
    {
        unconsiouslabel.text=@"Yes";
        unconsious2.hidden=NO;
        unconsiousforlabel.hidden=NO;
    }
    else
    {
        unconsiouslabel.text=@"No";
        unconsious2.hidden=YES;
        unconsiousforlabel.hidden=YES;
    }
}
-(IBAction)damagecarsegmentchange:(id)sender
{
    if (damagecarsegment.selectedSegmentIndex==0)
    {
        damagecarlabel.text=@"Minimal";
    }
    if (damagecarsegment.selectedSegmentIndex==1)
    {
        damagecarlabel.text=@"Moderate";
    }
    if (damagecarsegment.selectedSegmentIndex==2)
    {
        damagecarlabel.text=@"Major";
    }
    if (damagecarsegment.selectedSegmentIndex==3)
    {
        damagecarlabel.text=@"Totalled";
    }


}
-(IBAction)patientbodystrikeswitchchange:(id)sender
{
    if (patientbodystrikeswitch.on)
    {
        patientbodystrikelabel.text=@"Yes";
        pleasecomplete.hidden=NO;
        label1.hidden=NO;
        label2.hidden=NO;
        label3.hidden=NO;
        label4.hidden=NO;
        label5.hidden=NO;
        label6.hidden=NO;
        label7.hidden=NO;
        label8.hidden=NO;
        myheadhitlabel.hidden=NO;
        rLhiphitlabel.hidden=NO;
        chesthitlabel.hidden=NO;
        rlleghitlabel.hidden=NO;
        rlshoulderhitlabel.hidden=NO;
        rlkneehitlabel.hidden=NO;
        rlarmhitlabel.hidden=NO;
        otherparthitlabel.hidden=NO;
    }
    else
    {
    patientbodystrikelabel.text=@"No";
        pleasecomplete.hidden=YES;
        label1.hidden=YES;
        label2.hidden=YES;
        label3.hidden=YES;
        label4.hidden=YES;
        label5.hidden=YES;
        label6.hidden=YES;
        label7.hidden=YES;
        label8.hidden=YES;
        myheadhitlabel.hidden=YES;
        rLhiphitlabel.hidden=YES;
        chesthitlabel.hidden=YES;
        rlleghitlabel.hidden=YES;
        rlshoulderhitlabel.hidden=YES;
        rlkneehitlabel.hidden=YES;
        rlarmhitlabel.hidden=YES;
        otherparthitlabel.hidden=YES;
    }
}
-(BOOL)numbervalidate:(NSString *)zipnumber{
    NSString *zipFormat1 =  @"[0-9]{1,3}?";
    
    //  [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *zipTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", zipFormat1];
    return [zipTest1 evaluateWithObject:zipnumber];
    
}
-(BOOL)onlyalphabetvalidate:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[a-z]*)";
    
    // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(IBAction)saveandcontinue:(id)sender
{
    recorddict=[[NSMutableDictionary alloc]init];
    [recorddict addEntriesFromDictionary:temp];
    if (bodypositionsegment.selectedSegmentIndex==4) {
         bodypositionlabel.text=bodypositionotherlabel.text;
        a=[self onlyalphabetvalidate:[bodypositionlabel text]];
    }
    else{
        a=1;
    }
        
    if (headpositionsegment.selectedSegmentIndex==6) {
         headpositionlabel.text=headpositionotherlabel.text;
        b=[self onlyalphabetvalidate:[headpositionlabel text]];
    }
    else{
        b=1;
    }
    if (patientbodysegment.selectedSegmentIndex==6) {
        patientbodylabel.text=patientbodyotherlabel.text;
        d =[self onlyalphabetvalidate:[patientbodylabel text]];
    }
    else{
        d =1;
    }
   
    
    
    if([propertydamagelabel.text length]!=0)
    {
        c=0;
        if ([self numbervalidate:[propertydamagelabel text]]==1)
        {
            [recorddict setValue:shoulderseatbeltlabel.text forKey:@"shoulderseatbeltlabel"];
            
        [recorddict setValue:airbagdeployedlabel.text forKey:@"airbagdeplyedlabel"];
            [recorddict setValue:airbagdeployedlabel.text forKey:@"airbagdeployed"];
            [recorddict setValue:braceyourselflabel.text forKey:@"braceyourself"];
            [recorddict setValue:furtherinjurylabel.text forKey:@"furtherinjury"];
        
            
                                            if([airbagdeployedlabel.text isEqual:@"Yes"]){
                            [recorddict setValue:wereyoulabel.text forKey:@"wereyoulabel"];
                                            }
                                            if([braceyourselflabel.text isEqual:@"Yes"])
                                            {
                                                 [recorddict setValue:braceyourselfoptionlabel.text forKey:@"braceyourselflabel"];
                                            }
                                                                 // [recorddict setValue:bodypositionlabel.text forKey:@"bodypositionlabel"];
                           // [recorddict setValue:headpositionlabel.text forKey:@"headpositionlabel"];
                            [recorddict setValue:handsonwheellabel.text forKey:@"handsonwheellabel"];
                            [recorddict setValue:awareofcrashlabel.text forKey:@"awareofcrashlabel"];
                           
                        [recorddict setValue:braceyourselfoptionlabel.text forKey:@"braceyourselfoptionlabel"];
                           
                            [recorddict setValue:injuryexplainlabel.text forKey:@"injuryexplainlabel"];
                            //[recorddict setValue:patientbodylabel.text forKey:@"patientbodylabel"];
                            [recorddict setValue:wearingglasslabel.text forKey:@"wearingglasslabel"];
                            [recorddict setValue:glassesstilllabel.text forKey:@"glassesstilllabel"];
                            
                            [recorddict setValue:propertydamagelabel.text forKey:@"propertydamagelabel"];
                            [recorddict setValue:damagecarlabel.text forKey:@"damagecarlabel"];
                            [recorddict setValue:patientbodystrikelabel.text forKey:@"patientbodystrikelabel"];
            
                                            
                                         if(a==1)
                                            {
                             [recorddict setValue:bodypositionlabel.text forKey:@"bodypositionlabel"];
                                                if(b==1)
                                                {
                                                  [recorddict setValue:headpositionlabel.text forKey:@"headpositionlabel"];
                                                    if(d==1)
                                                    {
                                                      [recorddict setValue:patientbodylabel.text forKey:@"patientbodylabel"];
                                                        if(([unconsiouslabel.text isEqual:@"Yes"])&&([self numbervalidate:[unconsiousforlabel text]]==1))
                                                        {
                                                            [recorddict setValue:unconsiouslabel.text forKey:@"unconsiouslabel"];
                                                            [recorddict setValue:unconsiousforlabel.text forKey:@"unconsiousforlabel"];
                                                            if([patientbodystrikelabel.text isEqual:@"Yes"])
                                                            {
                                                                
                                                     
                                                            if(([self onlyalphabetvalidate:[myheadhitlabel text]]==1)&&
                                                               ([self onlyalphabetvalidate:[rlarmhitlabel text]]==1)&&
                                                                ([self onlyalphabetvalidate:[rLhiphitlabel text]]==1)&&
                                                                ([self onlyalphabetvalidate:[rlshoulderhitlabel text]]==1)&&
                                                                ([self onlyalphabetvalidate:[rlkneehitlabel text]]==1)&&
                                                                ([self onlyalphabetvalidate:[chesthitlabel text]]==1)&&
                                                                ([self onlyalphabetvalidate:[otherparthitlabel text]]==1)&&
                                                                ([self onlyalphabetvalidate:[rlleghitlabel text]]==1))
                                                            {
                                                                [recorddict setValue:myheadhitlabel.text forKey:@"myheadhitlabel"];
                                                                [recorddict setValue:rLhiphitlabel.text forKey:@"rlhiphitlabel"];
                                                                [recorddict setValue:chesthitlabel.text forKey:@"chesthitlabel"];
                                                                [recorddict setValue:rlleghitlabel.text forKey:@"rlleghitlabel"];
                                                                [recorddict setValue:rlshoulderhitlabel.text forKey:@"rlshoulderhitlabel"];
                                                                [recorddict setValue:rlkneehitlabel.text forKey:@"rlkneehitlabel"];
                                                                [recorddict setValue:rlarmhitlabel.text forKey:@"rlarmhitlabel"];
                                                                [recorddict setValue:otherparthitlabel.text forKey:@"otherparthitlabel"];
                                                                if(([furtherinjurylabel.text isEqual:@"Yes"])&&
                                                                   ([self onlyalphabetvalidate:injuryexplainlabel.text]))
                                                                {
                                                                    [recorddict setValue:injuryexplainlabel.text forKey:@"furtherinjuryfor"];
                                                                    c=1;

                                                                }
                                                                else if ([furtherinjurylabel.text isEqual:@"No"])
                                                                {
                                                                    c=1;
  
                                                                }
                                                                else{
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid further injury explain data."];
                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                    
                                                                }
                                                                
                                                            }
                                                                else
                                                                {
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Patient Body Strike Data"];
                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
 
                                                                }
                                                            }
                                                            else{
                                                                if(([furtherinjurylabel.text isEqual:@"Yes"])&&
                                                                   ([self onlyalphabetvalidate:injuryexplainlabel.text]))
                                                                {
                                                                    [recorddict setValue:injuryexplainlabel.text forKey:@"furtherinjuryfor"];
                                                                    c=1;
                                                                    
                                                                }
                                                                else if ([furtherinjurylabel.text isEqual:@"No"])
                                                                {
                                                                    c=1;
                                                                    
                                                                }
                                                                else{
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid further injury explain data."];
                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                    
                                                                }

                                                                
                                                            }
                                                            
                                                        }
                                                        else if([unconsiouslabel.text isEqual:@"No"])
                                                        {
                                                            [recorddict setValue:unconsiouslabel.text forKey:@"unconsiouslabel"];
                                                            if([patientbodystrikelabel.text isEqual:@"Yes"])
                                                            {
                                                                
                                                                
                                                                if(([self onlyalphabetvalidate:[myheadhitlabel text]]==1)&&
                                                                   ([self onlyalphabetvalidate:[rlarmhitlabel text]]==1)&&
                                                                   ([self onlyalphabetvalidate:[rLhiphitlabel text]]==1)&&
                                                                   ([self onlyalphabetvalidate:[rlshoulderhitlabel text]]==1)&&
                                                                   ([self onlyalphabetvalidate:[rlkneehitlabel text]]==1)&&
                                                                   ([self onlyalphabetvalidate:[chesthitlabel text]]==1)&&
                                                                   ([self onlyalphabetvalidate:[otherparthitlabel text]]==1)&&
                                                                   ([self onlyalphabetvalidate:[rlleghitlabel text]]==1))
                                                                {
                                                                    [recorddict setValue:myheadhitlabel.text forKey:@"myheadhitlabel"];
                                                                    [recorddict setValue:rLhiphitlabel.text forKey:@"rlhiphitlabel"];
                                                                    [recorddict setValue:chesthitlabel.text forKey:@"chesthitlabel"];
                                                                    [recorddict setValue:rlleghitlabel.text forKey:@"rlleghitlabel"];
                                                                    [recorddict setValue:rlshoulderhitlabel.text forKey:@"rlshoulderhitlabel"];
                                                                    [recorddict setValue:rlkneehitlabel.text forKey:@"rlkneehitlabel"];
                                                                    [recorddict setValue:rlarmhitlabel.text forKey:@"rlarmhitlabel"];
                                                                    [recorddict setValue:otherparthitlabel.text forKey:@"otherparthitlabel"];
                                                                    if(([furtherinjurylabel.text isEqual:@"Yes"])&&
                                                                       ([self onlyalphabetvalidate:injuryexplainlabel.text]))
                                                                    {
                                                                        [recorddict setValue:injuryexplainlabel.text forKey:@"furtherinjuryfor"];
                                                                        c=1;

                                                                    }
                                                                    else if ([furtherinjurylabel.text isEqual:@"No"])
                                                                    {
                                                                        c=1;
  
                                                                    }
                                                                    else{
                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid further injury explain data."];
                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                        [alert show];
                                                                        
                                                                    }

                                                                }
                                                                else
                                                                {
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Patient Body Strike Data."];
                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                    
                                                                }
                                                            }

                                                        }
                                                        else{
                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid UnconsiousFor Data."];
                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                            [alert show];
                                                        }

                                                    }
                                                    else{
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Patient Body Data."];
                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                    }
                                                }
                                                else
                                                {
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Head Position Data."];
                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                }
                                            }
                                            else{
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Body Position Data."];
                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                            }
                                            
                                        }
        
    
        else
        {
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter Valid Damage Value."];
            
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
    bodypositionotherlabel.text=@"";
    headpositionotherlabel.text=@"";
    injuryexplainlabel.text=@"";
    unconsiousforlabel.text=@"";
    propertydamagelabel.text=@"";
    myheadhitlabel.text=@"";
    rLhiphitlabel.text=@"";
    chesthitlabel.text=@"";
    rlleghitlabel.text=@"";
    rlshoulderhitlabel.text=@"";
    rlkneehitlabel.text=@"";
    rlarmhitlabel.text=@"";
    otherparthitlabel.text=@"";
    

    
}
-(void)dismissKeyboard
{
    [bodypositionotherlabel resignFirstResponder];
    [headpositionotherlabel resignFirstResponder];
    [injuryexplainlabel resignFirstResponder];
    [unconsiousforlabel resignFirstResponder];
    [propertydamagelabel resignFirstResponder];
    [myheadhitlabel resignFirstResponder];
    [rlarmhitlabel resignFirstResponder];
    [rLhiphitlabel resignFirstResponder];
    [chesthitlabel resignFirstResponder];
    [rlleghitlabel resignFirstResponder];
    [rlshoulderhitlabel resignFirstResponder];
    [rlkneehitlabel resignFirstResponder];
    [otherparthitlabel resignFirstResponder];
    
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
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"autoacc5"])
    {
        if ((c==1)&&(b==1)&&(a==1)&&(d==1))
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
    
    if ([segue.identifier isEqualToString:@"autoacc5"])
    {
        
        AutoAccidentViewController3 *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in autoaccident second page %@",recorddict);
    }
    
    
}


@end
