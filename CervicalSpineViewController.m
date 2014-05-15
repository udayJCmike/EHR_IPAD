//
//  CervicalSpineViewController.m
//  physicalexam
//
//  Created by deemsys on 2/27/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "CervicalSpineViewController.h"
#import "CervicalSpineViewController1.h"

@interface CervicalSpineViewController ()

@end

@implementation CervicalSpineViewController
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
@synthesize check13;
@synthesize check14;
@synthesize check15;
@synthesize check16;
@synthesize check17;
@synthesize check18;
@synthesize check19;
@synthesize check20;
@synthesize check21;
@synthesize check22;
@synthesize check23;
@synthesize check24;
@synthesize check25;
@synthesize check26;

int suc;

NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20,*texty21,*texty22,*texty23,*texty24,*texty27,*texty28,*texty29,*texty30,*texty31,*texty32,*texty33,*texty34,*texty35,*texty36,*texty37,*texty38,*texty39,*texty40,*texty41,*texty42,*texty43,*texty44,*texty45,*texty46,*texty47,*texty48,*texty49,*texty50,*texty51,*texty52;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(BOOL)validateString:(NSString *)user

{
    NSString *userFormat1 =@"[A-Z0-9a-z._/-]+";
    // NSString *userFormat1 =@"[0-5]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
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
    NSString *countryFormat1 = @"[0-9]{1,2}+[/]+[0-9]{1,2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumbers:(NSString*)number
{
    NSString *mobileFormat1 =  @"[0-9_-]{1,5}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:number];
    
}
-(void)dismissKeyboard {
    [_1 resignFirstResponder];
     [_2 resignFirstResponder];
     [_3 resignFirstResponder];
     [_4 resignFirstResponder];
     [_5 resignFirstResponder];
     [_6 resignFirstResponder];
     [_7 resignFirstResponder];
     [_8 resignFirstResponder];
     [_9 resignFirstResponder];
     [_10 resignFirstResponder];
     [_11 resignFirstResponder];
     [_12 resignFirstResponder];
     [_13 resignFirstResponder];
     [_14 resignFirstResponder];
     [_15 resignFirstResponder];
     [_16 resignFirstResponder];
     [_17 resignFirstResponder];
     [_18 resignFirstResponder];
     [_19 resignFirstResponder];
     [_20 resignFirstResponder];
     [_21 resignFirstResponder];
     [_22 resignFirstResponder];
     [_23 resignFirstResponder];
     [_24 resignFirstResponder];
    
    
}
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
    texty39=@"";
    texty40=@"";
    texty41=@"";
    texty42=@"";
    texty43=@"";
    texty44=@"";
    texty45=@"";
    texty46=@"";
    texty47=@"";
    texty48=@"";
    texty49=@"";
    texty50=@"";
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

- (IBAction)next:(id)sender {
    if(check1.selected){
        texty27=@"Right";
    }
    else{
         texty27=@"";
    }
    if(check2.selected){
        texty28=@"Left";
    }
    else{
        texty28=@"";
    }
    if(check3.selected){
        texty29=@"Normal";
    }
    else{
        texty29=@"";
    }
    if(check4.selected){
        texty30=@"Right";
    }
    else{
        texty30=@"";
    }
    if(check5.selected){
        texty31=@"Left";
    }
    else{
        texty31=@"";
    }
    if(check6.selected){
        texty32=@"Normal";
    }
    else{
        texty32=@"";
    }
    
    if(check7.selected){
        texty33=@"Right";
    }
    else{
        texty33=@"";
    }
    if(check8.selected){
        texty34=@"Left";
    }
    else{
        texty34=@"";
    }
    if(check9.selected){
        texty35=@"Normal";
    }
    else{
        texty35=@"";
    }
    if(check10.selected){
        texty36=@"Right";
    }
    else{
        texty36=@"";
    }
    if(check11.selected){
        texty37=@"Left";
    }
    else{
        texty37=@"";
    }
    if(check12.selected){
        texty38=@"Normal";
    }
    else{
        texty38=@"";
    }
    if(check13.selected){
        texty39=@"Hyper";
    }
    else{
        texty39=@"";
    }
    if(check14.selected){
        texty40=@"Hypo";
    }
    else{
        texty40=@"";
    }
    if(check15.selected){
        texty41=@"Normal";
    }
    else{
        texty41=@"";
    }
    
    if(check16.selected){
        texty42=@"Lymphedema";
    }
    else{
        texty42=@"";
    }
    if(check17.selected){
        texty43=@"Normal";
    }
    else{
        texty43=@"";
    }
    if(check18.selected){
        texty44=@"Pain";
    }
    else{
        texty44=@"";
    }
    if(check19.selected){
        texty45=@"Spasm";
    }
    else{
        texty45=@"";
    }
    if(check20.selected){
        texty46=@"Edema";
    }
    else{
        texty46=@"";
    }
    if(check21.selected){
        texty47=@"TriggerPoint";
    }
    else{
        texty47=@"";
    }
    if(check22.selected){
        texty48=@"Tonicity";
    }
    else{
        texty48=@"";
    }
    if(check23.selected){
        texty49=@"R-L";
    }
    else{
        texty49=@"";
    }
    if(check24.selected){
        texty50=@"Normal";
    }
    else{
        texty50=@"";
    }
    if(check25.selected){
        texty51=@"Fixations";
    }
    else{
        texty51=@"";
    }
    if(check26.selected){
        texty52=@"No Fixations";
    }
    else{
        texty52=@"";
    }
    texty1=[_1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty2=[_2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty3=[_3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty4=[_4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty5=[_5.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty6=[_6.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty7=[_7.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty8=[_8.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty9=[_9.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty10=[_10.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty11=[_11.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty12=[_12.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty13=[_13.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty14=[_14.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty15=[_15.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty16=[_16.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty17=[_17.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty18=[_18.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty19=[_19.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty20=[_20.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty21=[_21.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty22=[_22.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty23=[_23.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty24=[_24.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    if([_1.text length]==0||([self validateString:texty1]==1))
    {
        if([_2.text length]==0||([self validateString:texty2]==1))
        {
            if([_3.text length]==0||([self validateString:texty3]==1))
            {
                if([_4.text length]==0||([self validateString:texty4]==1))
                {
                    if([_5.text length]==0||([self validateString:texty5]==1))
                    {
                        if([_6.text length]==0||([self validateString:texty6]==1))
                        {
                            if([_7.text length]==0||([self validateString:texty7]==1))
                            {
                                if([_8.text length]==0||([self validateString:texty8]==1))
                                {
                                    if([_9.text length]==0||([self validateString:texty9]==1))
                                    {
                                        if([_10.text length]==0||([self validateString:texty10]==1))
                                        {
                                            if([_11.text length]==0||([self validateString:texty11]==1))
                                            {
                                                if([_12.text length]==0||([self validateString:texty12]==1))
                                                {
                                                    if([_13.text length]==0||([self validateString:texty13]==1))
                                                    {
                                                        if([_14.text length]==0||([self validateString:texty14]==1))
                                                        {
                                                            if([_15.text length]==0||([self validateString:texty15]==1))
                                                            {
                                                                if([_16.text length]==0||([self validateString:texty16]==1))
                                                                {
                                                                    if([_17.text length]==0||([self validateString:texty17]==1))
                                                                    {
                                                                        if([_18.text length]==0||([self validateString:texty18]==1))
                                                                        {
                                                                            if([_19.text length]==0||([self validateString:texty19]==1))
                                                                            {
                                                                                if([_20.text length]==0||([self validateString:texty20]==1))
                                                                                {
                                                                                    if([_21.text length]==0||([self validateString:texty21]==1))
                                                                                    {
                                                                                        if([_22.text length]==0||([self validateString:texty22]==1))
                                                                                        {
                                                                                            if([_23.text length]==0||([self validateString:texty23]==1))
                                                                                            {
                                                                                                if([_24.text length]==0||([self validateString:texty24]==1))
                                                                                                {
                                                                                                    
                                                                                                                  suc=1;
                                                                                                                    
                                                                                                    
                                                                                                                    [recorddict setObject:_1.text forKey:@"first"];
                                                                                                                    [recorddict setObject:_2.text forKey:@"2nd"];
                                                                                                                    [recorddict setObject:_3.text forKey:@"3rd"];
                                                                                                                    [recorddict setObject:_4.text forKey:@"4th"];
                                                                                                                    [recorddict setObject:_5.text forKey:@"5th"];
                                                                                                                    [recorddict setObject:_6.text forKey:@"6th"];
                                                                                                                    [recorddict setObject:_7.text forKey:@"7th"];
                                                                                                                    [recorddict setObject:_8.text forKey:@"8th"];
                                                                                                                    [recorddict setObject:_9.text forKey:@"9th"];
                                                                                                                    [recorddict setObject:_10.text forKey:@"10th"];
                                                                                                                    [recorddict setObject:_11.text forKey:@"11th"];
                                                                                                                    [recorddict setObject:_12.text forKey:@"12th"];
                                                                                                                    [recorddict setObject:_13.text forKey:@"13th"];
                                                                                                                    [recorddict setObject:_14.text forKey:@"14th"];
                                                                                                                    [recorddict setObject:_15.text forKey:@"15th"];
                                                                                                                    [recorddict setObject:_16.text forKey:@"16th"];
                                                                                                                    [recorddict setObject:_17.text forKey:@"17th"];
                                                                                                                    [recorddict setObject:_18.text forKey:@"18th"];
                                                                                                                    [recorddict setObject:_19.text forKey:@"19th"];
                                                                                                                    [recorddict setObject:_20.text forKey:@"20th"];
                                                                                                                    [recorddict setObject:_21.text forKey:@"21st"];
                                                                                                                    [recorddict setObject:_22.text forKey:@"22nd"];
                                                                                                                    [recorddict setObject:_23.text forKey:@"23rd"];
                                                                                                                    [recorddict setObject:_24.text forKey:@"24th"];
                                                                                                     [recorddict setObject:texty27 forKey:@"inspection1"];
                                                                                                     [recorddict setObject:texty28 forKey:@"inspection2"];
                                                                                                     [recorddict setObject:texty29 forKey:@"inspection3"];
                                                                                                     [recorddict setObject:texty30 forKey:@"inspection4"];
                                                                                                     [recorddict setObject:texty31 forKey:@"inspection5"];
                                                                                                     [recorddict setObject:texty32 forKey:@"inspection6"];
                                                                                                     [recorddict setObject:texty33 forKey:@"inspection7"];
                                                                                                     [recorddict setObject:texty34 forKey:@"inspection8"];
                                                                                                     [recorddict setObject:texty35 forKey:@"inspection9"];
                                                                                                     [recorddict setObject:texty36 forKey:@"inspection10"];
                                                                                                     [recorddict setObject:texty37 forKey:@"inspection11"];
                                                                                                     [recorddict setObject:texty38 forKey:@"inspection12"];
                                                                                                     [recorddict setObject:texty39 forKey:@"inspection13"];
                                                                                                     [recorddict setObject:texty40 forKey:@"inspection14"];
                                                                                                     [recorddict setObject:texty41 forKey:@"inspection15"];
                                                                                                          [recorddict setObject:texty42 forKey:@"palpation1"];
                                                                                                      [recorddict setObject:texty43 forKey:@"palpation2"];
                                                                                                      [recorddict setObject:texty44 forKey:@"palpation3"];
                                                                                                      [recorddict setObject:texty45 forKey:@"palpation4"];
                                                                                                      [recorddict setObject:texty46 forKey:@"palpation5"];
                                                                                                      [recorddict setObject:texty47 forKey:@"palpation6"];
                                                                                                      [recorddict setObject:texty48 forKey:@"palpation7"];
                                                                                                      [recorddict setObject:texty49 forKey:@"palpation8"];
                                                                                                      [recorddict setObject:texty50 forKey:@"palpation9"];
                                                                                                      [recorddict setObject:texty51 forKey:@"palpation10"];
                                                                                                      [recorddict setObject:texty52 forKey:@"palpation11"];
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    
                                                                                                    NSLog(@"Record dict in cervical form one::%@",recorddict);
                                                      
                                                                                                                }
                                                                                            
                                                                                            else
                                                                                            {
                                                                                                suc=0;
                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Stiff Lr-80 field Value."];
                                                                                                
                                                                                                
                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                [alert show];
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            suc=0;
                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Spasm Lr-80 field Value."];
                                                                                            
                                                                                            
                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                            [alert show];
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        suc=0;
                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Pain Lr-80 field Value."];
                                                                                        
                                                                                        
                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                        [alert show];
                                                                                    }
                                                                                    
                                                                                }
                                                                                else
                                                                                {
                                                                                    suc=0;
                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Normal Lr-80 field Value."];
                                                                                    
                                                                                    
                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                    [alert show];
                                                                                }
                                                                                
                                                                            }
                                                                            else
                                                                            {
                                                                                suc=0;
                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Stiff RR 80 field Value."];
                                                                                
                                                                                
                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                [alert show];
                                                                            }
                                                                            
                                                                        }
                                                                        else
                                                                        {
                                                                            suc=0;
                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Spasm RR 80  field Value."];
                                                                            
                                                                            
                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                            [alert show];
                                                                        }
                                                                        
                                                                    }
                                                                    else
                                                                    {
                                                                        suc=0;
                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Pain RR 80  field Value."];
                                                                        
                                                                        
                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                        [alert show];
                                                                    }
                                                                    
                                                                }
                                                                else
                                                                {
                                                                    suc=0;
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Normal Rom RR 80  field Value."];
                                                                    
                                                                    
                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                }
                                                                
                                                            }
                                                            else
                                                            {
                                                                suc=0;
                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Stiff LLF 45 field Value."];
                                                                
                                                                
                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                [alert show];
                                                            }
                                                            
                                                        }
                                                        else
                                                        {
                                                            suc=0;
                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Spasm LLF 45 field Value."];
                                                            
                                                            
                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                            [alert show];
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        suc=0;
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Pain LLF 45 field Value."];
                                                        
                                                        
                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    suc=0;
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Normal LLF 45 field Value."];
                                                    
                                                    
                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                }
                                                
                                            }
                                            else
                                            {
                                                suc=0;
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Stiff RLF 45 field Value."];
                                                
                                                
                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                            }
                                            
                                        }
                                        else
                                        {
                                            suc=0;
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Spasm RLF 45 field Value."];
                                            
                                            
                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                        }
                                        
                                    }
                                    else
                                    {
                                        suc=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Pain RLF 45 field Value."];
                                        
                                        
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    
                                }
                                else
                                {
                                    suc=0;
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Normal RLF 45 field Value."];
                                    
                                    
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                                
                            }
                            else
                            {
                                suc=0;
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Stiff Ext 75 field Value."];
                                
                                
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                            
                        }
                        else
                        {
                            suc=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Spasm Ext 75 field Value."];
                            
                            
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                        
                    }
                    else
                    {
                        suc=0;
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Pain Ext 75 field Value."];
                        
                        
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                    
                }
                else
                {
                    suc=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Normal Ext 75 field Value."];
                    
                    
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
                
            }
            else
            {
                suc=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Stiff Flex 60 field Value."];
                
                
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
            
        }
        else
        {
            suc=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Flex 60 spasm field Value."];
            
            
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
        
    }
    else
    {
        suc=0;
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Flex 60 pain field Value."];
        
        
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    }  else
        {
            suc=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Flex 60 Normal field Value."];
            
            
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }

    
    if(suc==1){
        [self performSegueWithIdentifier:@"physic2" sender:self];
    }
    
}


    



- (void)dealloc {
    
       [super dealloc];
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    NSLog(@"succc value in perform segue %i",suc);
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"physic2"])
    {
        if (suc==1)
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
    
    
    if ([segue.identifier isEqualToString:@"physic2"])
    {
        
        NSLog(@"succc value in prepre segue %i ",suc);
        CervicalSpineViewController1 *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in knee exam controller %@",recorddict);
        // destViewController.delegate=self;
        
    }
    
    
    
}

- (IBAction)checkchange:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }

}
@end
