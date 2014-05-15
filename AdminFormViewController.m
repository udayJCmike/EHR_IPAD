//
//  AdminFormViewController.m
//  Admin Form
//
//  Created by deemsys on 3/1/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "AdminFormViewController.h"

@interface AdminFormViewController ()

@end

@implementation AdminFormViewController
@synthesize recorddict;
@synthesize check1;
@synthesize check2;
@synthesize check3;
@synthesize check4;
@synthesize check5;
@synthesize check6;
@synthesize check7;
@synthesize check8;
@synthesize check9;
@synthesize check10;
@synthesize check11;
@synthesize check12;
@synthesize toaddress;
@synthesize tofax;
int suc;
NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20,*texty21,*texty22,*texty23,*texty24,*texty27,*texty28,*texty29,*texty30,*texty31,*texty32,*texty33,*texty34,*texty35,*texty36,*texty37,*texty38,*texty39,*texty40,*texty41,*texty42,*texty43,*texty44,*texty45,*texty46,*texty47,*text32other;

- (void)viewDidLoad
{
    [super viewDidLoad];
    texty27=@"";
    texty28=@"";
    texty29=@"";
    texty30=@"";
    texty31=@"";
    texty32=@"";
    texty33=@"";
    texty34=@"";
    texty35=@"";
    texty36=@"";
    texty37=@"";
    texty38=@"";

    other.hidden=YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)dismissKeyboard {
    [other resignFirstResponder];
    [clinicrepsign resignFirstResponder];
}
- (void)dealloc {
     
    [toaddress release];
    [tofax release];

    [super dealloc];
}
- (IBAction)checkchange:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    if(check6.selected){
        other.hidden=NO;
        texty32=[other text];
    }
    else{
        other.hidden=YES;
        texty32=@"";
        
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
-(BOOL)validateString:(NSString *)user

{
    NSString *userFormat1 =@"[A-Z0-9a-z._/-]+";
    // NSString *userFormat1 =@"[0-5]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{1,2}+[/]+[0-9]{1,2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateFax:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{3}+[-]+[0-9]{3}+[-]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)save:(id)sender {
    texty1=[other.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty2=[clinicrepsign.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty3=[toaddress.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty4=[tofax.text stringByReplacingOccurrencesOfString:@" " withString:@""];

    
        if(check1.selected){
            texty27=@"The At-Fault Insurer has already paid the attorney and/or patient full settlement and has failed to comply with the Assignment.";
        }
        else{
            texty27=@"";
        }
        if(check2.selected){
            texty28=@"The At-Fault Insurer or The Med Pay Insurer has stated orally or in writing to us that it will not comply with the Assignment.";
        }
        else{
            texty28=@"";
        }
        if(check3.selected){
            texty29=@"The Med Pay Insurer has already paid benefits to the patient and/or the attorney.";
        }
        else{
            texty29=@"";
        }
        if(check4.selected){
            texty30=@"Our patient filed bankruptcy.  In addition to the document below, we are faxing every letter or document, which references the bankruptcy filing.";
        }
        else{
            texty30=@"";
        }
        if(check5.selected){
            texty31=@"If treatment is completed in addition to the document below we attach a copy of our itemized charges and a copy of the patient intake information form.";
        }
        else{
            texty31=@"";
        }
        if(check6.selected){
            other.hidden=NO;
            
            texty32=@"Other";
            text32other=[other text];
        }
        else{
            texty32=@"";
            text32other=@"";
        }
        
        if(check7.selected){
            texty33=@"Please send the appropriate Demand Letter and copy to us.  The cost will be $181.50 plus postage and copy charges at .10/page.";
        }
        else{
            texty33=@"";
        }
        if(check8.selected){
            texty34=@"Copy of Med Pay and At Fault Form Cover Letter";
        }
        else{
            texty34=@"";
        }
        if(check9.selected){
            texty35=@"Copy of Form Cover Letter sent to the Attorney";
        }
        else{
            texty35=@"";
        }
        if(check10.selected){
            texty36=@"Copy of Assignment";
        }
        else{
            texty36=@"";
        }
        if(check11.selected){
            texty37=@"Front and back of Certified Mail: “Green Card”";
        }
        else{
            texty37=@"";
        }
        if(check12.selected){
            texty38=@"Any correspondence from the defaulting Adjuster or Defaulting Attorney";
        }
        else{
            texty38=@"";
        }
    if(([clinicrepsign.text length]!=0)&&([toaddress.text length]!=0)&&([tofax.text length]!=0))
    {
    if([other.text length]==0||([self validateString:texty1]==1))
    {
        if(([self validateString:texty2]==1))
        {
            if ([self validateString:texty3])
            {
                if ([self validateFax:texty4])
                {
                    suc=1;
                    
                    recorddict=[[NSMutableDictionary alloc]init];
                    [recorddict setObject:other.text forKey:@"requestdemandother"];
                    [recorddict setObject:clinicrepsign.text forKey:@"requestdemandclinicsignature"];
                    
                    [recorddict setObject:texty27 forKey:@"requestdemandcheck1"];
                    [recorddict setObject:texty28 forKey:@"requestdemandcheck2"];
                    [recorddict setObject:texty29 forKey:@"requestdemandcheck3"];
                    [recorddict setObject:texty30 forKey:@"requestdemandcheck4"];
                    [recorddict setObject:texty31 forKey:@"requestdemandcheck5"];
                    [recorddict setObject:texty32 forKey:@"requestdemandcheck6"];
                    [recorddict setObject:text32other forKey:@"requestdemandcheck6other"];
                    [recorddict setObject:texty33 forKey:@"requestdemandcheck7"];
                    [recorddict setObject:texty34 forKey:@"requestdemandcheck8"];
                    [recorddict setObject:texty35 forKey:@"requestdemandcheck9"];
                    [recorddict setObject:texty36 forKey:@"requestdemandcheck10"];
                    [recorddict setObject:texty37 forKey:@"requestdemandcheck11"];
                    [recorddict setObject:texty38 forKey:@"requestdemandcheck12"];
                    NSLog(@"Record dict in request demand form::%@",recorddict);
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Success."];
                    
                    
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                    
                }
                else
                {
                    suc=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid fax number."];
                    
                    
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
            }
            else
            {
                suc=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid to address."];
                
                
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
            

        }
        else
        {
            suc=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Clicnic Representative Signature."];
            
            
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }else
    {
        suc=0;
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Ohter Field Value."];
        
        
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    }else
    {
        suc=0;
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter All Required Fields."];
        
        
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
}
@end
