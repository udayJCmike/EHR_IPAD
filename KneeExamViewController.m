//
//  KneeExamViewController.m
//  EHR
//
//  Created by deemsys on 2/20/14.
//  Copyright (c) 2014 DeemSysInc. All rights reserved.
//

#import "KneeExamViewController.h"

@interface KneeExamViewController ()

@end

@implementation KneeExamViewController
@synthesize check4;
@synthesize check4lab;
@synthesize datefield;
@synthesize segment4;
@synthesize segment7;
@synthesize segment6;
@synthesize semimem;

@synthesize gaitpicker;

@synthesize gaitlabel;


@synthesize gaitarray;

NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20,*texty21,*texty22,*texty23,*texty24,*texty25,*texty26,*texty27,*texty28,*texty29,*texty30,*texty31,*texty32,*texty33,*texty34,*texty35,*texty36,*texty37,*texty38,*texty39;
int suc;
NSString *seg1,*seg2,*seg3,*seg4,*seg5,*seg6,*seg7,*seg8,*segnew1,*segnew2;
NSString *check1,*check2,*check3,*checky4,*check5,*check6;
#pragma mark - UIPickerView DataSource
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)dismissKeyboard {
    [datefield resignFirstResponder];
    [patname resignFirstResponder];
    [check1text resignFirstResponder];
    [check2text resignFirstResponder];
    [ antleft resignFirstResponder];
    [antright resignFirstResponder];
    [flexion resignFirstResponder];
    [extension resignFirstResponder];
    [postleft resignFirstResponder];
    [postright resignFirstResponder];
    [internalleft resignFirstResponder];
    [externalleft resignFirstResponder];
    [externalright resignFirstResponder];
    [internalright resignFirstResponder];
    [lclleft resignFirstResponder];
    [lclright resignFirstResponder];
    [right1 resignFirstResponder];
    [right2 resignFirstResponder];
    [right3 resignFirstResponder];
    [right4 resignFirstResponder];
    [left1 resignFirstResponder];
    [left2 resignFirstResponder];
    [left3 resignFirstResponder];
    [left4 resignFirstResponder];
    [patright resignFirstResponder];
    [patleft resignFirstResponder];
    [ cmpright resignFirstResponder];
    [cmpleft resignFirstResponder];
    [corleft resignFirstResponder];
    [corright resignFirstResponder];
    [menisleft resignFirstResponder];
    [menisright resignFirstResponder];
    [medleft resignFirstResponder];
    [medright resignFirstResponder];
    [mclleft resignFirstResponder];
    [mclright resignFirstResponder];
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    check1text.hidden=YES;
    gaitpicker.hidden=YES;
    check2text.hidden=YES;
    pelvicpicker.hidden=YES;
    gaitlabel.text=@"Normal";
    pelviclabel.text=@"None";
    anqlabel.text=@"Excellent";
    check1=@"";
    check2=@"";
    segnew1=@"None";
    segnew2=@"Excellent";
    check3=@"";
    checky4=@"";
    
    check6=@"";
    check5=@"";
    
    seg1=@"";
    seg2=@"";

    seg3=@"";
    seg4=@"";

    seg6=@"";
    seg5=@"";

seg7=@"";
    seg8=@"";
    anqpicker.hidden=YES;
    [gaitpicker setBackgroundColor:([UIColor whiteColor])];
    [pelvicpicker setBackgroundColor:([UIColor whiteColor])];
    [anqpicker setBackgroundColor:([UIColor whiteColor])];

   gaitarray=[[NSMutableArray alloc] initWithObjects:@"Normal", @"Antalgic", @"Shuffling", @"Limp", @"Stagger",@"Cane Assisted",@"Wheel Chair",nil];
    
   
    
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
- (void)pickerViewTapped1
{
    gaitpicker.hidden=YES;
}

- (void)dealloc {
    [segmentnew1 release];
    [segmentnew2 release];
     [super dealloc];
   
   
}

#pragma mark - UIPickerView DataSource
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if(pickerView.tag==1)
        
        return [gaitarray count];
    
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
        
        return [gaitarray objectAtIndex:row];
  

    else
        return
        [gaitarray objectAtIndex:row];
}

- (IBAction)checkChanged:(UIButton *)sender {
    sender.selected = !sender.selected;
    if(sender.selected){
        [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
        [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    if(check22.selected){
        check2=@"Left";
        check1text.hidden=FALSE;
    }
    else{
        check2=@"";
        check1text.hidden=TRUE;
        check1text.text=NULL;
    }
    if(check33.selected){
        check3=@"Right";
        check2text.hidden=FALSE;
    }
    else{
        check3=@"";
        check2text.hidden=TRUE;
        check2text.text=NULL;
    }
    if(check11.selected){
    check1=@"All Soft Tissue Unremarkable";
    }
    else
        check1=@"";
    
    if(check44.selected){
        checky4=@"Unremarkable";
    }
    else
        checky4=@"";
    if(check55.selected){
        check5=@"Unremarkable";
    }
    else
        check5=@"";
    if(check66.selected){
        check6=@"Circumferential Measures are Unremarkable";
    }
    else
        check6=@"";


    
}

- (IBAction)pelseg:(id)sender {
    if(segmentnew1.selectedSegmentIndex==0)
    {
       segnew1=@"None";
    }
    else if (segmentnew1.selectedSegmentIndex==1)
    {
      segnew1=@"Superior Illiac crest right";
    }
    else if (segmentnew1.selectedSegmentIndex==2)
    {
        segnew1=@"Superior Illiac crest left";
    }

    
   
}

- (IBAction)anqseg:(id)sender {
    
    if(segmentnew2.selectedSegmentIndex==0)
    {
        segnew2=@"Excellent";
    }
    else if (segmentnew2.selectedSegmentIndex==1)
    {
        segnew2=@"Good";
    }
    else if (segmentnew2.selectedSegmentIndex==2)
    {
        segnew2=@"Fair";
    }
    else if (segmentnew2.selectedSegmentIndex==3)
    {
        segnew2=@"Severe";
    }

}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if(gaitpicker.hidden==NO)
    {
        gaitpicker.hidden=YES;
    }
    if (pelvicpicker.hidden==NO) {
        pelvicpicker.hidden=YES;
    }
    if (anqpicker.hidden==NO) {
        anqpicker.hidden=YES;
    }
    
    
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if(pickerView.tag==1)
        
        gaitlabel.text=[gaitarray objectAtIndex:row];
    
   
        else
           
        pickerView.hidden=YES;
    
}

- (IBAction)segment2:(id)sender {
    if(segment2.selectedSegmentIndex==0)
    {
       seg2=@"Left";
    }
    else if (segment2.selectedSegmentIndex==1)
    {
        seg2=@"Right";
    }
    else seg2=@"";

}

- (IBAction)segment3:(id)sender {
    if(segment3.selectedSegmentIndex==0)
    {
       seg3=@"Left";
    }
    else if (segment3.selectedSegmentIndex==1)
    {
        seg3=@"Right";
    }
    else seg3=@"";

}
- (IBAction)segment5:(id)sender {
    if(segment5.selectedSegmentIndex==0)
    {
        seg5=@"Left";
    }
    else if (segment5.selectedSegmentIndex==1)
    {
        seg5=@"Right";
    }
    else seg5=@"";

}

- (IBAction)segment4:(id)sender {
    if(segment4.selectedSegmentIndex==0)
    {
       seg4=@"Left";
    }
    else if (segment4.selectedSegmentIndex==1)
    {
        seg4=@"Right";
    }
    else seg4=@"";

}

- (IBAction)segement1:(id)sender {
    
        if(segment1.selectedSegmentIndex==0)
        {
           seg1=@"Left";
        }
        else if (segment1.selectedSegmentIndex==1)
        {
            seg1=@"Right";
        }
        else seg1=@"";
    
}
- (IBAction)segment8:(id)sender {
    if(segment8.selectedSegmentIndex==0)
    {
        seg8=@"Left";
    }
    else if (segment8.selectedSegmentIndex==1)
    {
        seg8=@"Right";
    }
     else seg8=NULL;
}

- (IBAction)segment7:(id)sender {
    if(segment7.selectedSegmentIndex==0)
    {
        seg7=@"Left";
    }
    else if (segment7.selectedSegmentIndex==1)
    {
        seg7=@"Right";
    }
     else seg7=NULL;
}

- (IBAction)segment6:(id)sender {
    if(segment6.selectedSegmentIndex==0)
    {
        seg6=@"Left";
    }
    else if (segment6.selectedSegmentIndex==1)
    {
        seg6=@"Right";
    }
    else seg6=NULL;
}


-(BOOL)validateUsername:(NSString *)user

{
    NSString *userFormat1 =@"[A-Z0-9a-z._/-]+";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *userTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", userFormat1];
    return [userTest1 evaluateWithObject:user];
    
}

- (IBAction)changeanq:(id)sender {
    if (anqpicker.hidden==YES)
    {
        anqpicker.hidden=NO;
        
    }
}

- (IBAction)changegait:(id)sender {
    if (gaitpicker.hidden==YES)
    {
        gaitpicker.hidden=NO;
        
    }
}

- (IBAction)next:(id)sender {
    texty1=[patname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty2=[datefield.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty3=[flexion.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty4=[antleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty5=[antright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty6=[extension.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty7=[postleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty8=[postright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty9=[internalleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty10=[internalright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty11=[lclleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty12=[lclright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty13=[mclleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty14=[mclright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty15=[externalleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty16=[externalright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty17=[medleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty18=[medright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty19=[menisleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty20=[menisright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty21=[corleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty22=[corright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty23=[cmpleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty24=[cmpright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty25=[patleft.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty26=[patright.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty27=[left1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty28=[left2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty29=[left3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty30=[left4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty31=[right1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty32=[right2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty33=[right3.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    texty34=[right4.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty35=[check1text.text stringByReplacingOccurrencesOfString:@" " withString:@""];
      texty36=[check2text.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    //  texty37=[patname.text stringByReplacingOccurrencesOfString:@" " withString:@""];
     // texty35=[check1text.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSLog(@"String in checktextfields  one::%@",[check1text text]);
     NSLog(@"String in checktextfields   two ::%@",[check2text text]);
    if(([patname.text length]!=0)&&([datefield.text length]!=0))
    {
        if([self validateUsername:texty1]==1)
        {
            NSLog(@"check one text %@",[check1text text]);
            NSLog(@"Succes 1");
            NSLog(@"check two texty%@",[check2text text]);
            NSLog(@"checktets chanracters::%i",[check1text.text length]);
            NSLog(@"checktets chanracters::%i",[check2text.text length]);
            if([check1text.text length]==0||([self validateUsername:texty35]==1)||[check1text text]==NULL)
            {
                NSLog(@"check one text %@",[check1text text]);
                NSLog(@"Succes 1");
                NSLog(@"check two texty%@",[check2text text]);
                  NSLog(@"checktets chanracters::%i",[check1text.text length]);
                NSLog(@"checktets chanracters::%i",[check2text.text length]);
                if([check2text.text length]==0||([self validateUsername:texty36]==1)||[check2text text]==NULL)
                {
                     NSLog(@"check two texty%@",[check2text text]);
                    NSLog(@"Succes 1");
                    
                    if([flexion.text length]==0||[self validateUsername:texty3]==1)
                    {
                         NSLog(@"%@",[flexion text]);
                        NSLog(@"Succes 1");
                        if([antleft.text length]==0||[self validateUsername:texty4]==1)
                        {
                             NSLog(@"%@",[antleft text]);
                            NSLog(@"Succes 1");
                            if([antright.text length]==0||[self validateUsername:texty5]==1)
                            {
                                 NSLog(@"ant right %@",[antright text]);
                                NSLog(@"Succes 1");
                                if([extension.text length]==0||[self validateUsername:texty6]==1)
                                {
                                    NSLog(@"extension %@",[extension text]);
                                    NSLog(@"Succes 1");
                                    if([postleft.text length]==0||[self validateUsername:texty7]==1)
                                    {
                                        NSLog(@"post left %@",[postleft text]);
                                        NSLog(@"Succes 1");
                                        if([postright.text length]==0||[self validateUsername:texty8]==1)
                                        {
                                            
                                            NSLog(@"post rght%@",[postright text]);
                                            NSLog(@"Succes 1");
                                            if([internalleft.text length]==0||[self validateUsername:texty9]==1)
                                            {
                                                
                                                NSLog(@"inter left %@",[internalleft text]);
                                                NSLog(@"Succes 1");
                                                if([internalright.text length]==0||[self validateUsername:texty10]==1)
                                                {
                                                    
                                                    NSLog(@"internal right %@",[internalright text]);
                                                    NSLog(@"Succes 1");
                                                    if([lclleft.text length]==0||[self validateUsername:texty11]==1)
                                                    {
                                                        
                                                        NSLog(@"lcl left %@",[lclleft text]);
                                                        NSLog(@"Succes 1");
                                                        if([lclright.text length]==0||[self validateUsername:texty12]==1)
                                                        {
                                                            
                                                            NSLog(@"Lcl right %@",[lclright text]);
                                                            NSLog(@"Succes 1");
                                                            if([mclleft.text length]==0||[self validateUsername:texty13]==1)
                                                            {
                                                                
                                                                NSLog(@"mcl left %@",[mclleft text]);
                                                                NSLog(@"Succes 1");
                                                                if([mclright.text length]==0||[self validateUsername:texty14]==1)
                                                                {
                                                                    
                                                                    NSLog(@"mcl right %@",[mclright text]);
                                                                    NSLog(@"Succes 1");
                                                                    if([externalleft.text length]==0||[self validateUsername:texty15]==1)
                                                                    {
                                                                        NSLog(@"Succes 1");
                                                                       if([externalright.text length]==0||[self validateUsername:texty16]==1)
                                                                        
                                                                       {
                                                                           NSLog(@"Succes 1");
                                                                            if([medleft.text length]==0||[self validateUsername:texty17]==1)
                                                                            {
                                                                                NSLog(@"Succes 1");
                                                                                if([medright.text length]==0||[self validateUsername:texty18]==1)
                                                                                {
                                                                                    NSLog(@"Succes 1");
                                                                                    if([menisleft.text length]==0||[self validateUsername:texty19]==1)
                                                                                    {
                                                                                        NSLog(@"Succes 1");
                                                                                        if([menisright.text length]==0||[self validateUsername:texty20]==1)
                                                                                        {
                                                                                            NSLog(@"Succes 1");
                                                                                            if([corleft.text length]==0||[self validateUsername:texty21]==1)
                                                                                            {
                                                                                                NSLog(@"Succes 1");
                                                                                            if([corright.text length]==0||[self validateUsername:texty22]==1)
                                                                                            {
                                                                                                NSLog(@"Succes 1");
                                                                                            if([cmpleft.text length]==0||[self validateUsername:texty23]==1)
                                                                                            {
                                                                                                NSLog(@"Succes 1");
                                                                                                if([cmpright.text length]==0||[self validateUsername:texty24]==1)
                                                                                                {
                                                                                                    NSLog(@"Succes 1");
                                                                                                    if([patleft.text length]==0||[self validateUsername:texty25]==1)
                                                                                                    {
                                                                                                        NSLog(@"Succes 1");
                                                                                                        
                                                                            
                                                                                                        if([patright.text length]==0||[self validateUsername:texty26]==1)
                                                                                                        {
                                                                                                            NSLog(@"Succes 1");
                                                                        
                                                                                                            if([left1.text length]==0||[self validateUsername:texty27]==1)
                                                                                                            {
                                                                                                                NSLog(@"Succes 1");
                                                                          
                                                                                                                if([left2.text length]==0||[self validateUsername:texty28]==1)
                                                                                                                {
                                                                                                                    NSLog(@"Succes 1");
                                                                         
                                                                                                                    if([left3.text length]==0||[self validateUsername:texty29]==1)
                                                                                                                    {
                                                                        NSLog(@"Succes 1");
                                                                                                                        if([left4.text length]==0||[self validateUsername:texty30]==1)
                                                                                                                        {
                                                                        NSLog(@"Succes 1");
                                                                                                                            if([right1.text length]==0||[self validateUsername:texty31]==1)
                                                                                                                            {
                                                                             NSLog(@"Succes 1");
                                                                                                                                if([right2.text length]==0||[self validateUsername:texty32]==1)
                                                                                                                                {
                                                                                                                                    NSLog(@"Succes 1");
                                                                           
                                                                                                                                    if([right3.text length]==0||[self validateUsername:texty33]==1)
                                                                                                                                    {
                                                                                                                                        NSLog(@"Succes 1");
                                                                               
                                                                                                                                        if([right4.text length]==0||[self validateUsername:texty34]==1){
                                                                                                                                            
                                                                                             NSLog(@"Succes Finall");
                                                                                                                                             recorddict=[[NSMutableDictionary alloc]init];
                                                                                                                                            [recorddict setValue:check1 forKey:@"firstcheck"];
                                                                                                                                            [recorddict setValue:check2 forKey:@"secondcheck"];
                                                                                                                                            [recorddict setValue:check3 forKey:@"thirdcheck"];
                                                                                                                                            [recorddict setValue:checky4 forKey:@"fourthcheck"];
                                                                                                                                            [recorddict setValue:check5 forKey:@"fifthcheck"];
                                                                                                                                            [recorddict setValue:check6 forKey:@"sixthcheck"];
                                                                                                                                            [recorddict setValue:seg1 forKey:@"firstseg"];
                                                                                                                                            [recorddict setValue:seg2 forKey:@"secondseg"];
                                                                                                                                            [recorddict setValue:seg3 forKey:@"thirdseg"];
                                                                                                                                            [recorddict setValue:seg4 forKey:@"fourthseg"];
                                                                                                                                            [recorddict setValue:seg5 forKey:@"fifthseg"];
                                                                                                                                            [recorddict setValue:seg6 forKey:@"sixthseg"];
                                                                                                                                            [recorddict setValue:seg7 forKey:@"seventhseg"];
                                                                                                                                            [recorddict setValue:seg8 forKey:@"eigthseg"];
                                                                                                                                            
                                                                                                                                            
                                                                                                           [recorddict setValue:gaitlabel.text forKey:@"gait"];
                                                                                                                                             [recorddict setValue:segnew1 forKey:@"pelvic seg one"];
                                                                                                                                             [recorddict setValue:segnew2 forKey:@"anq seg two"];
                                                                                                                                            [recorddict setValue:datefield.text forKey:@"datey"];
                                                                                                   [recorddict setValue:patname.text forKey:@"patname"];
                                                                                                                                            [recorddict setValue:check1text.text forKey:@"leftcheck"];
                                                                                                                                            [recorddict setValue:check2text.text forKey:@"rightcheck"];
                                                                                                                                            [recorddict setValue:flexion.text forKey:@"flexion"];
                                                                                                                                            [recorddict setValue:antleft.text forKey:@"antleft"];
                                                                                                                                            [recorddict setValue:antright.text forKey:@"antright"];
                                                                                                                                            [recorddict setValue:extension.text forKey:@"extension"];
                                                                                                                                            [recorddict setValue:postleft.text forKey:@"postleft"];
                                                                                                                                            [recorddict setValue:postright.text forKey:@"postright"];
                                                                                                                                            [recorddict setValue:internalleft.text forKey:@"internalleft"];
                                                                                                                                            [recorddict setValue:internalright.text forKey:@"internalright"];
                                                                                                                                            [recorddict setValue:lclleft.text forKey:@"lclleft"];
                                                                                                                                            [recorddict setValue:lclright.text forKey:@"lclright"];
                                                                                                                                            [recorddict setValue:mclleft.text forKey:@"mclleft"];
                                                                                                                                            [recorddict setValue:mclright.text forKey:@"mclright"];
                                                                                                                                            [recorddict setValue:externalleft.text forKey:@"externalleft"];
                                                                                                                                            [recorddict setValue:externalright.text forKey:@"externalright"];
                                                                                                                                            [recorddict setValue:medleft.text forKey:@"medleft"];
                                                                                                                                            [recorddict setValue:medright.text forKey:@"medright"];
                                                                                                                                            [recorddict setValue:menisleft.text forKey:@"menisleft"];
                                                                                                                                            [recorddict setValue:menisright.text forKey:@"menisright"];
                                                                                                                                            [recorddict setValue:corleft.text forKey:@"corleft"];
                                                                                                                                            [recorddict setValue:corright.text forKey:@"corright"];
                                                                                                                                            [recorddict setValue:cmpleft.text forKey:@"cmpleft"];
                                                                                                                                            [recorddict setValue:cmpright.text forKey:@"cmpright"];
                                                                                                                                            [recorddict setValue:patleft.text forKey:@"patleft"];
                                                                                                                                            
                                                                                                [recorddict setValue:patright.text forKey:@"patright"];
                                                                                                                                            [recorddict setValue:left1.text forKey:@"left1"];
                                                                                                                                            [recorddict setValue:left2.text forKey:@"left2"];
                                                                                                                                            [recorddict setValue:left3.text forKey:@"left3"];
                                                                                                                                            [recorddict setValue:left4.text forKey:@"left4"];
                                                                                                                                            [recorddict setValue:right1.text forKey:@"right1"];
                                                                                                                                            [recorddict setValue:right2.text forKey:@"right2"];
                                                                                                                                            [recorddict setValue:right3.text forKey:@"right3"];
                                                                                                                                            [recorddict setValue:right1.text forKey:@"right4"];
                                                                                                                                            NSLog(@"succc value %i",suc);
                                                                          NSLog(@"recorddict in knee exam controller %@",recorddict);                                                                                                                                                                                                            suc=1;
                                                                                                                                        }else{
                                                                                                                                            suc=0;
                                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Right4  Value"];
                                                                                                                                            
                                                                                                                                            
                                                                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                            [alert show];
                                                                                                                                        }
                                                                                                                                    }else{
                                                                                                                                        suc=0;
                                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Right3  Value"];
                                                                                                                                        
                                                                                                                                        
                                                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                        [alert show];
                                                                                                                                    }
                                                                                                                                }else{
                                                                                                                                    suc=0;
                                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Right2  Value"];
                                                                                                                                    
                                                                                                                                    
                                                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                    [alert show];
                                                                                                                                }
                                                                                                                            }else{
                                                                                                                                suc=0;
                                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Right Value"];
                                                                                                                                
                                                                                                                                
                                                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                                [alert show];
                                                                                                                            }
                                                                                                                        }else{
                                                                                                                            suc=0;
                                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Left4  Value"];
                                                                                                                            
                                                                                                                            
                                                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                            [alert show];
                                                                                                                        }
                                                                                                                    }else{
                                                                                                                        suc=0;
                                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Left 3  Value"];
                                                                                                                        
                                                                                                                        
                                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                        [alert show];
                                                                                                                    }
                                                                                                                }else{
                                                                                                                    suc=0;
                                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Left 2 Value"];
                                                                                                                    
                                                                                                                    
                                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                    [alert show];
                                                                                                                }
                                                                                                            }else{
                                                                                                                suc=0;
                                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Left1 Value"];
                                                                                                                
                                                                                                                
                                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                                [alert show];
                                                                                                            }
                                                                                                        }else{
                                                                                                            suc=0;
                                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid ACL  Value"];
                                                                                                            
                                                                                                            
                                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                            [alert show];
                                                                                                        }
                                                                                                    }else{
                                                                                                        suc=0;
                                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid PAT LEft Value"];
                                                                                                        
                                                                                                        
                                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                        [alert show];
                                                                                                    }
                                                                                                    
                                                                                                }else{
                                                                                                    suc=0;
                                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid CMP Right Value"];
                                                                                                    
                                                                                                    
                                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                    [alert show];
                                                                                                }
                                                                                                
                                                                                            }else{
                                                                                                suc=0;
                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid cmp left Value"];
                                                                                                
                                                                                                
                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                [alert show];
                                                                                            }
                                                                                            
                                                                                            }else{
                                                                                                suc=0;
                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Cor Right  Value"];
                                                                                                
                                                                                                
                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                [alert show];
                                                                                            }
                                                                                            }else{
                                                                                                suc=0;
                                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Cor Left Value"];
                                                                                                
                                                                                                
                                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                                [alert show];
                                                                                            }
                                                                                            
                                                                                        }
                                                                                        else{
                                                                                            suc=0;
                                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Menis Right  Value"];
                                                                                            
                                                                                            
                                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                            [alert show];
                                                                                        }
                                                                                    }else{
                                                                                        suc=0;
                                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Menis Left Value"];
                                                                                        
                                                                                        
                                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                        [alert show];
                                                                                    }
                                                                                    
                                                                                }else{
                                                                                    suc=0;
                                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Med Right Value"];
                                                                                    
                                                                                    
                                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                    [alert show];
                                                                                }
                                                                                
                                                                            }else{
                                                                                suc=0;
                                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Med Left Value"];
                                                                                
                                                                                
                                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                                [alert show];
                                                                            }
                                                                            
                                                                        }else{
                                                                            suc=0;
                                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid External Right Value"];
                                                                            
                                                                            
                                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                            [alert show];
                                                                        }
                                                                    }else{
                                                                        suc=0;
                                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid External Left Value"];
                                                                        
                                                                        
                                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                        [alert show];
                                                                    }
                                                                    
                                                                }else{
                                                                    suc=0;
                                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid MCL Right  Value"];
                                                                    
                                                                    
                                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                    [alert show];
                                                                }
                                                                
                                                            }else{
                                                                suc=0;
                                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid MCL Left  Value"];
                                                                
                                                                
                                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                                [alert show];
                                                            }
                                                            
                                                        }else{
                                                            suc=0;
                                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid LCL Right Value"];
                                                            
                                                            
                                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                            [alert show];
                                                        }
                                                        
                                                    }else{
                                                        suc=0;
                                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid LCL Value"];
                                                        
                                                        
                                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                        [alert show];
                                                    }
                                                }else{
                                                    suc=0;
                                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Internal Right  Value"];
                                                    
                                                    
                                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                    [alert show];
                                                }
                                            }else{
                                                suc=0;
                                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Internal Left Value"];
                                                
                                                
                                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                                [alert show];
                                            }
                                            
                                        }else{
                                            suc=0;
                                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Post Right Value"];
                                            
                                            
                                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                            [alert show];
                                        }
                                        
                                    }else{
                                        suc=0;
                                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Post Left Value"];
                                        
                                        
                                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                        [alert show];
                                    }
                                    
                                }else{
                                    suc=0;
                                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Extension Actual Value"];
                                    
                                    
                                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                    [alert show];
                                }
                                
                            }else{
                                suc=0;
                                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid ACL  Value"];
                                
                                
                                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                                [alert show];
                            }
                            
                        }else{
                            suc=0;
                            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid ACL  Value"];
                            
                            
                            [alert setDestructiveButtonWithTitle:@"x" block:nil];
                            [alert show];
                        }

                        
                    }else{
                        suc=0;
                        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Actual Value"];
                        
                        
                        [alert setDestructiveButtonWithTitle:@"x" block:nil];
                        [alert show];
                    }

                    
                }else{
                    suc=0;
                    BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid check 2 textfield"];
                    
                    
                    [alert setDestructiveButtonWithTitle:@"x" block:nil];
                    [alert show];
                }

            }else{
                suc=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid check 1textfield"];
                
               
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
            
        
        }else{
            suc=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Username"];
            
            
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
                    [self performSegueWithIdentifier:@"kneeexam" sender:self];
    }
}

- (IBAction)changepelvic:(id)sender {
    if (pelvicpicker.hidden==YES)
    {
        pelvicpicker.hidden=NO;
        
    }
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
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
        KneeExamViewController *destViewController = [segue destinationViewController];
       // destViewController.recorddict=recorddict;
        NSLog(@"recorddict in knee exam controller %@",recorddict);
        // destViewController.delegate=self;
        
    }
    
    
    
}

@end
