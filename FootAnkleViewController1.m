//
//  FootAnkleViewController1.m
//  FootAnkleQuestionnaire
//
//  Created by deemsys on 3/5/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "FootAnkleViewController1.h"

#import "FootAnkleViewController2.h"

@interface FootAnkleViewController1 ()

@end

@implementation FootAnkleViewController1
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
    texty12=@"";
    texty13=@"";
    texty14=@"";
    texty11=@"";
    texty2=@"";
    texty3=@"";
	// Do any additional setup after loading the view.
}

- (IBAction)next:(id)sender {
//    recorddict=[[NSMutableDictionary alloc]init];
    [recorddict setObject:texty12 forKey:@"footankleseg1"];
    [recorddict setObject:texty13 forKey:@"footankleseg2"];
    [recorddict setObject:texty14 forKey:@"footankleseg3"];
    [recorddict setObject:texty11 forKey:@"footankleradio1"];
    [recorddict setObject:texty2 forKey:@"footankleradio2"];
    [recorddict setObject:texty3 forKey:@"footankleradio3"];
    
    suc=1;
    NSLog(@"Record dict in footanklequestionnaire form two::%@",recorddict);
  
  if(suc==1){
        [self performSegueWithIdentifier:@"footankle2" sender:self];
   }

}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    if([identifier isEqual:@"footankle2"])
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
    
    
    if ([segue.identifier isEqualToString:@"footankle2"])
    {
        
        NSLog(@"succc value in prepre segue %i ",suc);
        FootAnkleViewController2 *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        
    }
    
    
    
}

- (IBAction)segbut3:(id)sender {
    if(seg3.selectedSegmentIndex==0){
        texty14=@"Not painful";
    }
    else if(seg3.selectedSegmentIndex==1){
        texty14=@"Mildly painful";
    }
    else if(seg3.selectedSegmentIndex==2){
        texty14=@"Moderately painful";
    }
    else if(seg3.selectedSegmentIndex==3){
        texty14=@"Very painful";
    }
    else if(seg3.selectedSegmentIndex==4){
        texty14=@"Extremely painful";
    }
    else if(seg3.selectedSegmentIndex==5){
        texty14=@"Could not do because of foot/ankle pain";
    }
    else if(seg3.selectedSegmentIndex==6){
        texty14=@"Could not do for other reasons";
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

- (IBAction)radii6:(id)sender {
    
    
    texty2=@"I cannot balance on my feet all";
    
    [radii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii6 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
}
- (IBAction)radii5:(id)sender {
    
    
    texty2=@"A great amount of trouble";
    
    [radii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii5 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [radii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)radii4:(id)sender {
    
    
    texty2=@"Quite a bit of trouble";
    
    [radii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii4 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [radii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)radii3:(id)sender {
    
    
    texty2=@"A moderate amount of trouble";
    
    [radii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii3 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [radii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}

- (IBAction)radii2:(id)sender {
    
    
    texty2=@"A little bit of trouble";
    
    [radii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii2 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [radii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)radii1:(id)sender {
    
    
    texty2=@"No at all difficult";
    
    [radii1 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [radii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
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

- (IBAction)radiii6:(id)sender {
    
    
    texty3=@"Cannot do it all";
    
    [radiii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii6 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
}
- (IBAction)radiii5:(id)sender {
    
    
    texty3=@"Extremely difficult";
    
    [radiii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii5 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [radiii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)radiii4:(id)sender {
    
    
    texty3=@"Very difficult";
    
    [radiii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii4 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [radiii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)radiii3:(id)sender {
    
    
    texty3=@"Moderately difficult";
    
    [radiii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii3 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    [radiii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}

- (IBAction)radiii2:(id)sender {
    
    
    texty3=@"Slightly difficult";
    
    [radiii1 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii2 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [radiii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}
- (IBAction)radiii1:(id)sender {
    
    
    texty3=@"No at all difficult";
    
    [radiii1 setImage:[UIImage imageNamed:@"radio_button_on.png"] forState:UIControlStateNormal];
    
    [radiii2 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii3 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii4 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
    [radiii5 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    [radiii6 setImage:[UIImage imageNamed:@"radiobutton_off.png"] forState:UIControlStateNormal];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
