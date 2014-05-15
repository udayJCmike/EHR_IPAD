//
//  HipKneeViewController2.m
//  HipKneeQuestionnaire
//
//  Created by deemsys on 3/4/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "HipKneeViewController2.h"
#import "TextFieldDatePicker.h"

@interface HipKneeViewController2 ()

@end

@implementation HipKneeViewController2
@synthesize recorddict;
NSString *texty1,*texty2,*texty3,*texty4,*texty5,*texty6,*texty7,*texty8,*texty9,*texty10,*texty11,*texty12,*texty13,*texty14,*texty15,*texty16,*texty17,*texty18,*texty19,*texty20,*texty21,*texty22,*texty23,*texty24,*texty25,*texty26,*texty27,*texty28,*texty29,*texty30,*texty31,*texty32,*texty33,*texty34,*texty35,*texty36,*texty37,*texty38,*texty39;
int suc;
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
//	NSLog(@"%@", date);
  
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
//	NSLog(@"begin editing");
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 = @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
    [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
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
    [date1 resignFirstResponder];
    ;
    [date2 resignFirstResponder];
    ;
    [secnumber resignFirstResponder];
    ;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    texty11=@"";
	// Do any additional setup after loading the view.
}
- (IBAction)next:(id)sender {
    texty1=[date1.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty2=[date2.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    texty3=[secnumber.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    if([date1.text length]!=0&&[date2.text length]!=0&&[secnumber.text length]!=0){
        if([self validateDate:texty1]==1)
        {
            if([self validateDate:texty2]==1)
        {
            if([self validateString:texty3]==1)
            {
                
                
                [recorddict setObject:texty1 forKey:@"date1"];
                [recorddict setObject:texty2 forKey:@"date2"];
                [recorddict setObject:texty3 forKey:@"ssn3"];
                [recorddict setObject:texty11 forKey:@"radioselinhipthree4"];
                 NSLog(@"Record dict in hipkneequestionnaire form three::%@",recorddict);
                suc=1;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Success."];
                
                
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];
            }
            else{
                suc=0;
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Social Security Number Field."];
                
                
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
        }else{
            suc=0;
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Invalid Date Field."];
            
            
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];

        }
    }else{
        suc=0;
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter All Required Fields."];
        
        
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
}
- (IBAction)rad6:(id)sender {
    [radi6 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty11=@"Cannot do it all";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    
}

- (IBAction)rad5:(id)sender {
    [radi5 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty11=@"Extremely difficult";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}
- (IBAction)rad4:(id)sender {
    [radi4 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty11=@"Very difficult";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}

- (IBAction)rad2:(id)sender {
    [radi2 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    texty11=@"Slightly difficult";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
}

- (IBAction)rad1:(id)sender {
    texty11=@"Not at all difficult.";
    
    [radi1 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
   
}

- (IBAction)rad3:(id)sender {
    [radi3 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty11=@"Moderately difficult";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
   
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
