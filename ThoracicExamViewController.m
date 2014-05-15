//
//  ThoracicExamViewController.m
//  EHR
//
//  Created by Admin on 22/02/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "ThoracicExamViewController.h"

@interface ThoracicExamViewController ()

@end

@implementation ThoracicExamViewController
int suc;
NSString *check1,*check2,*check3,*check4;
NSString *segs1,*segs2,*segs3,*segs4,*segs5,*segs6,*segs7,*segs8,*segs9,*segs10,*segs11,*segs12,*segs13;
NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20,*texty21,*texty22,*texty23,*texty24,*texty25,*texty26,*texty27,*texty28,*texty29,*texty30,*texty31,*texty32,*texty33,*texty34,*texty35;


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
    segs1=@"";
    segs2=@"";
    segs3=@"";
    segs4=@"";
    segs5=@"";
    segs6=@"";
    segs7=@"";
    segs8=@"";
    segs9=@"";
    segs10=@"";
    segs11=@"";
    segs12=@"";
    segs13=@"";
    check1=@"";
    check2=@"";
    
    check3=@"";
    check4=@"";
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
   
	// Do any additional setup after loading the view.
}
-(void)dismissKeyboard {
    [datefield resignFirstResponder];
    [patname resignFirstResponder];
    [text2 resignFirstResponder];
     [text3 resignFirstResponder];
     [othernotes resignFirstResponder];
     [flex resignFirstResponder];
     [t1 resignFirstResponder];
     [t2 resignFirstResponder];
     [t3 resignFirstResponder];
     [t4 resignFirstResponder];
     [t5 resignFirstResponder];
     [t6 resignFirstResponder];
     [t7 resignFirstResponder];
     [t8 resignFirstResponder];
     [t9 resignFirstResponder];
     [t10 resignFirstResponder];
     [t11 resignFirstResponder];
     [t12 resignFirstResponder];
     [rotl resignFirstResponder];
     [rotr resignFirstResponder];
     [latflex resignFirstResponder];
     [latflexr resignFirstResponder];
     [extens resignFirstResponder];
     [br resignFirstResponder];
     [bl resignFirstResponder];
     [str resignFirstResponder];
    [stl resignFirstResponder];
     [sor resignFirstResponder];
     [sol resignFirstResponder];
     [dr resignFirstResponder];
     [dl resignFirstResponder];
     [vl resignFirstResponder];
     [vr resignFirstResponder];
    [sl resignFirstResponder];
     [sr resignFirstResponder];
     [adl resignFirstResponder];
     [adr resignFirstResponder];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
     
    [checky1 release];
    [checky2 release];
    [checky3 release];
    [checky4 release];
        [super dealloc];
}

- (IBAction)seg13:(id)sender {
    if(seg13.selectedSegmentIndex==0)
    {
        segs13=@"Left";
    }
    else if (seg1.selectedSegmentIndex==1)
    {
        segs13=@"Right";
    }
    else segs13=NULL;
}

- (IBAction)seg12:(id)sender {
    if(seg12.selectedSegmentIndex==0)
    {
        segs12=@"Left";
    }
    else if (seg12.selectedSegmentIndex==1)
    {
        segs12=@"Right";
    }
    else segs12=NULL;
}

- (IBAction)sseg11:(id)sender {
    if(seg11.selectedSegmentIndex==0)
    {
        segs11=@"Left";
    }
    else if (seg11.selectedSegmentIndex==1)
    {
        segs11=@"Right";
    }
    else segs11=NULL;
}

- (IBAction)seg10:(id)sender {
    if(seg10.selectedSegmentIndex==0)
    {
        segs10=@"Left";
    }
    else if (seg10.selectedSegmentIndex==1)
    {
        segs10=@"Right";
    }
    else segs10=NULL;
}

- (IBAction)seg4:(id)sender {
    if(seg4.selectedSegmentIndex==0)
    {
        segs4=@"Left";
    }
    else if (seg4.selectedSegmentIndex==1)
    {
        segs4=@"Right";
    }
    else segs4=NULL;
}

- (IBAction)seg1:(id)sender {
    if(seg1.selectedSegmentIndex==0)
    {
        segs1=@"Left";
    }
    else if (seg1.selectedSegmentIndex==1)
    {
        segs1=@"Right";
    }
    else segs1=NULL;
}

- (IBAction)seg2:(id)sender {
    if(seg2.selectedSegmentIndex==0)
    {
        segs2=@"Left";
    }
    else if (seg2.selectedSegmentIndex==1)
    {
        segs2=@"Right";
    }
    else segs2=NULL;
}

- (IBAction)seg3:(id)sender {
    if(seg3.selectedSegmentIndex==0)
    {
        segs3=@"Left";
    }
    else if (seg3.selectedSegmentIndex==1)
    {
        segs3=@"Right";
    }
    else segs3=NULL;
}

- (IBAction)seg5:(id)sender {
    if(seg5.selectedSegmentIndex==0)
    {
        segs5=@"Left";
    }
    else if (seg5.selectedSegmentIndex==1)
    {
        segs5=@"Right";
    }
    else segs5=NULL;
}

- (IBAction)seg6:(id)sender {
    if(seg6.selectedSegmentIndex==0)
    {
        segs6=@"Left";
    }
    else if (seg6.selectedSegmentIndex==1)
    {
        segs6=@"Right";
    }
    else segs6=NULL;
}

- (IBAction)seg7:(id)sender {
    if(seg7.selectedSegmentIndex==0)
    {
        segs7=@"Left";
    }
    else if (seg7.selectedSegmentIndex==1)
    {
        segs7=@"Right";
    }
    else segs7=NULL;
}

- (IBAction)seg8:(id)sender {
    if(seg8.selectedSegmentIndex==0)
    {
        segs8=@"Left";
    }
    else if (seg8.selectedSegmentIndex==1)
    {
        segs8=@"Right";
    }
    else segs8=NULL;
}

- (IBAction)seg9:(id)sender {
    if(seg9.selectedSegmentIndex==0)
    {
        segs9=@"Left";
    }
    else if (seg9.selectedSegmentIndex==1)
    {
        segs9=@"Right";
    }
    else segs9=NULL;
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

- (IBAction)next:(id)sender {
    texty1=[patname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty2=[datefield.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty3=[text2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty4=[text3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty5=[othernotes.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty6=[flex.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty7=[t1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty8=[t2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty9=[adl.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty10=[adr.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty11=[extens.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty12=[t3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty13=[t4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty14=[sl.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty15=[sr.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty16=[latflex.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty17=[t5.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty18=[t6.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty19=[vl.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty20=[vr.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty21=[latflexr.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty22=[rotl.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty23=[t7.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty24=[t8.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty25=[dl.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty26=[dr.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty27=[rotr.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty28=[t9.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty29=[t10.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty30=[sol.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty31=[sor.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     texty32=[t11.text stringByReplacingOccurrencesOfString:@" " withString:@""];
 texty33=[t12.text stringByReplacingOccurrencesOfString:@" " withString:@""];

 texty34=[stl.text stringByReplacingOccurrencesOfString:@" " withString:@""];
 texty35=[str.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    if(([patname.text length]!=0)&&([datefield.text length]!=0))
    {
        if([self validateNames:texty1]==1)
        {
            if([self validateDate:texty2]==1)
            {
                if(([text2.text length]==0)||[self validateNames:texty3]==1)
                {
                    if(([text3.text length]==0)||[self validateNames:texty4]==1)
                    {
                        
                        if(([othernotes.text length]==0)||[self validateNames:texty5]==1)
                        {
                            
                            if(([flex.text length]==0)||[self validateNumbers:texty6]==1)
                            {
                                if(([t1.text length]==0)||[self validateNumbers:texty7]==1)
                                {
                                    if(([t2.text length]==0)||[self validateNumbers:texty8]==1)
                                    {
                                        if(([adl.text length]==0)||[self validateNumbers:texty9]==1)
                                        {
                                            if(([adr.text length]==0)||[self validateNumbers:texty10]==1)
                                            {
                                                if(([extens.text length]==0)||[self validateNumbers:texty11]==1)
                                                {
                                                    if(([t3.text length]==0)||[self validateNumbers:texty12]==1)
                                                    {
                                                        if(([t4.text length]==0)||[self validateNumbers:texty13]==1)
                                                        {
                                                            if(([sl.text length]==0)||[self validateNumbers:texty14]==1)
                                                            {
                                                                if(([sr.text length]==0)||[self validateNumbers:texty15]==1)
                                                                {
                                                                    if(([latflex.text length]==0)||[self validateNumbers:texty16]==1)
                                                                    {
                                                                        
                                                                        if(([t5.text length]==0)||[self validateNumbers:texty17]==1)
                                                                        {
                                                                            if(([t6.text length]==0)||[self validateNumbers:texty18]==1)
                                                                            {
                                                                                if(([vl.text length]==0)||[self validateNumbers:texty19]==1)
                                                                                {
                                                                                    if(([vr.text length]==0)||[self validateNumbers:texty20]==1)
                                                                                    {
                                                                                        if(([latflexr.text length]==0)||[self validateNumbers:texty21]==1)
                                                                                        {
                                                                                            if(([rotl.text length]==0)||[self validateNumbers:texty22]==1)
                                                                                            {
                                                                                                if(([t7.text length]==0)||[self validateNumbers:texty23]==1)
                                                                                                {
                                                                                                    if(([t8.text length]==0)||[self validateNumbers:texty24]==1)
                                                                                                    {
                                                                                                        if(([dl.text length]==0)||[self validateNumbers:texty25]==1)
                                                                                                        {
                                                                                                            if(([dr.text length]==0)||[self validateNumbers:texty26]==1)
                                                                                                            {
                                                                                                                if(([rotr.text length]==0)||[self validateNumbers:texty27]==1)
                                                                                                                {
                                                                                                                    if(([t9.text length]==0)||[self validateNumbers:texty28]==1)
                                                                                                                    {
                                                                                                                        if(([t10.text length]==0)||[self validateNumbers:texty29]==1)
                                                                                                                        {
                                                                                                                            if(([sol.text length]==0)||[self validateNumbers:texty30]==1)
                                                                                                                            {
                                                                                                                                if(([sor.text length]==0)||[self validateNumbers:texty31]==1)
                                                                                                                                {
                                                                                                                                    if(([t11.text length]==0)||[self validateNumbers:texty32]==1)
                                                                                                                                    {
                                                                                                                                        if(([t12.text length]==0)||[self validateNumbers:texty33]==1)
                                                                                                                                        {
                                                                                                                                            if(([stl.text length]==0)||[self validateNumbers:texty34]==1)
                                                                                                                                            {
                                                                                                                                                
                                                                                                                                                if(([str.text length]==0)||[self validateNumbers:texty35]==1)
                                                                                                                                                {
                                                                                                                                                    suc=1;
                                                                                                                                                    recorddict=[[NSMutableDictionary alloc]init];
                                                                                                                                                    [recorddict setValue:datefield.text forKey:@"datey"];
                                                                                                                                                    [recorddict setValue:patname.text forKey:@"patname"];
                                                                                                                                                    [recorddict setValue:text2.text forKey:@"text2"];
                                                                                                                                                    [recorddict setValue:text3.text forKey:@"text3"];
                                                                                                                                                    [recorddict setValue:othernotes.text forKey:@"othernotes"];
                                                                                                                                                    [recorddict setValue:flex.text forKey:@"flex"];
                                                                                                                                                    [recorddict setValue:t1.text forKey:@"t1"];
                                                                                                                                                    [recorddict setValue:t2.text forKey:@"t2"];[recorddict setValue:t3.text forKey:@"t3"];[recorddict setValue:t4.text forKey:@"t4"];
                                                                                                                                                    [recorddict setValue:t5.text forKey:@"t5"];
                                                                                                                                                    [recorddict setValue:t6.text forKey:@"t6"];[recorddict setValue:t7.text forKey:@"t7"];
                                                                                                                                                    [recorddict setValue:t8.text forKey:@"t8"];
                                                                                                                                                    [recorddict setValue:t9.text forKey:@"t9"];
                                                                                                                                                    [recorddict setValue:t10.text forKey:@"t10"];
                                                                                                                                                    [recorddict setValue:t11.text forKey:@"t11"];
                                                                                                                                                    [recorddict setValue:t12.text forKey:@"t12"];
                                                                                                                                                    
                                                                                                                                                    [recorddict setValue:extens.text forKey:@"extens"];
                                                                                                                                                    [recorddict setValue:rotl.text forKey:@"rotl"];
                                                                                                                                                    [recorddict setValue:rotr.text forKey:@"rotr"];
                                                                                                                                                    [recorddict setValue:latflex.text forKey:@"latflex"];
                                                                                                                                                    [recorddict setValue:latflexr.text forKey:@"latflexr"];
                                                                                                                                                    [recorddict setValue:br.text forKey:@"br"];
                                                                                                                                                    [recorddict setValue:bl.text forKey:@"bl"];
                                                                                                                                                    [recorddict setValue:str.text forKey:@"str"];
                                                                                                                                                    [recorddict setValue:stl.text forKey:@"stl"];
                                                                                                                                                    [recorddict setValue:sol.text forKey:@"sol"];
                                                                                                                                                    [recorddict setValue:sor.text forKey:@"sor"];[recorddict setValue:dl.text forKey:@"dl"];
                                                                                                                                                    [recorddict setValue:dr.text forKey:@"dr"];
                                                                                                                                                    [recorddict setValue:vl.text forKey:@"vl"];[recorddict setValue:vr.text forKey:@"vr"];
                                                                                                                                                    [recorddict setValue:sr.text forKey:@"sr"];
                                                                                                                                                    [recorddict setValue:sl.text forKey:@"sl"];[recorddict setValue:adr.text forKey:@"adr"];
                                                                                                                                                    [recorddict setValue:adl.text forKey:@"adl"];
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    [recorddict setValue:segs1 forKey:@"firstseg"];
                                                                                                                                                    [recorddict setValue:segs2 forKey:@"secondseg"];
                                                                                                                                                    [recorddict setValue:segs3 forKey:@"thirdseg"];
                                                                                                                                                    [recorddict setValue:segs4 forKey:@"fourthseg"];
                                                                                                                                                    [recorddict setValue:segs5 forKey:@"fifthseg"];
                                                                                                                                                    [recorddict setValue:segs6 forKey:@"sixthseg"];
                                                                                                                                                    [recorddict setValue:segs7 forKey:@"seventhseg"];
                                                                                                                                                    [recorddict setValue:segs8 forKey:@"eigthseg"];
                                                                                                                                                    [recorddict setValue:segs9 forKey:@"ninthseg"];
                                                                                                                                                    [recorddict setValue:segs10 forKey:@"tenthseg"];
                                                                                                                                                    [recorddict setValue:segs11 forKey:@"eleventhseg"];
                                                                                                                                                    [recorddict setValue:segs12 forKey:@"twelthseg"];
                                                                                                                                                    [recorddict setValue:segs13 forKey:@"thirteenthseg"];
                                                                                                                                                    
                                                                                                                                                    [recorddict setValue:check1 forKey:@"firstcheck"];
                                                                                                                                                    [recorddict setValue:check2 forKey:@"secondcheck"];
                                                                                                                                                    [recorddict setValue:check3 forKey:@"thirdcheck"];
                                                                                                                                                    [recorddict setValue:check4 forKey:@"fourthcheck"];
                                                                                                                                                    NSLog(@"recorddict in knee exam controller %@",recorddict);                                                                                          }
                                                                                                                                                else{
                                                                                                                                                    suc=0;
                                                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid str field."];
                                                                                                                                                    
                                                                                                                                                    
                                                                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                    [alert show];
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                            else{
                                                                                                                                                suc=0;
                                                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid stl field."];
                                                                                                                                                
                                                                                                                                                
                                                                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                                [alert show];
                                                                                                                                            }
                                                                                                                                            
                                                                                                                                            
                                                                                                                                        }
                                                                                                                                        else{
                                                                                                                                            suc=0;
                                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid t12field."];
                                                                                                                                            
                                                                                                                                            
                                                                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                            [alert show];
                                                                                                                                        }
                                                                                                                                        
                                                                                                                                        
                                                                                                                                    }
                                                                                                                                    else{
                                                                                                                                        suc=0;
                                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid t11 field."];
                                                                                                                                        
                                                                                                                                        
                                                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                        [alert show];
                                                                                                                                    }
                                                                                                                                    
                                                                                                                                    
                                                                                                                                }
                                                                                                                                else{
                                                                                                                                    suc=0;
                                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid sor field."];
                                                                                                                                    
                                                                                                                                    
                                                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                    [alert show];
                                                                                                                                }
                                                                                                                                
                                                                                                                                
                                                                                                                            }
                                                                                                                            else{
                                                                                                                                suc=0;
                                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid sol field."];
                                                                                                                                
                                                                                                                                
                                                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                [alert show];
                                                                                                                            }
                                                                                                                            
                                                                                                                            
                                                                                                                        }
                                                                                                                        else{
                                                                                                                            suc=0;
                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid t10 field."];
                                                                                                                            
                                                                                                                            
                                                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                            [alert show];
                                                                                                                        }
                                                                                                                        
                                                                                                                        
                                                                                                                    }
                                                                                                                    else{
                                                                                                                        suc=0;
                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid t9 field."];
                                                                                                                        
                                                                                                                        
                                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                        [alert show];
                                                                                                                    }
                                                                                                                    
                                                                                                                }
                                                                                                                else{
                                                                                                                    suc=0;
                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid rotr field."];
                                                                                                                    
                                                                                                                    
                                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                    [alert show];
                                                                                                                }
                                                                                                                
                                                                                                                
                                                                                                            }
                                                                                                            else{
                                                                                                                suc=0;
                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid dr field."];
                                                                                                                
                                                                                                                
                                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                [alert show];
                                                                                                            }
                                                                                                            
                                                                                                        }
                                                                                                        else{
                                                                                                            suc=0;
                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid dl field."];
                                                                                                            
                                                                                                            
                                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                            [alert show];
                                                                                                        }
                                                                                                        
                                                                                                    }
                                                                                                    else{
                                                                                                        suc=0;
                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid t8 field."];
                                                                                                        
                                                                                                        
                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                        [alert show];
                                                                                                    }
                                                                                                    
                                                                                                }
                                                                                                else{
                                                                                                    suc=0;
                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid tl field."];
                                                                                                    
                                                                                                    
                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                    [alert show];
                                                                                                }
                                                                                                
                                                                                            }
                                                                                            else{
                                                                                                suc=0;
                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid rot l field."];
                                                                                                
                                                                                                
                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                [alert show];
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        else{
                                                                                            suc=0;
                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Lateral Flexion Right field."];
                                                                                            
                                                                                            
                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                            [alert show];
                                                                                        }
                                                                                        
                                                                                    }
                                                                                    else{
                                                                                        suc=0;
                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid vr field."];
                                                                                        
                                                                                        
                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                        [alert show];
                                                                                    }
                                                                                    
                                                                                }
                                                                                else{
                                                                                    suc=0;
                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid vl field."];
                                                                                    
                                                                                    
                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                    [alert show];
                                                                                }
                                                                                
                                                                            }
                                                                            else{
                                                                                suc=0;
                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid t6 field."];
                                                                                
                                                                                
                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                [alert show];
                                                                            }
                                                                            
                                                                        }
                                                                        else{
                                                                            suc=0;
                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid T5 field."];
                                                                            
                                                                            
                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                            [alert show];
                                                                        }
                                                                        
                                                                    }
                                                                    
                                                                    else{
                                                                        suc=0;
                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Latflex L field."];
                                                                        
                                                                        
                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                        [alert show];
                                                                    }
                                                                    
                                                                }
                                                                else{
                                                                    suc=0;
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid sr field."];
                                                                    
                                                                    
                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                }
                                                                
                                                            }
                                                            else{
                                                                suc=0;
                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid sl  field."];
                                                                
                                                                
                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                [alert show];
                                                            }
                                                            
                                                            
                                                        }
                                                        else{
                                                            suc=0;
                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid t4 field."];
                                                            
                                                            
                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                            [alert show];
                                                        }
                                                        
                                                        
                                                    }
                                                    else{
                                                        suc=0;
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid t3 field."];
                                                        
                                                        
                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                    }
                                                    
                                                    
                                                }
                                                else{
                                                    suc=0;
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid extension field."];
                                                    
                                                    
                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                }
                                                
                                                
                                            }
                                            else{
                                                suc=0;
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid ad R field."];
                                                
                                                
                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                            }
                                            
                                            
                                        }
                                        else{
                                            suc=0;
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid ad L field."];
                                            
                                            
                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                        }
                                        
                                        
                                    }
                                    else{
                                        suc=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid t2 field."];
                                        
                                        
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    
                                    
                                }
                                else{
                                    suc=0;
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid T1 field."];
                                    
                                    
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                                
                            }
                            else{
                                suc=0;
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Flexion field."];
                                
                                
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                        }
                        else{
                            suc=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Other notes field."];
                            
                            
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                    }
                    else{
                        suc=0;
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Text three field."];
                        
                        
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                    
                }
                else{
                    suc=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Text two field."];
                    
                    
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
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Patient Name."];
            
            
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
        
    }
    else{
        suc=0;
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter all Required Fields"];
        
        
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    
    if(suc==1){
        [self performSegueWithIdentifier:@"thoracic1" sender:self];
    }
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[A-Za-z0-9]*)";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
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
- (IBAction)checkchange:(UIButton *)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    } if(checky1.selected){
        check1=@"All Soft Tissue Unremarkable";
    }
    else
        check1=@"";
    
    if(checky2.selected){
        check2=@"Unremarkable";
    }
    else
        check2=@"";
    if(checky3.selected){
        check3=@"Unremarkable";
    }
    else
        check3=@"";
    if(checky4.selected){
        check4=@"Circumferential Measures are Unremarkable";
    }
    else
        check4=@"";
    
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    NSLog(@"succc value in perform segue %i",suc);
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"thoracic1"])
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
    
    
    if ([segue.identifier isEqualToString:@"thor"])
    {
        
        NSLog(@"succc value in prepre segue %i ",suc);
        ThoracicExamViewController *destViewController = [segue destinationViewController];
        // destViewController.recorddict=recorddict;
        NSLog(@"recorddict in knee exam controller %@",recorddict);
        // destViewController.delegate=self;
        
    }
    
    
    
}


@end
