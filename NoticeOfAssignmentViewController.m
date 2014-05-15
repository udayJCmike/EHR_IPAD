//
//  NoticeOfAssignmentViewController.m
//  MedPay
//
//  Created by deemsys on 3/1/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "NoticeOfAssignmentViewController.h"

@interface NoticeOfAssignmentViewController ()
@end
@implementation NoticeOfAssignmentViewController




@synthesize recorddict;
int suc;
NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)dismissKeyboard {
     [writingby resignFirstResponder];
    [patname resignFirstResponder];
    [patattory resignFirstResponder];
    [dearname resignFirstResponder];
    [dofacc resignFirstResponder];
    [sincname resignFirstResponder];
    [addrs resignFirstResponder];
    [reg resignFirstResponder];
    [addrs1 resignFirstResponder];
    [todaydate resignFirstResponder];
    [insname resignFirstResponder];
}
- (void)viewDidLoad
{
    
    [super viewDidLoad];
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:@"SENT BY CERTIFIED MAIL"];
    [attributeString addAttribute:NSUnderlineStyleAttributeName
     
                            value:[NSNumber numberWithInt:1]
                            range:(NSRange){0,[attributeString length]}];
  
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
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
- (void)dealloc {
    
    
    [super dealloc];
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
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (IBAction)submit:(id)sender {
    texty1=[insname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty2=[patattory.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty3=[addrs.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty4=[addrs1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty5=[patname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty6=[reg.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty7=[dofacc.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty8=[todaydate.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty9=[dearname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty10=[writingby.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty11=[sincname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    if([patattory.text length]!=0&&[reg.text length]!=0&&[addrs.text length]!=0&&[patname.text length]!=0&&[dofacc.text length]!=0&&[dearname.text length]!=0&&[sincname.text length]!=0&&[insname.text length]!=0&&[addrs1.text length]!=0&&[todaydate.text length]!=0&&[writingby.text length]!=0)
    {
        if([insname.text length]==0||([self validateString:texty1]==1))
        {
            if([patattory.text length]==0||([self validateString:texty2]==1))
            {
                if([addrs.text length]==0||([self validateString:texty3]==1))
                {
                    if([addrs1.text length]==0||([self validateString:texty4]==1))
                    {
                    if([patname.text length]==0||([self validateString:texty5]==1))
                    {
                        if([reg.text length]==0||([self validateString:texty6]==1))
                        {
                        if([dofacc.text length]==0||([self validateDate:texty7]==1))
                        {
                            if([todaydate.text length]==0||([self validateDate:texty8]==1))
                            {
                                

                            
                            if([dearname.text length]==0||([self validateString:texty9]==1))
                            {
                                if([writingby.text length]==0||([self validateString:texty10]==1))
                                {
                                if([sincname.text length]==0||([self validateString:texty11]==1))
                                {
                                    
                                    
                                    suc=1;
                                    recorddict=[[NSMutableDictionary alloc]init];
                                    
                                    [recorddict setValue:patattory.text forKey:@"patatorry"];
                                    [recorddict setValue:insname.text forKey:@"Insurance Name"];
                                    [recorddict setValue:addrs1.text forKey:@"addresAttorney"];
                                    [recorddict setValue:todaydate.text forKey:@"todaydate"];
                                    
                                    [recorddict setValue:reg.text forKey:@"regarding"];
                                    
                                    [recorddict setValue:addrs.text forKey:@"address"];
                                    
                                    [recorddict setValue:patname.text forKey:@"patient name"];
                                    
                                    [recorddict setValue:dofacc.text forKey:@"date field"];
                                    
                                    [recorddict setValue:dearname.text forKey:@"doctor name"];
                                    [recorddict setValue:sincname.text forKey:@"doctor signature"];
                                    [recorddict setValue:writingby.text forKey:@"dashfill"];
                                    
                                    NSLog(@"Record dict Value in Notice Of an Assignment:%@",recorddict);
                                    
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Success."];
                                    
                                    
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                    
                                }
                                
                                else{
                                    suc=0;
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid signature  Name."];
                                    
                                    
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                                
                            }
                                else{
                                    suc=0;
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Writing by Field."];
                                    
                                    
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                                
                            }
                            else{
                                suc=0;
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Doctor Name."];
                                
                                
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                            
                        }
                        else{
                            suc=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Date "];
                            
                            
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                        
                    }
                        else{
                            suc=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Date Of Accident."];
                            
                            
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                            
                        }
                        else{
                            suc=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Regarding."];
                            
                            
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                        
                    }
                    else{
                        suc=0;
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Patient's Name."];
                        
                        
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                    
                }
                else{
                    suc=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Attorney's Address."];
                    
                    
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
                
            }
                else{
                    suc=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Insurance Company Address."];
                    
                    
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
                
            }
            else{
                suc=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Patient's Attorney Name."];
                
                
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
            
        }
        else{
            suc=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Name Of Insurance Company"];
            
            
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
    
}

@end
