//
//  ThoracicExamViewController1.m
//  EHR
//
//  Created by Admin on 22/02/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "ThoracicExamViewController1.h"

@interface ThoracicExamViewController1 ()

@end
//othertext.hidden=YES;
//othertext0.hidden=YES;

@implementation ThoracicExamViewController1
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
@synthesize check1;
@synthesize check2;
@synthesize check3;
@synthesize check4;
@synthesize check5;
@synthesize picker1;
@synthesize picker2;
NSString *textview1,*textview2,*oth;

int suc;
NSString *checkstring1,*checkstring2,*checkstring3,*checkstring4,*checkstring5,*segva;
NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20,*texty21,*texty22,*texty23,*texty24,*texty25,*texty26,*texty27,*texty28,*texty29,*texty30,*texty31,*texty32,*texty33,*texty34,*texty35;

NSString *chec1,*chec2,*chec3,*chec4,*chec5,*chec6,*chec7,*chec8,*chec9,*chec10,*chec11,*chec12,*chec13,*chec14,*chec15;
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
    othertext.hidden=YES;
    othertext0.hidden=YES;
    checkstring1=@"";
    checkstring2=@"";
    checkstring3=@"";
    checkstring4=@"";
    checkstring5=@"";
    picker1.hidden=YES;
    picker2.hidden=YES;
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
     chec15=@"";
    othertext.text=@"";
    pickonelab.text=@"T1";
   segva=@"Excellent";
    
    [picker1 setBackgroundColor:([UIColor whiteColor])];
    _patcarearray=[[NSMutableArray alloc] initWithObjects:@"T1", @"T2", @"T3", @"T4", @"T5",@"T6",@"T7",@"T8",@"T9",@"T10",@"T11",@"T12",nil];
    _poarray=[[NSMutableArray alloc] initWithObjects:@"Excellent", @"Good", @"Fair", @"Poor", nil];
    UITapGestureRecognizer *tapGR1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pickerViewTapped1)];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];

	// Do any additional setup after loading the view.
}
- (void)pickerViewTapped1
{
    picker1.hidden=YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)checked:(UIButton*)sender {
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
        checkstring2=@"Sitting";
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
        checkstring4=@"Driving";
    }
    else
        checkstring4=@"";
    if(check5.selected)
    {
        othertext0.hidden=NO;
       // checkstring4=@"Stairs";
    }
    else{
        othertext0.hidden=YES;
       // checkstring4=[othertext0 text];
       // NSLog("Other text::%@",checkstring5);
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
       chec15=othertext.text;;
    }
    else{
        chec15=@"";
        othertext.hidden=YES;
        //chec15=othertext.text;
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


- (void)dealloc {
   
   
  
    [segmentnew2 release];
    [super dealloc];
}

- (IBAction)pick1but:(id)sender {
    if (picker1.hidden==YES)
    {
        picker1.hidden=NO;
        
    }
}

- (IBAction)pick2but:(id)sender {
    if (picker2.hidden==YES)
    {
        picker2.hidden=NO;
        
    }
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if(picker1.hidden==NO)
    {
        picker1.hidden=YES;
    }
    if(picker2.hidden==NO)
    {
        picker2.hidden=YES;
    }
}
#pragma mark - UIPickerView DataSource
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if(pickerView.tag==1)
        
        return [_patcarearray count];
    
   
   else if(pickerView.tag==2)
        
        return [_poarray count];
    
    else
        return 1;
}
#pragma mark - UIPickerView Delegate
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 30.0;
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if(pickerView.tag==1)
        
        return [_patcarearray objectAtIndex:row];
    
    
   
    else if(pickerView.tag==2)
        
        return [_poarray objectAtIndex:row];
    
    
    else
        return
        [_patcarearray objectAtIndex:row];

}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if(pickerView.tag==1)
        
        pickonelab.text=[_patcarearray objectAtIndex:row];
    
    
   
    
    
    pickerView.hidden=YES;
    
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
    [textv1 resignFirstResponder];
    [textv2 resignFirstResponder];
    [othertext0 resignFirstResponder];
    [othertext resignFirstResponder];
    [signature resignFirstResponder];
}
- (IBAction)save:(id)sender {
    textview1=[[textv1.text stringByReplacingOccurrencesOfString:@"\n" withString:@" "]stringByReplacingOccurrencesOfString:@" " withString:@""];
    textview2=[[textv2.text stringByReplacingOccurrencesOfString:@"\n" withString:@" "]stringByReplacingOccurrencesOfString:@" " withString:@""];
    oth=[othertext0.text stringByReplacingOccurrencesOfString:@" " withString:@""];
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
        
        if(([textv1.text length]==0)||[self validateString:textview1]==1){
            if(([textv2.text length]==0)||[self validateString:textview2]==1){
            
                if(([othertext0.text length]==0)||[self validateString:oth]==1){
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
                                        if([othertext.text length]==0||([self validateString:[othertext text]]==1)){
                                            if([self validateString:[signature text]]==1)
                                            {
                                                suc=1;
                                                recorddict=[[NSMutableDictionary alloc]init];
                                                [recorddict addEntriesFromDictionary:temp];
                                                [recorddict setObject:checkstring1 forKey:@"checkstringone"];
                                                [recorddict setObject:checkstring2 forKey:@"checkstringtwo"];
                                                [recorddict setObject:checkstring3 forKey:@"checkstringthree"];
                                                [recorddict setObject:checkstring4 forKey:@"checkstringfour"];
                                                [recorddict setObject:checkstring5 forKey:@"checkstringfive"];
                                                [recorddict setObject:textv1.text forKey:@"textstringone"];
                                                [recorddict setObject:textv2.text forKey:@"textstringtwo"];
                                                [recorddict setObject:othertext0.text forKey:@"otherstringggooo"];
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
                                                [recorddict setObject:chec15 forKey:@"checkselected15"];
                                                [recorddict setObject:pickonelab.text forKey:@"picker one"];
                                                [recorddict setObject:segva forKey:@"seg for pat ccare"];
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
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid other one field."];
                    
                    
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
                
                
            }
            else{
                suc=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"nvalid textview two."];
                
                
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
            
        }
        else{
            suc=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid textview one."];
            
            
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
//        [self performSegueWithIdentifier:@"thoracicfinish" sender:self];
        if(suc==1){
            // [self performSegueWithIdentifier:@"kneefinish" sender:self];
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Info!" message:@"Succes!!"];
            
            
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
            
        }
    }
}
/*- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    NSLog(@"succc value in perform segue %i",suc);
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"thoracicfinish"])
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
    
    
    if ([segue.identifier isEqualToString:@"thoracicfinish"])
    {
        
        NSLog(@"succc value in prepre segue %i ",suc);
       ThoracicExamViewController1 *destViewController = [segue destinationViewController];
        // destViewController.recorddict=recorddict;
        NSLog(@"recorddict in knee exam controller %@",recorddict);
        // destViewController.delegate=self;
        
    }
    
    
    
}*/
- (IBAction)pickselect:(id)sender {
    if(segmentnew2.selectedSegmentIndex==0){
        segva=@"Excellent";
    }
    else  if(segmentnew2.selectedSegmentIndex==1){
        segva=@"Good";
        
    }
    
    else  if(segmentnew2.selectedSegmentIndex==2){
        segva=@"Fair";
    }
    else  if(segmentnew2.selectedSegmentIndex==3){
        segva=@"Poor";
    }
}
@end

