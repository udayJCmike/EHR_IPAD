//
//  FootAnkleViewController3.m
//  FootAnkleQuestionnaire
//
//  Created by deemsys on 3/10/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "FootAnkleViewController3.h"

@interface FootAnkleViewController3 ()

@end

@implementation FootAnkleViewController3
@synthesize recorddict;


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

-(void)dismissKeyboard {
    [datey resignFirstResponder];
    [ssn resignFirstResponder];
    [birthdate resignFirstResponder];
   
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    texty2=@"";
    texty3=@"";
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
- (IBAction)radii6:(id)sender {
    
    
    texty2=@"Unable to work due to foot and ankle problems";
    
    [radii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii6 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
}
- (IBAction)radii5:(id)sender {
    
    
    texty2=@"Extremely";
    
    [radii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii5 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [radii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)radii4:(id)sender {
    
    
    texty2=@"Quite a bit";
    
    [radii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii4 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [radii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)radii3:(id)sender {
    
    
    texty2=@"Moderately";
    
    [radii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii3 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [radii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}

- (IBAction)radii2:(id)sender {
    
    
    texty2=@"A little bit";
    
    [radii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii2 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [radii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)radii1:(id)sender {
    
    
    texty2=@"No at all";
    
    [radii1 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [radii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}

- (IBAction)radiii6:(id)sender {
    
    
    texty3=@"Unable to work due to foot and ankle problems";
    
    [radiii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii6 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
}
- (IBAction)radiii5:(id)sender {
    
    
    texty3=@"Extremely";
    
    [radiii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii5 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [radiii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)radiii4:(id)sender {
    
    
    texty3=@"Quite a bit";
    
    [radiii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii4 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [radiii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)radiii3:(id)sender {
    
    
    texty3=@"Moderately";
    
    [radiii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii3 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [radiii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}

- (IBAction)radiii2:(id)sender {
    
    
    texty3=@"A little bit";
    
    [radiii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii2 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [radiii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)radiii1:(id)sender {
    
    
    texty3=@"No at all";
    
    [radiii1 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [radiii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}


- (IBAction)next:(id)sender {
   //
   
    texty19=[datey.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty20=[birthdate.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty21=[ssn.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    if([datey.text length]!=0&&[birthdate.text length]!=0&&[ssn.text length]!=0)
    {
    if([datey.text length]==0||([self validateDate:texty19]==1))
    {
        if([birthdate.text length]==0||([self validateDate:texty20]==1))
        {
            if([ssn.text length]==0||([self validateString:texty21]==1))
            {
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Success."];
                
                
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
    suc=1;
//                 recorddict=[[NSMutableDictionary alloc]init];
                [recorddict setValue:datey.text forKey:@"date"];
                
                [recorddict setValue:birthdate.text forKey:@"birthdate"];
                
                [recorddict setValue:ssn.text forKey:@"ssn"];
                
                [recorddict setValue:texty2 forKey:@"radiogroup1"];
                
                [recorddict setValue:texty3 forKey:@"radiogroup2"];
                
    NSLog(@"Record dict in footanklequestionnaire form four::%@",recorddict);
            }
            else{
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid SSN ."];
                
                
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
        }
        else{
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Date Of Birth."];
            
            
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }
    else{
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Date."];
        
        
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    }
    else{
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter All Required Fields."];
        
        
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
  
    [super dealloc];
}
@end
