//
//  FootAnkleViewController2.m
//  FootAnkleQuestionnaire
//
//  Created by deemsys on 3/5/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "FootAnkleViewController2.h"
#import "FootAnkleViewController3.h"

@interface FootAnkleViewController2 ()

@end

@implementation FootAnkleViewController2
@synthesize recorddict;



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (IBAction)segbut7:(id)sender {
    if(seg7.selectedSegmentIndex==0){
        texty18=@"Yes";
    }
    else if(seg7.selectedSegmentIndex==1){
        texty18=@"No";
    }
    else if(seg7.selectedSegmentIndex==2){
        texty18=@"Not Applicable";
    }
}

- (IBAction)segbut6:(id)sender {
    if(seg6.selectedSegmentIndex==0){
        texty17=@"Yes";
    }
    else if(seg6.selectedSegmentIndex==1){
        texty17=@"No";
    }
    else if(seg6.selectedSegmentIndex==2){
        texty17=@"Not Applicable";
    }
}


- (IBAction)segbut5:(id)sender {
    if(seg5.selectedSegmentIndex==0){
        texty16=@"Yes";
    }
    else if(seg5.selectedSegmentIndex==1){
        texty16=@"No";
    }
    else if(seg5.selectedSegmentIndex==2){
        texty16=@"Not Applicable";
    }
}


- (IBAction)segbut4:(id)sender {
    if(seg4.selectedSegmentIndex==0){
        texty15=@"Yes";
    }
    else if(seg4.selectedSegmentIndex==1){
        texty15=@"No";
    }
    else if(seg4.selectedSegmentIndex==2){
        texty15=@"Not Applicable";
    }
}








- (IBAction)segbut3:(id)sender {
    if(seg3.selectedSegmentIndex==0){
        texty14=@"Yes";
    }
    else if(seg3.selectedSegmentIndex==1){
        texty14=@"No";
    }
    else if(seg3.selectedSegmentIndex==2){
        texty14=@"Not Applicable";
    }
}




- (IBAction)segbut2:(id)sender {
    if(seg2.selectedSegmentIndex==0){
        texty13=@"Not painful";
    }
    else if(seg2.selectedSegmentIndex==1){
        texty13=@"Mildly painful";
    }
    else if(seg2.selectedSegmentIndex==2){
        texty13=@"Moderately painful";
    }
    else if(seg2.selectedSegmentIndex==3){
        texty13=@"Very painful";
    }
    else if(seg2.selectedSegmentIndex==4){
        texty13=@"Extremely painful";
    }
    else if(seg2.selectedSegmentIndex==5){
        texty13=@"Could not do because of foot/ankle pain";
    }
    else if(seg2.selectedSegmentIndex==6){
        texty13=@"Could not do for other reasons";
    }
}



- (IBAction)segbut1:(id)sender {
    if(seg1.selectedSegmentIndex==0){
        texty12=@"Not painful";
    }
    else if(seg1.selectedSegmentIndex==1){
        texty12=@"Mildly painful";
    }
    else if(seg1.selectedSegmentIndex==2){
        texty12=@"Moderately painful";
    }
    else if(seg1.selectedSegmentIndex==3){
        texty12=@"Very painful";
    }
    else if(seg1.selectedSegmentIndex==4){
        texty12=@"Extremely painful";
    }
    else if(seg1.selectedSegmentIndex==5){
        texty12=@"Could not do because of foot/ankle pain";
    }
    else if(seg1.selectedSegmentIndex==6){
        texty12=@"Could not do for other reasons";
    }
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    texty18=@"";
    texty17=@"";
    texty16=@"";
    texty15=@"";
    texty14=@"";
    texty13=@"";
    texty12=@"";
    texty1=@"";
	// Do any additional setup after loading the view.
}

- (IBAction)next:(id)sender {
//    recorddict=[[NSMutableDictionary alloc]init];
    [recorddict setObject:texty18 forKey:@"footankl1segment7"];
    [recorddict setObject:texty17 forKey:@"footankl1segment6"];
    [recorddict setObject:texty16 forKey:@"footankl1segment5"];
    [recorddict setObject:texty15 forKey:@"footankl1segment4"];
    [recorddict setObject:texty14 forKey:@"footankl1segment3"];
    [recorddict setObject:texty13 forKey:@"footankl1segment2"];
    [recorddict setObject:texty12 forKey:@"footankl1segment1"];
    [recorddict setObject:texty1 forKey:@"footankle1radio1"];
    
    suc=1;
    NSLog(@"Record dict in footanklequestionnaire form two::%@",recorddict);
    
    if(suc==1){
 [self performSegueWithIdentifier:@"footankle3" sender:self];
     }
    
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    if([identifier isEqual:@"footankle3"])
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
    
    
    if ([segue.identifier isEqualToString:@"footankle3"])
    {
        
        NSLog(@"succc value in prepre segue %i ",suc);
        FootAnkleViewController3 *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        
    }
    
    
    
}

- (IBAction)rad7:(id)sender {
    [radi7 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    texty1=@"Cannot do for other reasons";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}

- (IBAction)rad6:(id)sender {
    [radi6 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty1=@"Cannot do because of foot/ankle";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    [radi7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}
- (IBAction)rad4:(id)sender {
    [radi4 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty1=@"Severe difficulty";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}

- (IBAction)rad2:(id)sender {
    [radi2 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    texty1=@"Mild difficulty";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}

- (IBAction)rad1:(id)sender {
    texty1=@"No difficulty";
    
    [radi1 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}

- (IBAction)rad3:(id)sender {
    [radi3 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty1=@"Moderate difficulty";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}

- (IBAction)rad5:(id)sender {
    [radi5 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty1=@"Extreme difficulty";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
