//
//  PerryFaxCoverViewController.m
//  EHR
//
//  Created by deemsys on 2/26/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "PerryFaxCoverViewController.h"

@interface PerryFaxCoverViewController ()

@end

@implementation PerryFaxCoverViewController
@synthesize todaydate;
@synthesize recorddict;
int suc;
NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13;

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
    texty13=@"";
    texty10=@"";
    texty11=@"";
    texty12=@"";
    
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:@"Todays's Date:"];
    [attributeString addAttribute:NSUnderlineStyleAttributeName
     
                            value:[NSNumber numberWithInt:1]
                            range:(NSRange){0,[attributeString length]}];
    //todaydate.attributedText=[attributeString copy];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(void)dismissKeyboard{
    
    [date resignFirstResponder];
    [to resignFirstResponder];
    [fax resignFirstResponder];
    [from resignFirstResponder];
    [re resignFirstResponder];
    [msg resignFirstResponder];
    [doi resignFirstResponder];
    [nubofpag resignFirstResponder];
    [claim resignFirstResponder];
}
- (void)dealloc {
  
    [msg release];
    [super dealloc];
}
- (IBAction)cancel:(id)sender {
}
-(BOOL)validateNumberFax:(NSString *)user

{
    //  NSString *userFormat1 =@"[A-Z0-9a-z._/-]+";
    NSString *userFormat1 =@"[0-9]{11}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateNumber:(NSString *)user

{
    //  NSString *userFormat1 =@"[A-Z0-9a-z._/-]+";
    NSString *userFormat1 =@"[0-9]{1,3}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}

- (IBAction)submit:(id)sender {
    texty1=[date.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty2=[to.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty3=[fax.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty4=[from.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty5=[re.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty6=[nubofpag.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty7=[[msg.text stringByReplacingOccurrencesOfString:@"\n" withString:@" "]stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty8=[claim.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty9=[doi.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    if([date.text length]!=0&&[to.text length]!=0&&[from.text length]!=0&&[msg.text length]!=0&&[doi.text length]!=0&&[re.text length]!=0&&[fax.text length]!=0&&[claim.text length]!=0&&[nubofpag.text length]!=0){
        if(([self validateDate:texty1]==1))
        {
            if([to.text length]==0||([self validateString:texty2]==1))
            {
                if([fax.text length]==0||([self validateNumberFax:texty3]==1))
                {
                    if([from.text length]==0||([self validateString:texty4]==1))
                    {
                        if([re.text length]==0||([self validateString:texty5]==1))
                        {
                            if([nubofpag.text length]==0||([self validateNumber:texty6]==1))
                            {
                                if([msg.text length]==0||([self validateString:texty7]==1))
                                {
                                    if([claim.text length]==0||([self validateString:texty8]==1))
                                    {
                                        if([doi.text length]==0||([self validateString:texty8]==1))
                                        {
                                        suc=1;
                                        recorddict=[[NSMutableDictionary alloc]init];
                                        
                                        [recorddict setValue:to.text forKey:@"to"];
                                        
                                        [recorddict setValue:re.text forKey:@"re"];
                                        
                                        [recorddict setValue:msg.text forKey:@"msg"];
                                        
                                        [recorddict setValue:claim.text forKey:@"claim"];
                                        
                                        [recorddict setValue:doi.text forKey:@"doi field"];
                                        [recorddict setValue:nubofpag.text forKey:@"Number of pages"];
                                        [recorddict setValue:date.text forKey:@"Date"];
                                        [recorddict setValue:from.text forKey:@"from"];
                                        [recorddict setValue:fax.text forKey:@"fax"];
                                            [recorddict setObject:texty10 forKey:@"checkselected1"];
                                            [recorddict setObject:texty11 forKey:@"checkselected2"];
                                            [recorddict setObject:texty12 forKey:@"checkselected3"];
                                            [recorddict setObject:texty13 forKey:@"checkselected4"];
                                        NSLog(@"Record dict Value perry fax cover ::%@",recorddict);
                                        
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Success."];
                                        
                                        
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                        
                                    }
                                    else{
                                        suc=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Doi field."];
                                        
                                        
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    
                                }
                                else{
                                    suc=0;
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Claim name."];
                                    
                                    
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                                
                            }
                            else{
                                suc=0;
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Msg ."];
                                
                                
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                            
                        }
                        else{
                            suc=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid No.of Page "];
                            
                            
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                        
                    }
                    else{
                        suc=0;
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Reg field."];
                        
                        
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                    
                }
                else{
                    suc=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid From Field."];
                    
                    
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
                
            }
            else{
                suc=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Fax Field."];
                
                
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
            
        }
        else{
            suc=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid To Name."];
            
            
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }
        else{
            suc=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Date Field."];
            
            
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }
    else{
        suc=0;
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter All Required Fields."];
        
        
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    // if(suc==1){
    //   [self performSegueWithIdentifier:@"wrist1" sender:self];
    // }
}


- (IBAction)checkchange:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    if(check1.selected){
        texty10=@"URGENT";
    }
    else{
        texty10=@"";
    }
    
    if(check2.selected){
        texty11=@"FOR REVIEW";
    }
    else{texty11=@"";
    }
    if(check3.selected){
        
        texty12=@"PLEASE COMMENT";
    }
    else{texty12=@"";
    }
    if(check4.selected){
        texty13=@"PLEASE REPLY";
    }
    else{
        texty13=@"";
    }
}
@end
