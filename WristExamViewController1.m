//
//  WristExamViewController1.m
//  EHR
//
//  Created by deemsys on 2/25/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "WristExamViewController1.h"
#import "WristExamViewController2.h"

@interface WristExamViewController1 ()

@end

@implementation WristExamViewController1
int suc;
@synthesize recorddict;
@synthesize temp;

NSString *checkstring1,*checkstring2,*checktring3,*checkstring4,*segva,*checkstring5;
NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20,*texty21,*texty22,*texty23,*texty24,*texty25,*texty26,*texty27,*texty28,*texty29,*texty30,*texty31,*texty32,*texty33,*texty34,*texty35,*texty36,*texty37,*texty38,*texty39,*texty40,*texty41,*texty42,*texty43,*texty44,*texty45;

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
    checkstring1=@"";
    checkstring2=@"";
    checktring3=@"";
    checkstring4=@"";
    segva=@"Excellent";
    other.hidden=YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];

	// Do any additional setup after loading the view.
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
-(BOOL)validateaddress:(NSString *)country1
{
    NSString *countryFormat1 = @"[A-Z0-9a-z._/-]+";
    
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateNumbers:(NSString*)number
{
    NSString *mobileFormat1 =  @"[0-9_-]{1,3}?";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *mobileTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobileFormat1];
    return [mobileTest1 evaluateWithObject:number];
    
}
-(BOOL)validateNumberlimit:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-5]{1}";
    
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
    if(check4.selected)
    {
        other.hidden=NO;
        checkstring5=[other text];
        NSLog(@"checkstring five other field::%@",checkstring5);
    }
    else
        other.hidden=YES;
        checkstring5=@"";
    if(check1.selected)
    {
        checkstring1=@"Neurological Testing Unremarkable";
    }
    else
        checkstring1=@"";
    if(check2.selected)
    {
        checkstring2=@"Typing / Writing";
    }
    else
        checkstring2=@"";
    if(check3.selected)
    {
        NSLog(@"check 3 selected");
        checktring3=@"Driving";
    }
    else{
        NSLog(@"check3 not selected");
        checktring3=@"";
    }
    
}
-(void)dismissKeyboard {
    
    [other resignFirstResponder];
    [first resignFirstResponder];
    
    [fiv resignFirstResponder];
    [sec resignFirstResponder];
    [thr resignFirstResponder];
    [four resignFirstResponder];
    [fiv resignFirstResponder];
    [six resignFirstResponder];
    [sev resignFirstResponder];
    [eight resignFirstResponder];
    [nine resignFirstResponder];
    [ten resignFirstResponder];
    [eleven resignFirstResponder];
    [twe resignFirstResponder];
    [thrt resignFirstResponder];
    [fourt resignFirstResponder];
    [fift resignFirstResponder];
    [sixteen resignFirstResponder];
    [seventeen resignFirstResponder];
    [eighteen resignFirstResponder];
    [ninteen resignFirstResponder];
    [twenty resignFirstResponder];
    [twentyone resignFirstResponder];
    [twentytwo resignFirstResponder];
    [twentythree resignFirstResponder];
    [twentyfour resignFirstResponder];
    [twentyfive resignFirstResponder];
    [twentysix resignFirstResponder];
    [addcomments resignFirstResponder];
     [other resignFirstResponder];
    
    
    
    
    
    
}

- (IBAction)next:(id)sender {
   
    
    texty1=[first.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty2=[sec.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty3=[thr.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty4=[four.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty5=[fiv.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty6=[six.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty7=[sev.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty8=[eight.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty9=[nine.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty10=[ten.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty11=[eleven.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty12=[twe.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty13=[thrt.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty14=[fourt.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty15=[fift.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty16=[sixteen.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty17=[seventeen.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty18=[eighteen.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty19=[ninteen.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty20=[twenty.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty21=[twentyone.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty22=[twentytwo.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty23=[twentythree.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty24=[twentyfour.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty25=[twentyfive.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty26=[twentysix.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty28=[[addcomments.text stringByReplacingOccurrencesOfString:@"\n" withString:@" "]stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty27=[other.text stringByReplacingOccurrencesOfString:@" " withString:@""];
   // texty29=[refsileft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    //texty30=[refsiright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    if([first.text length]==0||([self validateNumbers:texty1]==1))
    {
        if([sec.text length]==0||([self validateNumbers:texty2]==1))
        {
            if([thr.text length]==0||([self validateNumbers:texty3]==1))
            {
                if([four.text length]==0||([self validateNumbers:texty4]==1))
                {
                    if([fiv.text length]==0||([self validateNumberlimit:texty5]==1))
                    {
                        if([six.text length]==0||([self validateNumberlimit:texty6]==1))
                        {
                            if([sev.text length]==0||([self validateNumbers:texty7]==1))
                            {
                                if([eight.text length]==0||([self validateNumbers:texty8]==1))
                                {
                                    if([nine.text length]==0||([self validateNumberlimit:texty9]==1))
                                    {
                                        if([ten.text length]==0||([self validateNumberlimit:texty10]==1))
                                        {
                                            if([eleven.text length]==0||([self validateNumberlimit:texty11]==1))
                                            {
                                                if([twe.text length]==0||([self validateNumbers:texty12]==1))
                                                {
                                                    if([thrt.text length]==0||([self validateNumbers:texty13]==1))
                                                    {
                                                        if([fourt.text length]==0||([self validateNumbers:texty14]==1))
                                                        {
                                                            if([fift.text length]==0||([self validateNumberlimit:texty15]==1))
                                                            {
                                                                if([sixteen.text length]==0||([self validateNumberlimit:texty16]==1))
                                                                {
                                                                    if([seventeen.text length]==0||([self validateNumberlimit:texty17]==1))
                                                                    {
                                                                        if([eighteen.text length]==0||([self validateNumberlimit:texty18]==1))
                                                                        {
                                                                            if([ninteen.text length]==0||([self validateNumbers:texty19]==1))
                                                                            {
                                                                                if([twenty.text length]==0||([self validateNumbers:texty20]==1))
                                                                                {
                                                                                    if([twentyone.text length]==0||([self validateNumberlimit:texty21]==1))
                                                                                    {
                                                                                        if([twentytwo.text length]==0||([self validateNumberlimit:texty22]==1))
                                                                                        {
                                                                                            if([twentythree.text length]==0||([self validateNumbers:texty23]==1))
                                                                                            {
                                                                                                if([twentyfour.text length]==0||([self validateNumbers:texty24]==1))
                                                                                                {
                                                                                                    if([twentyfive.text length]==0||([self validateNumberlimit:texty25]==1))
                                                                                                    {
                                                                                                        if([twentysix.text length]==0||([self validateNumberlimit:texty26]==1))
                                                                                                        {
                                                                                                            if([other.text length]==0||([self validateString:texty27]==1))
                                                                                                            {
                                                                                                                if([addcomments.text length]==0||([self validateaddress:texty28]==1))
                                                                                                                {
                                                                                                            suc=1;
                                                                          
                                                                                                                    [recorddict setObject:segva forKey:@"segment in 2nd wrist"];
                                                                                                                    [recorddict setObject:first.text forKey:@"first"];
                                                                                                                     [recorddict setObject:sec.text forKey:@"2nd"];
                                                                                                                     [recorddict setObject:thr.text forKey:@"3rd"];
                                                                                                                     [recorddict setObject:four.text forKey:@"4th"];
                                                                                                                     [recorddict setObject:fiv.text forKey:@"5th"];
                                                                                                                     [recorddict setObject:six.text forKey:@"6th"];
                                                                                                                     [recorddict setObject:sev.text forKey:@"7th"];
                                                                                                                     [recorddict setObject:eight.text forKey:@"8th"];
                                                                                                                     [recorddict setObject:nine.text forKey:@"9th"];
                                                                                                                     [recorddict setObject:ten.text forKey:@"10th"];
                                                                                                                     [recorddict setObject:eleven.text forKey:@"11th"];
                                                                                                                     [recorddict setObject:twe.text forKey:@"12th"];
                                                                                                                    [recorddict setObject:thrt.text forKey:@"13th"];
                                                                                                                    [recorddict setObject:fourt.text forKey:@"14th"];
                                                                                                                     [recorddict setObject:fift.text forKey:@"15th"];
                                                                                                                     [recorddict setObject:sixteen.text forKey:@"16th"];
                                                                                                                     [recorddict setObject:seventeen.text forKey:@"17th"];
                                                                                                                     [recorddict setObject:eighteen.text forKey:@"18th"];
                                                                                                                     [recorddict setObject:ninteen.text forKey:@"19th"];
                                                                                                                     [recorddict setObject:twenty.text forKey:@"20th"];
                                                                                                                     [recorddict setObject:twentyone.text forKey:@"21st"];
                                                                                                                     [recorddict setObject:twentytwo.text forKey:@"22nd"];
                                                                                                                     [recorddict setObject:twentythree.text forKey:@"23rd"];
                                                                                                                     [recorddict setObject:twentyfour.text forKey:@"24th"];
                                                                                                                     [recorddict setObject:twentyfive.text forKey:@"25th"];
                                                                                                                     [recorddict setObject:twentysix.text forKey:@"26th"];
                                                                                                                     [recorddict setObject:other.text forKey:@"other in2sd wrist"];
                                                                                                                     [recorddict setObject:addcomments.text forKey:@"addcmts in wrist 2"];
                                                                                                                    
                                                                                                                    
                                                                                                                    [recorddict setObject:checkstring1 forKey:@"checkstringoneinwrist2"];
                                                                                                                    [recorddict setObject:checkstring2 forKey:@"checkstringtwoinwrist2"];
                                                                                                                    NSLog(@"checkstring%@",checktring3);                                                              [recorddict setObject:checktring3 forKey:@"checkstringthreeinwrist2"];
                                                                                                                    [recorddict setObject:checkstring4 forKey:@"checkstringfourinwrist2"];
                                                                                                       
                                                                                                        }
                                                                                                                else
                                                                                                                {
                                                                                                                    suc=0;
                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid addcomments field Value."];
                                                                                                                    
                                                                                                                    
                                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                    [alert show];
                                                                                                                }
                                                                                                                
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                                suc=0;
                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid other text field Value."];
                                                                                                                
                                                                                                                
                                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                [alert show];
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        else
                                                                                                        {
                                                                                                            suc=0;
                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid motor t1 right field Value."];
                                                                                                            
                                                                                                            
                                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                            [alert show];
                                                                                                        }

                                                                                                    }
                                                                                                    else
                                                                                                    {
                                                                                                        suc=0;
                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid motor t1 left field Value."];
                                                                                                        
                                                                                                        
                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                        [alert show];
                                                                                                    }
 
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                    suc=0;
                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid sens t1 right field Value."];
                                                                                                    
                                                                                                    
                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                    [alert show];
                                                                                                }

                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                suc=0;
                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid sens t1 left field Value."];
                                                                                                
                                                                                                
                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                [alert show];
                                                                                            }

                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            suc=0;
                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid motor c8 right field Value."];
                                                                                            
                                                                                            
                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                            [alert show];
                                                                                        }

                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        suc=0;
                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid motor c8 left field Value."];
                                                                                        
                                                                                        
                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                        [alert show];
                                                                                    }

                                                                                }
                                                                                else
                                                                                {
                                                                                    suc=0;
                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid sens c8 right field Value."];
                                                                                    
                                                                                    
                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                    [alert show];
                                                                                }

                                                                            }
                                                                            else
                                                                            {
                                                                                suc=0;
                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid sens c8 left field Value."];
                                                                                
                                                                                
                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                [alert show];
                                                                            }

                                                                        }
                                                                        else
                                                                        {
                                                                            suc=0;
                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid ref c7 right field Value."];
                                                                            
                                                                            
                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                            [alert show];
                                                                        }

                                                                    }
                                                                    else
                                                                    {
                                                                        suc=0;
                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid ref c7 left field Value."];
                                                                        
                                                                        
                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                        [alert show];
                                                                    }

                                                                }
                                                                else
                                                                {
                                                                    suc=0;
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid motor c7 right field Value."];
                                                                    
                                                                    
                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                }

                                                            }
                                                            else
                                                            {
                                                                suc=0;
                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid motor c7 left field Value."];
                                                                
                                                                
                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                [alert show];
                                                            }

                                                        }
                                                        else
                                                        {
                                                            suc=0;
                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid sens c7 right field Value."];
                                                            
                                                            
                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                            [alert show];
                                                        }

                                                    }
                                                    else
                                                    {
                                                        suc=0;
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid sens c7 left field Value."];
                                                        
                                                        
                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                    }

                                                }
                                                else
                                                {
                                                    suc=0;
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid ref c6 right field Value."];
                                                    
                                                    
                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                }

                                            }
                                            else
                                            {
                                                suc=0;
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid ref c6 left field Value."];
                                                
                                                
                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                            }

                                        }
                                        else
                                        {
                                            suc=0;
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid motor c6 right field Value."];
                                            
                                            
                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                        }

                                    }
                                    else
                                    {
                                        suc=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid motor c6 left field Value."];
                                        
                                        
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }

                                }
                                else
                                {
                                    suc=0;
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid sens c6 right field Value."];
                                    
                                    
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }

                            }
                            else
                            {
                                suc=0;
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid sens c6 left field Value."];
                                
                                
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }

                        }
                        else
                        {
                            suc=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid ref c5 right field Value."];
                            
                            
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }

                    }
                    else
                    {
                        suc=0;
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid ref c5 left field Value."];
                        
                        
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }

                }
                else
                {
                    suc=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid motor c5 right field Value."];
                    
                    
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }

            }
            else
            {
                suc=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid motor c5 left field Value."];
                
                
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }

        }
        else
        {
            suc=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid sens c5 right field Value."];
            
            
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }

    }
    else
    {
        suc=0;
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid sens c5 left field Value."];
        
        
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    if(suc==1){
        [self performSegueWithIdentifier:@"wrist2" sender:self];
    }
    
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    NSLog(@"succc value in perform segue %i",suc);
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"wrist2"])
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
    
    
    if ([segue.identifier isEqualToString:@"wrist2"])
    {
        
        NSLog(@"succc value in prepre segue %i ",suc);
       WristExamViewController2 *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in knee exam controller %@",recorddict);
        // destViewController.delegate=self;
        
    }
    
    
    
}

- (IBAction)segbut:(id)sender {
    if(seg1.selectedSegmentIndex==0){
        segva=@"Excellent";
    }
    else  if(seg1.selectedSegmentIndex==1){
        segva=@"Good";
        
    }
    
    else  if(seg1.selectedSegmentIndex==2){
        segva=@"Fair";
    }
    else  if(seg1.selectedSegmentIndex==3){
        segva=@"Poor";
    }
}

@end
