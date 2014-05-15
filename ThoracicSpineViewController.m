//
//  ThoracicSpineViewController.m
//  physicalexam
//
//  Created by deemsys on 2/28/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "ThoracicSpineViewController.h"
#import "LumbarSpineViewController.h"

@interface ThoracicSpineViewController ()

@end

@implementation ThoracicSpineViewController
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
@synthesize check27;
@synthesize check28;
@synthesize check29;
@synthesize check30;
@synthesize check31;
@synthesize check32;
@synthesize check33;
@synthesize check34;
@synthesize check35;
@synthesize check36;
@synthesize check37;
@synthesize check38;
@synthesize lab1;
@synthesize lab2;
@synthesize lab3;
@synthesize lab4;

int suc;

NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20,*texty21,*texty22,*texty23,*texty24,*texty27,*texty28,*texty29,*texty30,*texty31,*texty32,*texty33,*texty34,*texty35,*texty36,*texty37,*texty38,*texty39,*texty40,*texty41,*texty42,*texty43,*texty44,*texty45,*texty46,*texty47,*texty48,*texty49,*texty50,*texty51,*texty52,*texty53,*texty54,*texty55,*texty56,*texty57,*texty58,*texty59,*texty60,*texty61,*texty62,*texty63,*texty64,*textya,*textyb,*textyc,*textyd,*textye,*textyf,*textyg,*textyh;
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
    NSString *countryFormat1 = @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
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
- (IBAction)next:(id)sender {
    
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
    textya=[_25.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    textyb=[_26.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    textyc=[_27.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    textyd=[_28.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    
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
        texty39=@"Inhale";
    }
    else{
        texty39=@"";
    }
    if(check14.selected){
        texty40=@"Exhale";
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
        texty42=@"Hyper";
    }
    else{
        texty42=@"";
    }
    if(check17.selected){
        texty43=@"Hypo";
    }
    else{
        texty43=@"";
    }
    if(check18.selected){
        texty44=@"Normal";
    }
    else{
        texty44=@"";
    }
    if(check19.selected){
        texty45=@"Pain";
    }
    else{
        texty45=@"";
    }
    if(check20.selected){
        texty46=@"Spasm";
    }
    else{
        texty46=@"";
    }
    if(check21.selected){
        texty47=@"Edema";
    }
    else{
        texty47=@"";
    }
    if(check22.selected){
        texty48=@"TriggerPoint";
    }
    else{
        texty48=@"";
    }
    if(check23.selected){
        texty49=@"Posterior";
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
    if(check27.selected){
        texty53=@"Right";
    }
    else{
        texty53=@"";
    }
    if(check28.selected){
        texty54=@"Left";
    }
    else{
        texty54=@"";
    }
    if(check29.selected){
        texty55=@"Right";
    }
    else{
        texty55=@"";
    }
    if(check30.selected){
        texty56=@"Left";
    }
    else{
        texty56=@"";
    }
    if(check31.selected){
        texty57=@"Right";
    }
    else{
        texty57=@"";
    }
    if(check32.selected){
        texty58=@"Left";
    }
    else{
        texty58=@"";
    }
    if(check33.selected){
        texty59=@"Right";
    }
    else{
        texty59=@"";
    }
    if(check34.selected){
        texty60=@"Left";
    }
    else{
        texty60=@"";
    }
    if(check35.selected){
        texty61=@"RUQ";
    }
    else{
        texty61=@"";
    }
    if(check36.selected){
        texty62=@"LUQ";
    }
    else{
        texty62=@"";
    }
    if(check37.selected){
        texty63=@"RLQ";
    }
    else{
        texty63=@"";
    }
    if(check38.selected){
        texty64=@"LLQ";
    }
    else{
        texty64=@"";
    }
    if(seg.selectedSegmentIndex==1){
       /* check35.hidden=YES;
        check36.hidden=YES;
        check37.hidden=YES;
        check38.hidden=YES;
        lab1.hidden=YES;
        lab2.hidden=YES;
        lab3.hidden=YES;
        lab4.hidden=YES;*/
        texty61=@"";
        texty62=@"";
        texty63=@"";
        texty64=@"";
        
    }
    
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
                                                                                                    if([_25.text length]==0||([self validateString:textya]==1))
                                                                                                    {
                                                                                                        if([_26.text length]==0||([self validateString:textyb]==1))
                                                                                                        {
                                                                                                            if([_27.text length]==0||([self validateString:textyc]==1))
                                                                                                            {
                                                                                                                if([_28.text length]==0||([self validateString:textyd]==1))
                                                                                                                {
                                                                                                    
                                                                                                    suc=1;
                                                                                                    
                                                                                                    
                                                                                                    [recorddict setObject:_1.text forKey:@"thoracicflexnor"];
                                                                                                    [recorddict setObject:_2.text forKey:@"thoracicflexpain"];
                                                                                                    [recorddict setObject:_3.text forKey:@"thoracicflexspasm"];
                                                                                                    [recorddict setObject:_4.text forKey:@"thoracicflexstiff"];
                                                                                                    [recorddict setObject:_5.text forKey:@"thoracicextnormal"];
                                                                                                    [recorddict setObject:_6.text forKey:@"thoracicextpain"];
                                                                                                    [recorddict setObject:_7.text forKey:@"thoracicextspasm"];
                                                                                                    [recorddict setObject:_8.text forKey:@"thoracicextstiff"];
                                                                                                    [recorddict setObject:_9.text forKey:@"thoracicrlfnormal"];
                                                                                                    [recorddict setObject:_10.text forKey:@"thoracicrlfpain"];
                                                                                                    [recorddict setObject:_11.text forKey:@"thoracicrlfspasm"];
                                                                                                    [recorddict setObject:_12.text forKey:@"thoracicrlfstiff"];
                                                                                                    [recorddict setObject:_13.text forKey:@"thoracicllfnormal"];
                                                                                                    [recorddict setObject:_14.text forKey:@"thoracicllfpain"];
                                                                                                    [recorddict setObject:_15.text forKey:@"thoracicllfspasm"];
                                                                                                    [recorddict setObject:_16.text forKey:@"thoracicllfstiff"];
                                                                                                    [recorddict setObject:_17.text forKey:@"thoracicrrnormal"];
                                                                                                    [recorddict setObject:_18.text forKey:@"thoracicrrpain"];
                                                                                                    [recorddict setObject:_19.text forKey:@"thoracicrrspasm"];
                                                                                                    [recorddict setObject:_20.text forKey:@"thoracicrrstiff"];
                                                                                                    [recorddict setObject:_21.text forKey:@"thoraciclrnormal"];
                                                                                                    [recorddict setObject:_22.text forKey:@"thoraciclrpain"];
                                                                                                    [recorddict setObject:_23.text forKey:@"thoraciclrspasm"];
                                                                                                    [recorddict setObject:_24.text forKey:@"thoraciclrstiff"];
                                                                                                                     [recorddict setObject:_25.text forKey:@"thoracict1nor"];
                                                                                                                     [recorddict setObject:_26.text forKey:@"thoracict4nor"];
                                                                                                                     [recorddict setObject:_27.text forKey:@"thoracict10nor"];
                                                                                                                     [recorddict setObject:_28.text forKey:@"thoracicothrnor"];
                                                                                                                    
                                                                                                                    
                                                                                                                    [recorddict setObject:texty27 forKey:@"inspectthoracicspine1"];
                                                                                                                    [recorddict setObject:texty28 forKey:@"inspectthoracicspine2"];
                                                                                                                    [recorddict setObject:texty29 forKey:@"inspectthoracicspine3"];
                                                                                                                    [recorddict setObject:texty30 forKey:@"inspectthoracicspine4"];
                                                                                                                    [recorddict setObject:texty31 forKey:@"inspectthoracicspine5"];
                                                                                                                    [recorddict setObject:texty32 forKey:@"inspectthoracicspine6"];
                                                                                                                    [recorddict setObject:texty33 forKey:@"inspectthoracicspine7"];
                                                                                                                    [recorddict setObject:texty34 forKey:@"inspectthoracicspine8"];
                                                                                                                    [recorddict setObject:texty35 forKey:@"inspectthoracicspine9"];
                                                                                                                    [recorddict setObject:texty36 forKey:@"inspectthoracicspine10"];
                                                                                                                    [recorddict setObject:texty37 forKey:@"inspectthoracicspine11"];
                                                                                                                    [recorddict setObject:texty38 forKey:@"inspectthoracicspine12"];
                                                                                                                    [recorddict setObject:texty39 forKey:@"inspectthoracicspine13"];
                                                                                                                    [recorddict setObject:texty40 forKey:@"inspectthoracicspine14"];
                                                                                                                    [recorddict setObject:texty41 forKey:@"inspectthoracicspine15"];
                                                                                                                    [recorddict setObject:texty42 forKey:@"inspectthoracicspine16"];
                                                                                                                     [recorddict setObject:texty43 forKey:@"inspectthoracicspine17"];
                                                                                                                      [recorddict setObject:texty44 forKey:@"inspectthoracicspine18"];
                                                                                                                    [recorddict setObject:texty45 forKey:@"palpationthoracicspine19"];
                                                                                                                    [recorddict setObject:texty46 forKey:@"palpationthoracicspine20"];
                                                                                                                    [recorddict setObject:texty47 forKey:@"palpationthoracicspine21"];
                                                                                                                    [recorddict setObject:texty48 forKey:@"palpationthoracicspine22"];
                                                                                                                    [recorddict setObject:texty49 forKey:@"palpationthoracicspine23"];
                                                                                                                    [recorddict setObject:texty50 forKey:@"palpationthoracicspine24"];
                                                                                                                    [recorddict setObject:texty51 forKey:@"palpationthoracicspine25"];
                                                                                                                    [recorddict setObject:texty52 forKey:@"palpationthoracicspine26"];
                                                                                                                    [recorddict setObject:texty53 forKey:@"dermatomesthoracicspine27"];
                                                                                                                    [recorddict setObject:texty54 forKey:@"dermatomesthoracicspine28"];
                                                                                                                    [recorddict setObject:texty55 forKey:@"dermatomesthoracicspine29"
                                                                                                                     ];
                                                                                                                    [recorddict setObject:texty56 forKey:@"dermatomesthoracicspine30"];
                                                                                                                    [recorddict setObject:texty57 forKey:@"dermatomesthoracicspine31"];
                                                                                                                    [recorddict setObject:texty58 forKey:@"dermatomesthoracicspine32"];
                                                                                                                    [recorddict setObject:texty59 forKey:@"dermatomesthoracicspine33"];
                                                                                                                    [recorddict setObject:texty60 forKey:@"dermatomesthoracicspine34"];
                                                                                                                    [recorddict setObject:texty61 forKey:@"myotomesthoracicspine35"];
                                                                                                                    [recorddict setObject:texty62 forKey:@"myotomesthoracicspine36"];
                                                                                                                    [recorddict setObject:texty63 forKey:@"myotomesthoracicspine37"];
                                                                                                                    [recorddict setObject:texty64 forKey:@"myotomesthoracicspine38"];
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                    
                                                                                                                    NSLog(@"Record dict in thoracic spine ::%@",recorddict);
                                                                                 
                                                                                                                
                                                                                                                
                                                                                                              }
                                                                                                            else
                                                                                                            {
                                                                                                                suc=0;
                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Other Normal field Value."];
                                                                                                                
                                                                                                                
                                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                [alert show];
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            suc=0;
                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid T-10 Normal field Value."];
                                                                                                            
                                                                                                            
                                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                            [alert show];
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        suc=0;
                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid T-4 Normal field Value."];
                                                                                                        
                                                                                                        
                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                        [alert show];
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    suc=0;
                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid T-1 Normal field Value."];
                                                                                                    
                                                                                                    
                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                    [alert show];
                                                                                                }
                                                                                                
                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                suc=0;
                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Stiff Lr-40 field Value."];
                                                                                                                
                                                                                                                
                                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                [alert show];
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            suc=0;
                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Spasm Lr-40 field Value."];
                                                                                                            
                                                                                                            
                                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                            [alert show];
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        suc=0;
                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Pain Lr-40 field Value."];
                                                                                                        
                                                                                                        
                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                        [alert show];
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    suc=0;
                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Normal Lr-40 field Value."];
                                                                                                    
                                                                                                    
                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                    [alert show];
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                suc=0;
                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Stiff RR 40 field Value."];
                                                                                                
                                                                                                
                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                [alert show];
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            suc=0;
                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Spasm RR 40  field Value."];
                                                                                            
                                                                                            
                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                            [alert show];
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        suc=0;
                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Pain RR 40  field Value."];
                                                                                        
                                                                                        
                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                        [alert show];
                                                                                    }
                                                                                    
                                                                                }
                                                                                else
                                                                                {
                                                                                    suc=0;
                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Normal Rom RR 40  field Value."];
                                                                                    
                                                                                    
                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                    [alert show];
                                                                                }
                                                                                
                                                                            }
                                                                            else
                                                                            {
                                                                                suc=0;
                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Stiff LLF 30 field Value."];
                                                                                
                                                                                
                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                [alert show];
                                                                            }
                                                                            
                                                                        }
                                                                        else
                                                                        {
                                                                            suc=0;
                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Spasm LLF 30 field Value."];
                                                                            
                                                                            
                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                            [alert show];
                                                                        }
                                                                        
                                                                    }
                                                                    else
                                                                    {
                                                                        suc=0;
                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Pain LLF 30 field Value."];
                                                                        
                                                                        
                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                        [alert show];
                                                                    }
                                                                    
                                                                }
                                                                else
                                                                {
                                                                    suc=0;
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Normal LLF 30 field Value."];
                                                                    
                                                                    
                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                }
                                                                
                                                            }
                                                            else
                                                            {
                                                                suc=0;
                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Stiff RLF 30 field Value."];
                                                                
                                                                
                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                [alert show];
                                                            }
                                                            
                                                        }
                                                        else
                                                        {
                                                            suc=0;
                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Spasm RLF 30 field Value."];
                                                            
                                                            
                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                            [alert show];
                                                        }
                                                        
                                                    }
                                                    else
                                                    {
                                                        suc=0;
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Pain RLF 30 field Value."];
                                                        
                                                        
                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                    }
                                                    
                                                }
                                                else
                                                {
                                                    suc=0;
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Normal RLF 30 field Value."];
                                                    
                                                    
                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                }
                                                
                                            }
                                            else
                                            {
                                                suc=0;
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Stiff Ext 30 field Value."];
                                                
                                                
                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                            }
                                            
                                        }
                                        else
                                        {
                                            suc=0;
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Spasm Ext 30 field Value."];
                                            
                                            
                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                        }
                                        
                                    }
                                    else
                                    {
                                        suc=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Pain Ext 30 field Value."];
                                        
                                        
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    
                                }
                                else
                                {
                                    suc=0;
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Normal Ext 30 field Value."];
                                    
                                    
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                                
                            }
                            else
                            {
                                suc=0;
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Stiff Flex 40 field Value."];
                                
                                
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                            
                        }
                        else
                        {
                            suc=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid spasm Flex 40 field Value."];
                            
                            
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                        
                    }
                    else
                    {
                        suc=0;
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid  pain  Flex 40 field Value."];
                        
                        
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                }
else
                {
                    suc=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Normal Flex 40  field Value."];
                    
                    
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
                
    if(suc==1){
        [self performSegueWithIdentifier:@"physic4" sender:self];
    }

}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    NSLog(@"succc value in perform segue %i",suc);
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"physic4"])
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
    
    
    if ([segue.identifier isEqualToString:@"physic4"])
    {
        
        NSLog(@"succc value in prepre segue %i ",suc);
        LumbarSpineViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in knee exam controller %@",recorddict);
         //destViewController.delegate=self;
        
    }
    
    
    
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
    [_25 resignFirstResponder];
    [_26 resignFirstResponder];
    [_27 resignFirstResponder];
[_28 resignFirstResponder];
    
    
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
    texty51=@"";
    texty52=@"";
    texty53=@"";
    texty54=@"";
    texty55=@"";
    texty56=@"";
    texty57=@"";
    texty58=@"";
    texty59=@"";
    texty60=@"";
    texty61=@"";
    texty62=@"";
    texty63=@"";
    texty64=@"";
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

- (void)dealloc {
   
    
    [super dealloc];
}
- (IBAction)segc:(id)sender {
    if(seg.selectedSegmentIndex==1){
        check35.hidden=YES;
         check36.hidden=YES;
         check37.hidden=YES;
         check38.hidden=YES;
        lab1.hidden=YES;
         lab2.hidden=YES;
         lab3.hidden=YES;
         lab4.hidden=YES;
        texty61=@"";
         texty62=@"";
         texty63=@"";
         texty64=@"";
    
    }
    else if(seg.selectedSegmentIndex==0){
        check35.hidden=NO;
        check36.hidden=NO;
        check37.hidden=NO;
        check38.hidden=NO;
        lab1.hidden=NO;
        lab2.hidden=NO;
        lab3.hidden=NO;
        lab4.hidden=NO;
        // texty61=@"RUQ";
        //texty62=@"LUQ";
       // texty63=@"RLQ";
        //texty64=@"LLQ";
        
    }
}
@end
