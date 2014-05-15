//
//  KneeExamViewController1.m
//  EHR
//
//  Created by deemsys on 2/21/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "KneeExamViewController1.h"

@interface KneeExamViewController1 ()


@end


@implementation KneeExamViewController1

@synthesize  check2;
@synthesize check1;
@synthesize check3;
@synthesize check4;
int suc;

NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20,*texty21,*texty22,*texty23,*texty24,*texty25,*texty26,*texty27,*texty28,*texty29,*texty30,*texty31,*texty32,*texty33,*texty34,*texty35,*texty36,*texty37,*texty38,*texty39;
NSString *checkstring1,*checkstring2,*checkstring3,*checkstring4,*segva;
#pragma mark - UIPickerView DataSource
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
    checkstring3=@"";
    checkstring4=@"";
    segva=@"Excellent";
    temp=[[NSMutableDictionary alloc]init];
    temp=recorddict;
    
    UITapGestureRecognizer *tapGR1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pickerViewTapped1)];
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

- (IBAction)check1:(UIButton *)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    if(check1.selected)
    {
        checkstring1=@"Neurological Testing Unremarkable";
    }
    else
        checkstring1=@"";
    if(check2.selected)
    {
        checkstring2=@"Walking";
    }
    else
        checkstring2=@"";
    if(check3.selected)
    {
        checkstring3=@"Standing";
    }
    else
        checkstring3=@"";
    if(check4.selected)
    {
        checkstring4=@"Stairs";
    }
    else
        checkstring4=@"";
    
}


- (void)dealloc {
 /*   [sensleft release];
    [sensright release];
    [motorleft release];
    [motorright release];
    [sensel2left release];
    [sensl2right release];
    [motorl2left release];
    [motorl2right release];
    [sensl3left release];
    [sensl3right release];
    [motorl3left release];
    [motorl3right release];
    [sensl4left release];
    [sensl4right release];
    [motorl4left release];
    [motorl4right release];
    [refl4left release];
    [refl4right release];
    [refl5left release];
    [refl5right release];
  
    [refsiright release];
    [motorl5left release];
   
   
 
    [pickylable release];
  
    [addcomments release];
    [neuro release];
    [walklab release];
    [standlab release];
    [stairslab release];
    [check2 release];
    */
    [segpat release];
    [super dealloc];
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
-(void)dismissKeyboard {

    [sensleft resignFirstResponder];
    [sensright resignFirstResponder];
     [motorleft resignFirstResponder];
     [motorright resignFirstResponder];
     [sensel2left resignFirstResponder];
    [sensl2right resignFirstResponder];
    [motorl2left resignFirstResponder];
     [motorl2right resignFirstResponder];
     [sensl3left resignFirstResponder];
     [sensl3right resignFirstResponder];
     [motorl3left resignFirstResponder];
     [motorl3right resignFirstResponder];
     [sensl4left resignFirstResponder];
     [sensl4right resignFirstResponder];
     [motorl4left resignFirstResponder];
     [motorl4right resignFirstResponder];
     [refl4left resignFirstResponder];
     [refl4right resignFirstResponder];
     [sensel5left resignFirstResponder];
     [sensel5right resignFirstResponder];
     [motorl5left resignFirstResponder];
     [motorl5right resignFirstResponder];
     [refsileft resignFirstResponder];
     [refsiright resignFirstResponder];
    [refl5left resignFirstResponder];
     [refl5right resignFirstResponder];
     [sensileft resignFirstResponder];
     [sensiright resignFirstResponder];
     [motorsiright resignFirstResponder];
     [motorsileft resignFirstResponder];
    
     [addcomments resignFirstResponder];

}


-(BOOL)validateNumberLessFive:(NSString *)user

{
  //  NSString *userFormat1 =@"[A-Z0-9a-z._/-]+";
    NSString *userFormat1 =@"[0-5]{1}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}
-(BOOL)validateString:(NSString *)user

{
      NSString *userFormat1 =@"[A-Z0-9a-z._/-]+";
   // NSString *userFormat1 =@"[0-5]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}


- (IBAction)nextact:(id)sender {
    texty1=[sensleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty2=[sensright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty3=[motorleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty4=[motorright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty5=[sensel2left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty6=[sensl2right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty7=[motorl2left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty8=[motorl2right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty9=[sensl3left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty10=[sensl3right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty11=[motorl3left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty12=[motorl3right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty13=[sensl4left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty14=[sensl4right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty15=[motorl4left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty16=[motorl4right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty17=[refl4left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty18=[refl4right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty19=[sensel5left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty20=[sensel5right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty21=[motorl5left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty22=[motorl5right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty23=[refl5left.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty24=[refl5right.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty25=[sensileft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty26=[sensiright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty27=[motorsileft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty28=[motorsiright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty29=[refsileft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty30=[refsiright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
   // texty31=[right1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    
    if([sensleft.text length]==0||([self validateString:texty1]==1))
    {
        if([sensright.text length]==0||([self validateString:texty2]==1))
        {
            if([motorleft.text length]==0||([self validateNumberLessFive:texty3]==1))
            {
                if([motorright.text length]==0||([self validateNumberLessFive:texty4]==1))
                {
                    if([sensel2left.text length]==0||([self validateString:texty5]==1))
                    {
                        if([sensl2right.text length]==0||([self validateString:texty6]==1))
                        {
                            if([motorl2left.text length]==0||([self validateNumberLessFive:texty7]==1))
                            {
                                if([motorl2right.text length]==0||([self validateNumberLessFive:texty8]==1))
                                {
                                    if([sensl3left.text length]==0||([self validateString:texty9]==1))
                                    {
                                        if([sensl3right.text length]==0||([self validateString:texty10]==1))
                                        {
                                            if([motorl3left.text length]==0||([self validateNumberLessFive:texty11]==1))
                                            {
                                                if([motorl3right.text length]==0||([self validateNumberLessFive:texty12]==1))
                                                {
                                                    if([sensl4left.text length]==0||([self validateString:texty13]==1))
                                                    {
                                                        if([sensl4right.text length]==0||([self validateString:texty14]==1))
                                                        {
                                                            if([motorl4left.text length]==0||([self validateNumberLessFive:texty15]==1))
                                                            {
                                                                if([motorl4right.text length]==0||([self validateNumberLessFive:texty16]==1))
                                                                {
                                                                    if([refl4left.text length]==0||([self validateNumberLessFive:texty17]==1))
                                                                    {
                                                                        
                                                                        if([refl4right.text length]==0||([self validateNumberLessFive:texty18]==1))
                                                                        {
                                                                            
                                                                            if([sensel5left.text length]==0||([self validateString:texty19]==1))
                                                                            {
                                                                                if([sensel5right.text length]==0||([self validateString:texty20]==1))
                                                                                {
                                                                                    if([motorl5left.text length]==0||([self validateNumberLessFive:texty21]==1))
                                                                                    {
                                                                                        if([motorl5right.text length]==0||([self validateNumberLessFive:texty21]==1))
                                                                                        {
                                                                                            if([refl5left.text length]==0||([self validateNumberLessFive:texty23]==1))
                                                                                            {
                                                                                                if([refl5right.text length]==0||([self validateNumberLessFive:texty24]==1))
                                                                                                {
                                                                                                    if([sensileft.text length]==0||([self validateString:texty25]==1))
                                                                                                    {
                                                                                                        if([sensiright.text length]==0||([self validateString:texty26]==1))
                                                                                                        {
                                                                                                            if([motorsileft.text length]==0||([self validateNumberLessFive:texty27]==1))
                                                                                                            {
                                                                                                                if([motorsiright.text length]==0||([self validateNumberLessFive:texty28]==1))
                                                                                                                {
                                                                                                                    if([refsileft.text length]==0||([self validateNumberLessFive:texty29]==1))
                                                                                                                    {
                                                                                                                        if([refsiright.text length]==0||([self validateNumberLessFive:texty30]==1))
                                                                                                                        {
                                                                                                                            suc=1;
                                                                                                                            recorddict=[[NSMutableDictionary alloc]init];
                                                                                                                            [recorddict addEntriesFromDictionary:temp];
                                                                                                                            [recorddict setObject:sensleft.text forKey:@"sensel1left"];
                                                                                                                            [recorddict setObject:sensl3left.text forKey:@"sensel3left"];
                                                                                                                            [recorddict setObject:sensel2left.text forKey:@"sensel2left"];
                                                                                                                            [recorddict setObject:sensl4left.text forKey:@"sensel4left"];
                                                                                                                            [recorddict setObject:sensel5left.text forKey:@"sensel5left"];
                                                                                                                            [recorddict setObject:sensileft.text forKey:@"sensesileft"];
                                                                                                                            [recorddict setObject:sensright.text forKey:@"sensel1right"];
                                                                                                                            [recorddict setObject:sensl3right.text forKey:@"sensel3right"];
                                                                                                                            [recorddict setObject:sensl2right.text forKey:@"sensel2right"];
                                                                                                                            [recorddict setObject:sensl4right.text forKey:@"sensel4right"];
                                                                                                                            [recorddict setObject:sensel5right.text forKey:@"sensel5right"];
                                                                                                                            [recorddict setObject:sensiright.text forKey:@"sensesiright"];
                                                                                                                            [recorddict setObject:motorleft.text forKey:@"motorl1left"];
                                                                                                                            [recorddict setObject:motorl3left.text forKey:@"motorl3left"];
                                                                                                                            [recorddict setObject:motorl2left.text forKey:@"motorl2left"];
                                                                                                                            [recorddict setObject:motorl4left.text forKey:@"motorl4left"];
                                                                                                                            [recorddict setObject:motorl5left.text forKey:@"motorl5left"];
                                                                                                                            [recorddict setObject:motorsileft.text forKey:@"motrorsileft"];
                                                                                                                            [recorddict setObject:motorright.text forKey:@"motorl1right"];
                                                                                                                            [recorddict setObject:motorl3right.text forKey:@"motorl3right"];
                                                                                                                            [recorddict setObject:motorl2right.text forKey:@"motorl2right"];
                                                                                                                            [recorddict setObject:motorl4right.text forKey:@"motorl4right"];
                                                                                                                            [recorddict setObject:motorl5right.text forKey:@"motorl5right"];
                                                                                                                            [recorddict setObject:motorsiright.text forKey:@"motrorsiright"];
                                                                                                                            [recorddict setObject:motorleft.text forKey:@"motorl1left"];
                                                                                                                            [recorddict setObject:refl4left.text forKey:@"refl3left"];
                                                                                                                            [recorddict setObject:refl5left.text forKey:@"refl5left"];
                                                                                                                            [recorddict setObject:refsileft.text forKey:@"refsileft"];
                                                                                                                            [recorddict setObject:refl4right.text forKey:@"refl3right"];
                                                                                                                            [recorddict setObject:refl5right.text forKey:@"refl5right"];
                                                                                                                            [recorddict setObject:refsiright.text forKey:@"refsiright"];
                                                                                                                             [recorddict setObject:checkstring1 forKey:@"checkstring1"];
                                                                                                                            [recorddict setObject:checkstring2 forKey:@"checkstring2"];
                                                                                                                            [recorddict setObject:checkstring3 forKey:@"checkstring3"];
                                                                                                                            [recorddict setObject:checkstring4 forKey:@"checkstring4"];
                                                                                                                             [recorddict setObject:addcomments.text forKey:@"addcomments"];
                                                                                                                             [recorddict setObject:segva forKey:@"pickervalue"];
                                                                                                                           
                                                                                                                            

                                                                                                                            NSLog(@"Dicionary in knee form two::%@",recorddict);
                                                                                                                           
                                                                                                                        }
                                                                                                                        else{
                                                                                                                            suc=0;
                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid ref si right Value."];
                                                                                                                            
                                                                                                                            
                                                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                            [alert show];
                                                                                                                        }
                                                                                                                    }
                                                                                                                    else{
                                                                                                                        suc=0;
                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid ref si Left Value."];
                                                                                                                        
                                                                                                                        
                                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                        [alert show];
                                                                                                                    }

                                                                                                                }
                                                                                                                else{
                                                                                                                    suc=0;
                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid motor si right Value."];
                                                                                                                    
                                                                                                                    
                                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                    [alert show];
                                                                                                                }
                                                                                                            }
                                                                                                            else{
                                                                                                                suc=0;
                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid motor si Left Value."];
                                                                                                                
                                                                                                                
                                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                [alert show];
                                                                                                            }

                                                                                                            
                                                                                                        }
                                                                                                        else{
                                                                                                            suc=0;
                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid sense si right Value."];
                                                                                                            
                                                                                                            
                                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                            [alert show];
                                                                                                        }
                                                                                                    }
                                                                                                    else{
                                                                                                        suc=0;
                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid sense si Left Value."];
                                                                                                        
                                                                                                        
                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                        [alert show];
                                                                                                    }

                                                                                                }
                                                                                                else{
                                                                                                    suc=0;
                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid REf L5 right Value."];
                                                                                                    
                                                                                                    
                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                    [alert show];
                                                                                                }
                                                                                            }
                                                                                            else{
                                                                                                suc=0;
                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Ref L5 Left Value."];
                                                                                                
                                                                                                
                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                [alert show];
                                                                                            }

                                                                                        }
                                                                                        else{
                                                                                            suc=0;
                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Motoe L5 right Value."];
                                                                                            
                                                                                            
                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                            [alert show];
                                                                                        }
                                                                                    }
                                                                                    else{
                                                                                        suc=0;
                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Motoe L5 Left Value."];
                                                                                        
                                                                                        
                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                        [alert show];
                                                                                    }

                                                                                }
                                                                                else{
                                                                                    suc=0;
                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Sense L5 right Value."];
                                                                                    
                                                                                    
                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                    [alert show];
                                                                                }
                                                                            }
                                                                            else{
                                                                                suc=0;
                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Sense L5 Left Value."];
                                                                                
                                                                                
                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                [alert show];
                                                                            }

                                                                        }
                                                                        else{
                                                                            suc=0;
                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Ref L4 right Value."];
                                                                            
                                                                            
                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                            [alert show];
                                                                        }
                                                                    }
                                                                    else{
                                                                        suc=0;
                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Ref L4 Left Value."];
                                                                        
                                                                        
                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                        [alert show];
                                                                    }

                                                                }
                                                                else{
                                                                    suc=0;
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Motoe L4 right Value."];
                                                                    
                                                                    
                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                }
                                                            }
                                                            else{
                                                                suc=0;
                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Motoe L4 Left Value."];
                                                                
                                                                
                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                [alert show];
                                                            }
                                                        }
                                                        else{
                                                            suc=0;
                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid sense L4 Left Value."];
                                                            
                                                            
                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                            [alert show];
                                                        }
                                                    }
                                                    else{
                                                        suc=0;
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid sense L4 Left Value."];
                                                        
                                                        
                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                    }
                                                }
                                                else{
                                                    suc=0;
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Motor L3 Right Value."];
                                                    
                                                    
                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                }
                                            }
                                            else{
                                                suc=0;
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Motor L3 LeftValue."];
                                                
                                                
                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                            }
                                        }
                                        else{
                                            suc=0;
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Sense l3 right Value."];
                                            
                                            
                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                        }
                                    }
                                    else{
                                        suc=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Sense L3 Left Value."];
                                        
                                        
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                }
                                else{
                                    suc=0;
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Motor L2 right Value."];
                                    
                                    
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                            }
                            else{
                                suc=0;
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Motor L2 left Value."];
                                
                                
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }

                        }
                        else{
                            suc=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Sense L2 right Value."];
                            
                            
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                    }
                    else{
                        suc=0;
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid sense l2 Left Value."];
                        
                        
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                }
                else{
                    suc=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Motor Right Value."];
                    
                    
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
            }
            else{
                suc=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Motor Left Value."];
                
                
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
        }
        else{
            suc=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Sense Right Value."];
            
            
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
           }
    else{
        suc=0;
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Sense Left Value."];
        
        
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    if(suc==1){
          [self performSegueWithIdentifier:@"kneeexam1" sender:self];
    }

    
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    NSLog(@"succc value in perform segue %i",suc);
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"kneeexam"])
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
    
    
    if ([segue.identifier isEqualToString:@"kneeexam"])
    {
        
        NSLog(@"succc value in prepre segue %i ",suc);
        KneeExamViewController1 *destViewController = [segue destinationViewController];
        // destViewController.recorddict=recorddict;
        NSLog(@"recorddict in knee exam controller %@",recorddict);
        // destViewController.delegate=self;
        
    }
    
    
    
}

- (IBAction)pickselect:(id)sender {
    if(segpat.selectedSegmentIndex==0){
        segva=@"Excellent";
            }
    else  if(segpat.selectedSegmentIndex==1){
        segva=@"Good";
        
    }

    else  if(segpat.selectedSegmentIndex==2){
        segva=@"Fair";
    }
    else  if(segpat.selectedSegmentIndex==3){
        segva=@"Poor";
    }
}
@end
