//
//  WristExamViewController.m
//  EHR
//
//  Created by deemsys on 2/24/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//
#import "WristExamViewController1.h"
#import "WristExamViewController.h"

@interface WristExamViewController ()

@end

@implementation WristExamViewController
@synthesize recorddict;
NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20,*texty21,*texty22,*texty23,*texty24,*texty25,*texty26,*texty27,*texty28,*texty29,*texty30,*texty31,*texty32,*texty33,*texty34,*texty35,*texty36,*texty37,*texty38,*texty39,*texty40,*texty41,*texty41,*texty42;
int suc;
NSString *checkstring1,*checkstring2,*checkstring3,*checkstring4;

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
   
    texty1=@"";
    texty2=@"Excellent";
    texty3=@"";
    texty4=@"";
    texty5=@"";
    texty6=@"";
    texty7=@"";
    texty8=@"";
    texty9=@"";
    texty10=@"";
    texty11=@"";
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
     [self.view addGestureRecognizer:tap];

	// Do any additional setup after loading the view.
}

-(void)dismissKeyboard {
    [muscle resignFirstResponder];
    [swell resignFirstResponder];
    [txtv1 resignFirstResponder];
    [first resignFirstResponder];
    [sec resignFirstResponder];
    [thr resignFirstResponder];
    [four resignFirstResponder];
    [fiv resignFirstResponder];
    [six resignFirstResponder];
    [sev resignFirstResponder];
    [eigh resignFirstResponder];
    [nine resignFirstResponder];
    [ten resignFirstResponder];
    [ele resignFirstResponder];
    [twel resignFirstResponder];
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
   

    [patname resignFirstResponder];
    [datefield resignFirstResponder];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
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
- (IBAction)next:(id)sender {
    texty12=[first.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty13=[sec.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty14=[thr.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty15=[four.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty38=[[txtv1.text stringByReplacingOccurrencesOfString:@"\n" withString:@" "]stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty16=[fiv.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty17=[six.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty18=[sev.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty19=[eigh.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty20=[nine.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty21=[ten.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty22=[ele.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty23=[twel.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty24=[thrt.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty25=[fourt.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty26=[fift.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty27=[sixteen.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty28=[seventeen.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty29=[eighteen.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty30=[ninteen.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty31=[twenty.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty32=[twentyone.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty33=[twentytwo.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty34=[patname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty35=[datefield.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty36=[muscle.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty37=[swell.text stringByReplacingOccurrencesOfString:@" " withString:@""];
   
    if(([patname.text length]!=0)&&([datefield.text length]!=0))
    {
        if([self validateString:texty34]==1)
            
        {
            if([self validateDate:texty35]==1){
            if([muscle.text length]==0||([self validateString:texty36]==1)){
                
                if([swell.text length]==0||([self validateString:texty37]==1)){
                    if([txtv1.text length]==0||([self validateString:texty38]==1))
                        
                    {
            
            if([first.text length]==0||([self validateNumbers:texty12]==1))
            {
            if([sec.text length]==0||([self validateNumbers:texty13]==1))
            {
            if([thr.text length]==0||([self validateNumbers:texty14]==1))
                
            {
                if([four.text length]==0||([self validateNumbers:texty15]==1))
                    
                {
                    
                    if([fiv.text length]==0||([self validateNumbers:texty16]==1))
                            
                        {
                            if([six.text length]==0||([self validateNumbers:texty17]==1))
                                
                            {
                                if([sev.text length]==0||([self validateNumbers:texty18]==1))
                                    
                                {
                                    if([eigh.text length]==0||([self validateNumbers:texty19]==1))
                                        
                                    {
                                        if([nine.text length]==0||([self validateNumbers:texty20]==1))
                                            
                                        {
                                            if([ten.text length]==0||([self validateNumbers:texty21]==1))
                                                
                                            {
                                                if([ele.text length]==0||([self validateNumbers:texty22]==1))
                                                    
                                                {
                                                    if([twel.text length]==0||([self validateNumbers:texty23]==1))
                                                        
                                                    {
                                                        if([thrt.text length]==0||([self validateNumbers:texty24]==1))
                                                            
                                                        {
                                                            if([fourt.text length]==0||([self validateNumbers:texty25]==1))
                                                                
                                                            {
                                                                if([fift.text length]==0||([self validateNumbers:texty26]==1))
                                                                    
                                                                {
                                                                    if([sixteen.text length]==0||([self validateNumbers:texty27]==1))
                                                                        
                                                                    {
                                                                        if([seventeen.text length]==0||([self validateNumbers:texty28]==1))
                                                                            
                                                                        {
                                                                            if([eighteen.text length]==0||([self validateNumbers:texty29]==1))
                                                                                
                                                                            {
                                                                                if([ninteen.text length]==0||([self validateNumbers:texty30]==1))
                                                                                    
                                                                                {
                                                                                    if([twenty.text length]==0||([self validateNumbers:texty31]==1))
                                                                                        
                                                                                    {
                                                                                        if([twentyone.text length]==0||([self validateNumbers:texty32]==1))
                                                                                            
                                                                                        {
                                                                                            if([twentytwo.text length]==0||([self validateNumbers:texty33]==1))
                                                                                                
                                                                                            {
                                                                                                suc=1;
                                                                                                recorddict=[[NSMutableDictionary alloc]init];
                                                                                                [recorddict setValue:patname.text forKey:@"patname"];
                                                                                                
                                                                                                 [recorddict setValue:datefield.text forKey:@"datefield"];
                                                                                                
                                                                                                 [recorddict setValue:muscle.text forKey:@"muscle"];
                                                                                                
                                                                                                [recorddict setValue:swell.text forKey:@"swell"];
                                                                                                
                                                                                                 [recorddict setValue:first.text forKey:@"first"];
                                                                                                
                                                                                                 [recorddict setValue:sec.text forKey:@"second"];
                                                                                                
                                                                                                 [recorddict setValue:thr.text forKey:@"three"];
                                                                                                
                                                                                                 [recorddict setValue:four.text forKey:@"four"];
                                                                                                
                                                                                                 [recorddict setValue:fiv.text forKey:@"five"];
                                                                                                
                                                                                                 [recorddict setValue:six.text forKey:@"six"];
                                                                                                
                                                                                                 [recorddict setValue:sev.text forKey:@"seven"];
                                                                                                
                                                                                                 [recorddict setValue:eigh.text forKey:@"eight"];
                                                                                                
                                                                                                
                                                                                                 [recorddict setValue:nine.text forKey:@"nine"];
                                                                                                
                                                                                                 [recorddict setValue:ten.text forKey:@"ten"];
                                                                                                
                                                                                                 [recorddict setValue:ele.text forKey:@"eleven"];
                                                                                                
                                                                                                 [recorddict setValue:twel.text forKey:@"twelve"];
                                                                                                
                                                                                                 [recorddict setValue:thrt.text forKey:@"thirteen"];
                                                                                                 [recorddict setValue:fourt.text forKey:@"fourteen"];
                                                                                                 [recorddict setValue:fift.text forKey:@"fifteen"];
                                                                                                 [recorddict setValue:sixteen.text forKey:@"sixteen"];
                                                                                                 [recorddict setValue:seventeen.text forKey:@"seventeen"];
                                                                                                 [recorddict setValue:eighteen.text forKey:@"eighteen"];
                                                                                                 [recorddict setValue:ninteen.text forKey:@"ninteen"];
                                                                                                 [recorddict setValue:twenty.text forKey:@"twenty"];
                                                                                                 [recorddict setValue:twentyone.text forKey:@"twentyone"];
                                                                                                 [recorddict setValue:twentytwo.text forKey:@"twenty two"];
                                                                                                
                                                                                          [recorddict setValue:txtv1.text forKey:@"text view one"];
                                                                                                
                                                                                                [recorddict setValue:texty1 forKey:@"seg1"];
                                                                                                [recorddict setValue:texty2 forKey:@"seg2"];
                                                                                                [recorddict setValue:texty3 forKey:@"seg3"];
                                                                                                [recorddict setValue:texty4 forKey:@"seg4"];
                                                                                                [recorddict setValue:texty5 forKey:@"seg5"];
                                                                                                [recorddict setValue:texty6 forKey:@"seg6"];
                                                                                                [recorddict setValue:texty7 forKey:@"seg7"];
                                                                                                [recorddict setValue:texty8 forKey:@"seg8"];
                                                                                                [recorddict setValue:texty9 forKey:@"seg9"];
                                                                                                [recorddict setValue:texty10 forKey:@"seg10"];
                                                                                                [recorddict setValue:texty11 forKey:@"seg11"];
                                                                                                
                                                                                                [recorddict setObject:checkstring1 forKey:@"checkstringone"];
                                                                                                [recorddict setObject:checkstring2 forKey:@"checkstringtwo"];
                                                                                                [recorddict setObject:checkstring3 forKey:@"checkstringthree"];
                                                                                                
                                                                                             
                                                                                                
                                                                                                
                                                                                     

                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                suc=0;
                                                                                                
                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid ULTT right field"];
                                                                                                
                                                                                                
                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                [alert show];
                                                                                            }
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            suc=0;
                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid ULTT left field"];
                                                                                            
                                                                                            
                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                            [alert show];
                                                                                        }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                        suc=0;
                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid tinn right field"];
                                                                                        
                                                                                        
                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                        [alert show];
                                                                                    }
                                                                                }
                                                                                else
                                                                                {
                                                                                    suc=0;
                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid tinn left field"];
                                                                                    
                                                                                    
                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                    [alert show];
                                                                                }
                                                                            }
                                                                            else
                                                                            {
                                                                                suc=0;
                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid pro sip right field"];
                                                                                
                                                                                
                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                [alert show];
                                                                            }
                                                                        }
                                                                        else
                                                                        {
                                                                            suc=0;
                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid pro sup left field"];
                                                                            
                                                                            
                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                            [alert show];
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        suc=0;
                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid fink right field"];
                                                                        
                                                                        
                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                        [alert show];
                                                                    }
                                                                }
                                                                else
                                                                {
                                                                    suc=0;
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid finl left field"];
                                                                    
                                                                    
                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                }
                                                            }
                                                            else
                                                            {
                                                                suc=0;
                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid  wrist rad dev right field"];
                                                                
                                                                
                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                [alert show];
                                                            }
                                                        }
                                                        else
                                                        {
                                                            suc=0;
                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid wrist rad dev left field"];
                                                            
                                                            
                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                            [alert show];
                                                        }
                                                    }
                                                    else
                                                    {
                                                        suc=0;
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid reverse phalen right field"];
                                                        
                                                        
                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                    }
                                                }
                                                else
                                                {
                                                    suc=0;
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid reverse phalen left field"];
                                                    
                                                    
                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                }
                                            }
                                            else
                                            {
                                                suc=0;
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid ulnar dev right field"];
                                                
                                                
                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                            }
                                        }
                                        else
                                        {
                                            suc=0;
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid ulnar dev left field"];
                                            
                                            
                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                        }
                                    }
                                    else
                                    {
                                        suc=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid phalen right field"];
                                        
                                        
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                }
                                else
                                {
                                    suc=0;
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid phalen left field"];
                                    
                                    
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                            }
                            else
                            {
                                suc=0;
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid wrist extens right field"];
                                
                                
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                        }
                        else
                        {
                            suc=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid wrist exten left field"];
                            
                            
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }
                    }
                
                else
                {
                    suc=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Allen right field."];
                    
                    
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
            }
            else
            {
                suc=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Allen left field."];
                
                
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
        }
            else
            {
                suc=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid wrist flex right field."];
                
                
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
            }
            else
            {
                suc=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid wrist flex left field."];
                
                
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
        }
                    else
                    {
                        suc=0;
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid TEXT FIELD BIG."];
                        
                        
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }
                }
                else
                {
                    suc=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid swell field."];
                    
                    
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }
            }
            else
            {
                suc=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid muscle field."];
                
                
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
        }
            else
            {
                suc=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Date Field."];
                
                
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
        }
        else
                  {
            suc=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid patient name."];
            
            
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }else{
        suc=0;
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter all Required Fields"];
        
        
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    if(suc==1){
        [self performSegueWithIdentifier:@"wrist1" sender:self];
    }
}

- (IBAction)s11:(id)sender {
    if(seg11.selectedSegmentIndex==0){
        texty11=@"Left";
    }
    else if(seg11.selectedSegmentIndex==1){
        texty11=@"Right";
        
    }
}

- (IBAction)s10:(id)sender {
    if(seg10.selectedSegmentIndex==0){
        texty10=@"Left";
    }
    else if(seg10.selectedSegmentIndex==1){
        texty10=@"Right";
        
    }
}

- (IBAction)s9:(id)sender {
    if(seg9.selectedSegmentIndex==0){
        texty9=@"Left";
    }
    else if(seg9.selectedSegmentIndex==1){
        texty9=@"Right";
        
    }
}

- (IBAction)s8:(id)sender {
    if(seg8.selectedSegmentIndex==0){
        texty8=@"Left";
    }
    else if(seg8.selectedSegmentIndex==1){
        texty8=@"Right";
        
    }
}

- (IBAction)s7:(id)sender {
    if(seg7.selectedSegmentIndex==0){
        texty7=@"Left";
    }
    else if(seg7.selectedSegmentIndex==1){
        texty7=@"Right";
        
    }
}

- (IBAction)s6:(id)sender {
    if(seg6.selectedSegmentIndex==0){
        texty6=@"Left";
    }
    else if(seg6.selectedSegmentIndex==1){
        texty6=@"Right";
        
    }
}

- (IBAction)s5:(id)sender {
    if(seg5.selectedSegmentIndex==0){
        texty5=@"Left";
    }
    else if(seg5.selectedSegmentIndex==1){
        texty5=@"Right";
        
    }
}

- (IBAction)s4:(id)sender {
    if(seg4.selectedSegmentIndex==0){
        texty4=@"Left";
    }
    else if(seg4.selectedSegmentIndex==1){
        texty4=@"Right";

}
}
- (IBAction)s2:(id)sender {
    if(seg2.selectedSegmentIndex==0){
        texty2=@"Excellent";
    }
    else if(seg2.selectedSegmentIndex==1){
        texty2=@"Good";
        
    }
    else if(seg2.selectedSegmentIndex==2){
        texty2=@"Fair";
        
    }
    else if(seg2.selectedSegmentIndex==3){
        texty2=@"Severe";
        
    }
}

- (IBAction)s1:(id)sender {
    if(seg1.selectedSegmentIndex==0){
       texty1=@"Left";
    }
    else if(seg1.selectedSegmentIndex==1){
       texty1=@"Right";
        
    }
    
   
}

- (IBAction)s3:(id)sender {
    if(seg3.selectedSegmentIndex==0){
        texty3=@"Left";
    }
    else if(seg3.selectedSegmentIndex==1){
        texty3=@"Right";

}
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    NSLog(@"succc value in perform segue %i",suc);
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"wrist1"])
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
    
    
    if ([segue.identifier isEqualToString:@"wrist1"])
    {
        
        NSLog(@"succc value in prepre segue %i ",suc);
       WristExamViewController1 *destViewController = [segue destinationViewController];
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
    if(check1.selected)
    {
        checkstring1=@"All Soft Tissue Unremarkable";
    }
    else
        checkstring1=@"";
    if(check2.selected)
    {
        checkstring2=@"Unremarkable	";
    }
    else
        checkstring2=@"";
    if(check3.selected)
    {
        checkstring3=@"Unremarkable	";
    }
    else
        checkstring3=@"";
}
@end
