//
//  KneeExamViewController2.m
//  EHR
//
//  Created by deemsys on 2/21/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "WristExamViewController2.h"

@interface WristExamViewController2 ()

@end

@implementation WristExamViewController2
@synthesize checkbut1;
@synthesize checkbut2;
@synthesize  checkbut3;
@synthesize  checkbut4;
@synthesize  checkbut5;
@synthesize  checkbut6;
@synthesize  checkbut7;
@synthesize  checkbut8;
@synthesize  checkbut9;
@synthesize  checkbut10;
@synthesize  checkbut11;
@synthesize  checkbut12;
@synthesize  checkbut13;
@synthesize  checkbut14;
@synthesize  checkbut15;
@synthesize  cancel;
@synthesize recorddict;
@synthesize temp;
int suc;
NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12;
NSString *chec1,*chec2,*chec3,*chec4,*chec5,*chec6,*chec7,*chec8,*chec9,*chec10,*chec11,*chec12,*chec13,*chec14,*chec15;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
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
    othertext.hidden=YES;
    chec1=@"";
    chec2=@"";
    chec3=@"";
    chec4=@"";
    chec5=@"";
    chec6=@"";
    chec7=@"";
    chec8=@"";
    chec9=@"";
    chec10=@"";
    chec11=@"";
    chec12=@"";
    chec13=@"";
    chec14=@"";
    othertext.text=@"";
    
    UITapGestureRecognizer *tapGR1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pickerViewTapped1)];
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
    /*  [first release];
     [second release];
     [three release];
     [four release];
     [four release];
     [six release];
     [seven release];
     [eight release];
     
     [othertext release];
     [signature release];*/
     
     [super dealloc];
}
- (IBAction)checked:(UIButton*)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    if(checkbut1.selected){
        chec1=@"Spinal Decompression";
    }
    else{chec1=@"";
    }
    
    if(checkbut2.selected){
        chec2=@"Chiropractic";
    }
    else{chec2=@"";
    }
    if(checkbut3.selected){
        
        chec3=@"Physical Therapy";
    }
    else{chec3=@"";
    }
    if(checkbut4.selected){
        chec4=@"Orthotics/Bracing";
    }
    else{chec4=@"";
    }
    if(checkbut5.selected){
        chec5=@"Modalities";
    }
    else{chec5=@"";
    }
    if(checkbut6.selected){
        chec6=@"Supplementation";
    }
    else{chec6=@"";
    }
    if(checkbut7.selected){
        chec7=@"HEP";
    }
    else{chec7=@"";
    }
    if(checkbut8.selected){
        chec8=@"Radiographic X-Ray";
    }
    else{chec8=@"";
    }
    if(checkbut9.selected){
        chec9=@"MRI";
    }
    else{chec9=@"";
    }
    if(checkbut10.selected){
        chec10=@"CT Scan";
    }
    else{chec10=@"";
    }
    if(checkbut11.selected){
        chec11=@"Nerve Conduction";
    }
    else{chec11=@"";
    }
    if(checkbut12.selected){
        chec12=@"EMG";
    }
    else{chec12=@"";
    }
    if(checkbut13.selected){
        chec13=@"Outside Refferal";
    }
    else{chec13=@"";
    }
    if(checkbut14.selected){
        chec14=@"D/C";
    }
    else{chec14=@"";
    }
    if(checkbut15.selected){
        othertext.hidden=NO;
        chec15=@"";
    }
    else{chec15=@"";
        othertext.hidden=YES;
        chec15=othertext.text;
    }
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
-(void)dismissKeyboard {
    [first resignFirstResponder];
    [second resignFirstResponder];
    [three resignFirstResponder];
    [four resignFirstResponder];
    [five resignFirstResponder];
    [six resignFirstResponder];
    [seven resignFirstResponder];
    [eight resignFirstResponder];
    [othertext resignFirstResponder];
    [signature resignFirstResponder];
}
- (IBAction)save:(id)sender {
    texty1=[first.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty2=[second.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty3=[three.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty4=[four.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty5=[five.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty6=[six.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty7=[seven.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty8=[eight.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty9=[othertext.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty10=[signature.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    if([signature.text length]!=0)
    {
        if([first.text length]==0||([self validateString:texty1]==1))
        {
            if([second.text length]==0||([self validateString:texty2]==1))
            {
                if([three.text length]==0||([self validateString:texty3]==1))
                {
                    if([four.text length]==0||([self validateString:texty4]==1))
                    {
                        if([five.text length]==0||([self validateString:texty5]==1))
                        {
                            if([six.text length]==0||([self validateString:texty6]==1))
                            {
                                if([seven.text length]==0||([self validateNumberLessFive:texty7]==1))
                                {
                                    if([eight.text length]==0||([self validateNumberLessFive:texty8]==1))
                                    {
                                        if([othertext.text length]==0||([self validateString:texty9]==1)){
                                            if([self validateString:texty10]==1)
                                            {
                                                suc=1;
                                               
                                                [recorddict addEntriesFromDictionary:temp];
                                                [recorddict setObject:first.text forKey:@"firstdiagnosis"];
                                                [recorddict setObject:second.text forKey:@"seconddiagnosis"];
                                                [recorddict setObject:three.text forKey:@"thirddiagnosis"];
                                                [recorddict setObject:four.text forKey:@"fourthdiagnosis"];
                                                [recorddict setObject:five.text forKey:@"fifthdiagnosis"];
                                                [recorddict setObject:six.text forKey:@"sixthdiagnosis"];
                                                [recorddict setObject:seven.text forKey:@"day"];
                                                [recorddict setObject:eight.text forKey:@"week"];
                                                [recorddict setObject:othertext.text forKey:@"othercheck"];
                                                [recorddict setObject:signature.text forKey:@"signature"];
                                                [recorddict setObject:chec1 forKey:@"checkselected1"];
                                                [recorddict setObject:chec2 forKey:@"checkselected2"];
                                                [recorddict setObject:chec3 forKey:@"checkselected3"];
                                                [recorddict setObject:chec4 forKey:@"checkselected4"];
                                                [recorddict setObject:chec5 forKey:@"checkselected5"];
                                                [recorddict setObject:chec6 forKey:@"checkselected6"];
                                                [recorddict setObject:chec7 forKey:@"checkselected7"];
                                                [recorddict setObject:chec8 forKey:@"checkselected8"];
                                                [recorddict setObject:chec9 forKey:@"checkselected9"];
                                                [recorddict setObject:chec10 forKey:@"checkselected10"];
                                                [recorddict setObject:chec11 forKey:@"checkselected11"];
                                                [recorddict setObject:chec12 forKey:@"checkselected12"];
                                                [recorddict setObject:chec13 forKey:@"checkselected13"];
                                                [recorddict setObject:chec14 forKey:@"checkselected14"];
                                                NSLog(@"Record dict Value in final knee exam::%@",recorddict);
                                                
                                            }
                                            else{
                                                suc=0;
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Signature Field"];
                                                
                                                
                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                            }
                                            
                                            
                                        }
                                        else{
                                            suc=0;
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Other text Field"];
                                            
                                            
                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                        }
                                        
                                        
                                    }
                                    
                                    else{
                                        suc=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid week Field"];
                                        
                                        
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    
                                    
                                }
                                else{
                                    suc=0;
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Day Field"];
                                    
                                    
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                                
                                
                            }
                            else{
                                suc=0;
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Sixth Diagnosis Field"];
                                
                                
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                            
                            
                        }
                        else{
                            suc=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Fifth Diagnosis Field"];
                            
                            
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                        
                        
                    }
                    else{
                        suc=0;
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Fourth Diagnosis Field"];
                        
                        
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                    
                    
                }
                else{
                    suc=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Third Diagnosis Field"];
                    
                    
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
                
                
            }
            else{
                suc=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Second Diagnosis Field"];
                
                
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
            
            
        }
        else{
            suc=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid First Diagnosis Field"];
            
            
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
    if(suc==1){
//        [self performSegueWithIdentifier:@"wristfinish" sender:self];
        if(suc==1){
            // [self performSegueWithIdentifier:@"kneefinish" sender:self];
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Info!" message:@"Succes!!"];
            
            
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
            
        }
    }
}

@end
