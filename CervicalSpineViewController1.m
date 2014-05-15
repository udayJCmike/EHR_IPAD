//
//  CervicalSpineViewController1.m
//  physicalexam
//
//  Created by deemsys on 2/27/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "CervicalSpineViewController1.h"
#import "ThoracicSpineViewController.h"

@interface CervicalSpineViewController1 ()

@end

@implementation CervicalSpineViewController1
@synthesize recorddict;
int suc;
NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20,*texty21,*texty22,*texty23,*texty24,*texty27,*texty28,*texty29,*texty30,*texty31,*texty32,*texty33,*texty34,*texty35,*texty36,*texty37,*texty38,*texty39,*texty40,*texty41,*texty42,*texty43,*texty44,*texty45,*texty46,*texty47;

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
    texty1=@"0";
    texty2=@"0";
    texty3=@"0";
    texty4=@"0";
    texty5=@"0";
    texty6=@"0";
    texty7=@"0";
    texty8=@"0";
    texty9=@"0";
    texty10=@"0";
    texty11=@"0";
    texty12=@"0";
    
     texty13=@"0";
     texty14=@"0";
     texty15=@"0";
     texty16=@"0";
     texty17=@"0";
     texty18=@"0";
    
    
    
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
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
   
    [seg1 release];
        [super dealloc];
}
- (IBAction)cancel:(id)sender {
}
-(void)dismissKeyboard {
    [_1 resignFirstResponder];
    [_2 resignFirstResponder];
    [_3 resignFirstResponder];
    [_4 resignFirstResponder];
    [_5 resignFirstResponder];
    [_6 resignFirstResponder];
}

- (IBAction)save:(id)sender {
    
    texty19=[_1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty20=[_2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty21=[_3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty22=[_4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty23=[_5.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty24=[_6.text stringByReplacingOccurrencesOfString:@" " withString:@""];
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
        texty29=@"Right";
    }
    else{
        texty29=@"";
    }
    if(check4.selected){
        texty30=@"Left";
    }
    else{
        texty30=@"";
    }
    if(check5.selected){
        texty31=@"Right";
    }
    else{
        texty31=@"";
    }
    if(check6.selected){
        texty32=@"Left";
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
        texty35=@"Right";
    }
    else{
        texty35=@"";
    }
    if(check10.selected){
        texty36=@"Left";
    }
    else{
        texty36=@"";
    }
    if(check11.selected){
        texty37=@"Right";
    }
    else{
        texty37=@"";
    }
    if(check12.selected){
        texty38=@"Left";
    }
    else{
        texty38=@"";
    }
    if([_1.text length]==0||([self validateString:texty19]==1))
    {
        if([_2.text length]==0||([self validateString:texty20]==1))
        {
            if([_3.text length]==0||([self validateString:texty21]==1))
            {
                if([_4.text length]==0||([self validateString:texty22]==1))
                {
                    if([_5.text length]==0||([self validateString:texty23]==1))
                    {
                        if([_6.text length]==0||([self validateString:texty24]==1))
                        {
                            suc=1;
                            [recorddict setObject:_1.text forKey:@"C-5Normal"];
                            [recorddict setObject:_2.text forKey:@"C-6Normal"];
                            [recorddict setObject:_3.text forKey:@"C-7Normal"];
                            [recorddict setObject:_4.text forKey:@"C-8Normal"];
                            [recorddict setObject:_5.text forKey:@"T-1Normal"];
                            [recorddict setObject:_6.text forKey:@"OtherNormal"];
                            
                            [recorddict setObject:texty1 forKey:@"myotomesneuroexamright1"];
                            [recorddict setObject:texty2 forKey:@"myotomesneuroexamleft1"];
                            [recorddict setObject:texty3 forKey:@"myotomesneuroexamright2"];
                            [recorddict setObject:texty4 forKey:@"myotomesneuroexamleft2"];
                            [recorddict setObject:texty5 forKey:@"myotomesneuroexamright3"];
                            [recorddict setObject:texty6 forKey:@"myotomesneuroexamleft3"];
                            [recorddict setObject:texty7 forKey:@"myotomesneuroexamright4"];
                            [recorddict setObject:texty8 forKey:@"myotomesneuroexamleft4"];
                            [recorddict setObject:texty9 forKey:@"myotomesneuroexamright5"];
                            [recorddict setObject:texty10 forKey:@"myotomesneuroexamleft5"];
                            [recorddict setObject:texty11 forKey:@"myotomesneuroexamright6"];
                            [recorddict setObject:texty12 forKey:@"myotomesneuroexamleft6"];
                            
                            [recorddict setObject:texty13 forKey:@"deeptendonneuroexamright1"];
                            [recorddict setObject:texty14 forKey:@"deeptendonneuroexamleft1"];
                            [recorddict setObject:texty15 forKey:@"deeptendonneuroexamright2"];
                            [recorddict setObject:texty16 forKey:@"deeptendonneuroexamleft2"];
                            [recorddict setObject:texty17 forKey:@"deeptendonneuroexamright3"];
                            [recorddict setObject:texty18 forKey:@"deeptendonneuroexamleft3"];
                            
                            
                            [recorddict setObject:texty27 forKey:@"abnormalright1"];
                            [recorddict setObject:texty28 forKey:@"abnormalleft1"];
                            [recorddict setObject:texty29 forKey:@"abnormalright2"];
                            [recorddict setObject:texty30 forKey:@"abnormalleft2"];
                            [recorddict setObject:texty31 forKey:@"abnormalright3"];
                            [recorddict setObject:texty32 forKey:@"abnormalleft3"];
                            [recorddict setObject:texty33 forKey:@"abnormalright4"];
                            [recorddict setObject:texty34 forKey:@"abnormalleft4"];
                            [recorddict setObject:texty35 forKey:@"abnormalright5"];
                            [recorddict setObject:texty36 forKey:@"abnormalleft5"];
                            [recorddict setObject:texty37 forKey:@"abnormalright6"];
                            [recorddict setObject:texty38 forKey:@"abnormalleft6"];
                            NSLog(@"Record dict in cervical form two::%@",recorddict);
                            suc=1;
                            

                        } else
                        {
                            suc=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Other field Value."];
                            
                            
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                        
                    }
                    else
                    {
                        suc=0;
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid T-1 field Value."];
                        
                        
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                    
                }
                else
                {
                    suc=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid C-8 field Value."];
                    
                    
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
                
            }
            else
            {
                suc=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid C-7 field Value."];
                
                
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
            
        }
        else
        {
            suc=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid C-6 field Value."];
            
            
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
        
    }
    else
    {
        suc=0;
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid C-5 field Value."];
        
        
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    if(suc==1){
        [self performSegueWithIdentifier:@"physic3" sender:self];
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
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    NSLog(@"succc value in perform segue %i",suc);
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"physic3"])
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
    
    
    if ([segue.identifier isEqualToString:@"physic3"])
    {
        
        NSLog(@"succc value in prepre segue %i ",suc);
       ThoracicSpineViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in cervical 2 controller %@",recorddict);
        // destViewController.delegate=self;
        
    }
    
    
    
}

- (IBAction)segbut1:(id)sender {
    if(seg1.selectedSegmentIndex==0){
    texty1=@"0";
    }
   else if(seg1.selectedSegmentIndex==1){
        texty1=@"1";
    }
   else if(seg1.selectedSegmentIndex==2){
        texty1=@"2";
    }
   else if(seg1.selectedSegmentIndex==3){
        texty1=@"3";
    }
   else if(seg1.selectedSegmentIndex==4){
       texty1=@"4";
   }
   else if(seg1.selectedSegmentIndex==5){
       texty1=@"5";
   }
    
}
- (IBAction)segbut2:(id)sender {
    if(seg2.selectedSegmentIndex==0){
        texty2=@"0";
    }
    else if(seg2.selectedSegmentIndex==1){
        texty2=@"1";
    }
    else if(seg2.selectedSegmentIndex==2){
        texty2=@"2";
    }
    else if(seg2.selectedSegmentIndex==3){
        texty2=@"3";
    }
    else if(seg2.selectedSegmentIndex==4){
        texty2=@"4";
    }
    else if(seg2.selectedSegmentIndex==5){
        texty2=@"5";
    }
    
}
- (IBAction)segbut3:(id)sender {
    if(seg3.selectedSegmentIndex==0){
        texty3=@"0";
    }
    else if(seg3.selectedSegmentIndex==1){
        texty3=@"1";
    }
    else if(seg3.selectedSegmentIndex==2){
        texty3=@"2";
    }
    else if(seg3.selectedSegmentIndex==3){
        texty3=@"3";
    }
    else if(seg3.selectedSegmentIndex==4){
        texty3=@"4";
    }
    else if(seg3.selectedSegmentIndex==5){
        texty3=@"5";
    }
    
}
- (IBAction)segbut4:(id)sender {
    if(seg4.selectedSegmentIndex==0){
        texty4=@"0";
    }
    else if(seg4.selectedSegmentIndex==1){
        texty4=@"1";
    }
    else if(seg4.selectedSegmentIndex==2){
        texty4=@"2";
    }
    else if(seg4.selectedSegmentIndex==3){
        texty4=@"3";
    }
    else if(seg4.selectedSegmentIndex==4){
        texty4=@"4";
    }
    else if(seg4.selectedSegmentIndex==5){
        texty4=@"5";
    }
    
}
- (IBAction)segbut5:(id)sender {
    if(seg5.selectedSegmentIndex==0){
        texty5=@"0";
    }
    else if(seg5.selectedSegmentIndex==1){
        texty5=@"1";
    }
    else if(seg5.selectedSegmentIndex==2){
        texty5=@"2";
    }
    else if(seg5.selectedSegmentIndex==3){
        texty5=@"3";
    }
    else if(seg5.selectedSegmentIndex==4){
        texty5=@"4";
    }
    else if(seg5.selectedSegmentIndex==5){
        texty5=@"5";
    }
    
}
- (IBAction)segbut6:(id)sender {
    if(seg6.selectedSegmentIndex==0){
        texty6=@"0";
    }
    else if(seg6.selectedSegmentIndex==1){
        texty6=@"1";
    }
    else if(seg6.selectedSegmentIndex==2){
        texty6=@"2";
    }
    else if(seg6.selectedSegmentIndex==3){
        texty6=@"3";
    }
    else if(seg6.selectedSegmentIndex==4){
        texty6=@"4";
    }
    else if(seg6.selectedSegmentIndex==5){
        texty6=@"5";
    }
    
}
- (IBAction)segbut7:(id)sender {
    if(seg7.selectedSegmentIndex==0){
        texty7=@"0";
    }
    else if(seg7.selectedSegmentIndex==1){
        texty7=@"1";
    }
    else if(seg7.selectedSegmentIndex==2){
        texty7=@"2";
    }
    else if(seg7.selectedSegmentIndex==3){
        texty7=@"3";
    }
    else if(seg7.selectedSegmentIndex==4){
        texty7=@"4";
    }
    else if(seg7.selectedSegmentIndex==5){
        texty7=@"5";
    }
    
}
- (IBAction)segbut8:(id)sender {
    if(seg8.selectedSegmentIndex==0){
        texty8=@"0";
    }
    else if(seg8.selectedSegmentIndex==1){
        texty8=@"1";
    }
    else if(seg8.selectedSegmentIndex==2){
        texty8=@"2";
    }
    else if(seg8.selectedSegmentIndex==3){
        texty8=@"3";
    }
    else if(seg8.selectedSegmentIndex==4){
        texty8=@"4";
    }
    else if(seg8.selectedSegmentIndex==5){
        texty8=@"5";
    }
    
}
- (IBAction)segbut9:(id)sender {
    if(seg9.selectedSegmentIndex==0){
        texty9=@"0";
    }
    else if(seg9.selectedSegmentIndex==1){
        texty9=@"1";
    }
    else if(seg9.selectedSegmentIndex==2){
        texty9=@"2";
    }
    else if(seg9.selectedSegmentIndex==3){
        texty9=@"3";
    }
    else if(seg9.selectedSegmentIndex==4){
        texty9=@"4";
    }
    else if(seg9.selectedSegmentIndex==5){
        texty9=@"5";
    }
    
}
- (IBAction)segbut10:(id)sender {
    if(seg10.selectedSegmentIndex==0){
        texty10=@"0";
    }
    else if(seg10.selectedSegmentIndex==1){
        texty10=@"1";
    }
    else if(seg10.selectedSegmentIndex==2){
        texty10=@"2";
    }
    else if(seg10.selectedSegmentIndex==3){
        texty10=@"3";
    }
    else if(seg10.selectedSegmentIndex==4){
        texty10=@"4";
    }
    else if(seg10.selectedSegmentIndex==5){
        texty10=@"5";
    }
    
}
- (IBAction)segbut11:(id)sender {
    if(seg11.selectedSegmentIndex==0){
        texty11=@"0";
    }
    else if(seg11.selectedSegmentIndex==1){
        texty11=@"1";
    }
    else if(seg11.selectedSegmentIndex==2){
        texty11=@"2";
    }
    else if(seg11.selectedSegmentIndex==3){
        texty11=@"3";
    }
    else if(seg11.selectedSegmentIndex==4){
        texty11=@"4";
    }
    else if(seg11.selectedSegmentIndex==5){
        texty11=@"5";
    }
    
}
- (IBAction)segbut12:(id)sender {
    if(seg12.selectedSegmentIndex==0){
        texty12=@"0";
    }
    else if(seg12.selectedSegmentIndex==1){
        texty12=@"1";
    }
    else if(seg12.selectedSegmentIndex==2){
        texty12=@"2";
    }
    else if(seg12.selectedSegmentIndex==3){
        texty12=@"3";
    }
    else if(seg12.selectedSegmentIndex==4){
        texty12=@"4";
    }
    else if(seg12.selectedSegmentIndex==5){
        texty12=@"5";
    }
    
}
- (IBAction)segbut13:(id)sender {
    if(seg13.selectedSegmentIndex==0){
        texty13=@"0";
    }
    else if(seg13.selectedSegmentIndex==1){
        texty13=@"1";
    }
    else if(seg13.selectedSegmentIndex==2){
        texty13=@"2";
    }
    else if(seg13.selectedSegmentIndex==3){
        texty13=@"3";
    }
    else if(seg13.selectedSegmentIndex==4){
        texty13=@"4";
    }
    
}
- (IBAction)segbut14:(id)sender {
    if(seg14.selectedSegmentIndex==0){
        texty14=@"0";
    }
    else if(seg14.selectedSegmentIndex==1){
        texty14=@"1";
    }
    else if(seg14.selectedSegmentIndex==2){
        texty14=@"2";
    }
    else if(seg14.selectedSegmentIndex==3){
        texty14=@"3";
    }
    else if(seg14.selectedSegmentIndex==4){
        texty14=@"4";
    }
    
}
- (IBAction)segbut15:(id)sender {
    if(seg15.selectedSegmentIndex==0){
        texty15=@"0";
    }
    else if(seg15.selectedSegmentIndex==1){
        texty15=@"1";
    }
    else if(seg15.selectedSegmentIndex==2){
        texty15=@"2";
    }
    else if(seg15.selectedSegmentIndex==3){
        texty15=@"3";
    }
    else if(seg15.selectedSegmentIndex==4){
        texty15=@"4";
    }
    
}
- (IBAction)segbut16:(id)sender {
    if(seg16.selectedSegmentIndex==0){
        texty16=@"0";
    }
    else if(seg16.selectedSegmentIndex==1){
        texty16=@"1";
    }
    else if(seg16.selectedSegmentIndex==2){
        texty16=@"2";
    }
    else if(seg16.selectedSegmentIndex==3){
        texty16=@"3";
    }
    else if(seg16.selectedSegmentIndex==4){
        texty16=@"4";
    }
    
}
- (IBAction)segbut17:(id)sender {
    if(seg17.selectedSegmentIndex==0){
        texty17=@"0";
    }
    else if(seg17.selectedSegmentIndex==1){
        texty17=@"1";
    }
    else if(seg17.selectedSegmentIndex==2){
        texty17=@"2";
    }
    else if(seg17.selectedSegmentIndex==3){
        texty17=@"3";
    }
    else if(seg17.selectedSegmentIndex==4){
        texty17=@"4";
    }
    
}
- (IBAction)segbut18:(id)sender {
    if(seg18.selectedSegmentIndex==0){
        texty18=@"0";
    }
    else if(seg18.selectedSegmentIndex==1){
        texty18=@"1";
    }
    else if(seg18.selectedSegmentIndex==2){
        texty18=@"2";
    }
    else if(seg18.selectedSegmentIndex==3){
        texty18=@"3";
    }
    else if(seg18.selectedSegmentIndex==4){
        texty18=@"4";
    }
    
}
@end
