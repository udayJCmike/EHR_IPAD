//
//  HipKneeViewController1.m
//  HipKneeQuestionnaire
//
//  Created by deemsys on 3/4/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "HipKneeViewController1.h"
#import "HipKneeViewController2.h"

@interface HipKneeViewController1 ()

@end

@implementation HipKneeViewController1
@synthesize recorddict;


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
    texty11=@"";
    texty1=@"";
    texty2=@"";
    texty3=@"";
    texty4=@"";
    texty5=@"";
    texty6=@"";
    texty7=@"";
    texty8=@"";

    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)segbut1:(id)sender {
    if(seg1.selectedSegmentIndex==0){
        texty1=@"Not painful";
    }
    else if(seg1.selectedSegmentIndex==1){
        texty1=@"Mildly painful";
    }
    else if(seg1.selectedSegmentIndex==2){
        texty1=@"Moderately painful";
    }
    else if(seg1.selectedSegmentIndex==3){
        texty1=@"Very painful";
    }
    else if(seg1.selectedSegmentIndex==4){
        texty1=@"Extremely painful";
    }
    else if(seg1.selectedSegmentIndex==5){
        texty1=@"Could not do because of hip/knee pain";
    }
    else if(seg1.selectedSegmentIndex==6){
        texty1=@"Could not do for other reasons";
    }
    
}

- (IBAction)segbut2:(id)sender {
    if(seg2.selectedSegmentIndex==0){
        texty2=@"Not painful";
    }
    else if(seg2.selectedSegmentIndex==1){
        texty2=@"Mildly painful";
    }
    else if(seg2.selectedSegmentIndex==2){
        texty2=@"Moderately painful";
    }
    else if(seg2.selectedSegmentIndex==3){
        texty2=@"Very painful";
    }
    else if(seg2.selectedSegmentIndex==4){
        texty2=@"Extremely painful";
    }
    else if(seg2.selectedSegmentIndex==5){
        texty2=@"Could not do because of hip/knee pain";
    }
    else if(seg2.selectedSegmentIndex==6){
        texty2=@"Could not do for other reasons";
    }

}

- (IBAction)segbut3:(id)sender {
    if(seg3.selectedSegmentIndex==0){
        texty3=@"Not painful";
    }
    else if(seg3.selectedSegmentIndex==1){
        texty3=@"Mildly painful";
    }
    else if(seg3.selectedSegmentIndex==2){
        texty3=@"Moderately painful";
    }
    else if(seg3.selectedSegmentIndex==3){
        texty3=@"Very painful";
    }
    else if(seg3.selectedSegmentIndex==4){
        texty3=@"Extremely painful";
    }
    else if(seg3.selectedSegmentIndex==5){
        texty3=@"Could not do because of hip/knee pain";
    }
    else if(seg3.selectedSegmentIndex==6){
        texty3=@"Could not do for other reasons";
    }
}

- (IBAction)segbut4:(id)sender {
    if(seg4.selectedSegmentIndex==0){
        texty4=@"Not painful";
    }
    else if(seg4.selectedSegmentIndex==1){
        texty4=@"Mildly painful";
    }
    else if(seg4.selectedSegmentIndex==2){
        texty4=@"Moderately painful";
    }
    else if(seg4.selectedSegmentIndex==3){
        texty4=@"Very painful";
    }
    else if(seg4.selectedSegmentIndex==4){
        texty4=@"Extremely painful";
    }
    else if(seg4.selectedSegmentIndex==5){
        texty4=@"Could not do because of hip/knee pain";
    }
    else if(seg4.selectedSegmentIndex==6){
        texty4=@"Could not do for other reasons";
    }
    
    
}

- (IBAction)segbut5:(id)sender {
    if(seg5.selectedSegmentIndex==0){
        texty5=@"Not painful";
    }
    else if(seg5.selectedSegmentIndex==1){
        texty5=@"Mildly painful";
    }
    else if(seg5.selectedSegmentIndex==2){
        texty5=@"Moderately painful";
    }
    else if(seg5.selectedSegmentIndex==3){
        texty5=@"Very painful";
    }
    else if(seg5.selectedSegmentIndex==4){
        texty5=@"Extremely painful";
    }
    else if(seg5.selectedSegmentIndex==5){
        texty5=@"Could not do because of hip/knee pain";
    }
    else if(seg5.selectedSegmentIndex==6){
        texty5=@"Could not do for other reasons";
    }
    
}

- (IBAction)segbut6:(id)sender {
    if(seg6.selectedSegmentIndex==0){
        texty6=@"Not painful";
    }
    else if(seg6.selectedSegmentIndex==1){
        texty6=@"Mildly painful";
    }
    else if(seg6.selectedSegmentIndex==2){
        texty6=@"Moderately painful";
    }
    else if(seg6.selectedSegmentIndex==3){
        texty6=@"Very painful";
    }
    else if(seg6.selectedSegmentIndex==4){
        texty6=@"Extremely painful";
    }
    else if(seg6.selectedSegmentIndex==5){
        texty6=@"Could not do because of hip/knee pain";
    }
    else if(seg6.selectedSegmentIndex==6){
        texty6=@"Could not do for other reasons";
    }
    
}

- (IBAction)segbut8:(id)sender {
    if(seg8.selectedSegmentIndex==0){
        texty8=@"Not painful";
    }
    else if(seg8.selectedSegmentIndex==1){
        texty8=@"Mildly painful";
    }
    else if(seg8.selectedSegmentIndex==2){
        texty8=@"Moderately painful";
    }
    else if(seg8.selectedSegmentIndex==3){
        texty8=@"Very painful";
    }
    else if(seg8.selectedSegmentIndex==4){
        texty8=@"Extremely painful";
    }
    else if(seg8.selectedSegmentIndex==5){
        texty8=@"Could not do because of hip/knee pain";
    }
    else if(seg8.selectedSegmentIndex==6){
        texty8=@"Could not do for other reasons";
    }
    
}
- (IBAction)segbut7:(id)sender {
    if(seg7.selectedSegmentIndex==0){
        texty7=@"Not painful";
    }
    else if(seg7.selectedSegmentIndex==1){
        texty7=@"Mildly painful";
    }
    else if(seg7.selectedSegmentIndex==2){
        texty7=@"Moderately painful";
    }
    else if(seg7.selectedSegmentIndex==3){
        texty7=@"Very painful";
    }
    else if(seg7.selectedSegmentIndex==4){
        texty7=@"Extremely painful";
    }
    else if(seg7.selectedSegmentIndex==5){
        texty7=@"Could not do because of hip/knee pain";
    }
    else if(seg7.selectedSegmentIndex==6){
        texty7=@"Could not do for other reasons";
    }
    
}
- (IBAction)rad7:(id)sender {
    [radi7 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];

    texty11=@"I was unable to get around at all.";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
   }

- (IBAction)rad6:(id)sender {
     [radi6 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty11=@"I mostly used other supports or someone else had to help me get around.";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
   
    
    [radi7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}

- (IBAction)rad5:(id)sender {
     [radi5 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty11=@"I used a wheelchair.";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
   
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)next:(id)sender {
    
    
     [recorddict setObject:texty11 forKey:@"radioselected"];
    [recorddict setObject:texty1 forKey:@"seghip1"];
    [recorddict setObject:texty2 forKey:@"seghip2"];
    [recorddict setObject:texty3 forKey:@"seghip3"];
    [recorddict setObject:texty4 forKey:@"seghip4"];
    [recorddict setObject:texty5 forKey:@"seghip5"];
    [recorddict setObject:texty6 forKey:@"seghip6"];
     [recorddict setObject:texty7 forKey:@"seghip7"];
     [recorddict setObject:texty8 forKey:@"seghip8"];
    suc=1;
    NSLog(@"Record dict in hipkneequestionnaire form two::%@",recorddict);
    NSLog(@"texty 11 value::%@",texty11);
    if(suc==1){
        [self performSegueWithIdentifier:@"hipknee2" sender:self];
    }

}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    NSLog(@"succc value in perform segue %i",suc);
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"hipknee2"])
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
    
    
    if ([segue.identifier isEqualToString:@"hipknee2"])
    {
        
        NSLog(@"succc value in prepre segue %i ",suc);
        HipKneeViewController2 *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        //NSLog(@"recorddict in knee exam controller %@",recorddict);
        // destViewController.delegate=self;
        
    }
    
    
    
}


- (IBAction)rad4:(id)sender {
     [radi4 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    texty11=@"I mostly used two canes, two crutches or a walker to help me get around.";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
   
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}

- (IBAction)rad2:(id)sender {
    [radi2 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];

    texty11=@"I mostly walked without support or assitance.";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    
    [radi3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}

- (IBAction)rad1:(id)sender {
   texty11=@"I did not need support or assitance at all.";
    
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
    texty11=@"I mostly used one cane or crutch to help me get around.";
    
    [radi1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
   
    [radi4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radi6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radi7 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
}
- (void)dealloc {
  
    [super dealloc];
}
@end

