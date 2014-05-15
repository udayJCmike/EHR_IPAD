//
//  FootAnkleViewController.m
//  FootAnkleQuestionnaire
//
//  Created by deemsys on 3/5/14.
//  Copyright (c) 2014 deemsys. All rights reserved.
//

#import "FootAnkleViewController.h"
#import "FootAnkleViewController1.h"

@interface FootAnkleViewController ()

@end

@implementation FootAnkleViewController
@synthesize recorddict;
@synthesize seg1;
@synthesize seg2;
@synthesize seg3;
@synthesize seg4;
@synthesize seg5;
@synthesize seg6;
@synthesize seg7;
@synthesize seg8;
@synthesize seg9;




- (void)viewDidLoad
{
    [super viewDidLoad];
    texty1=@"";
    texty2=@"";

    texty3=@"";

    texty4=@"";

    texty5=@"";

    texty6=@"";

    texty7=@"";

    texty8=@"";

    texty9=@"";

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)segbut1:(id)sender {
    if(seg1.selectedSegmentIndex==0){
        texty1=@"Not at all";
    }
    else if(seg1.selectedSegmentIndex==1){
        texty1=@"Mildly";
    }
    else if(seg1.selectedSegmentIndex==2){
        texty1=@"Moderately";
    }
    else if(seg1.selectedSegmentIndex==3){
        texty1=@"Very";
    }
    else if(seg1.selectedSegmentIndex==4){
        texty1=@"Extremely";
    }
    
}

- (IBAction)segbut2:(id)sender {
    if(seg2.selectedSegmentIndex==0){
        texty2=@"Not at all";
    }
    else if(seg2.selectedSegmentIndex==1){
        texty2=@"Mildly";
    }
    else if(seg2.selectedSegmentIndex==2){
        texty2=@"Moderately";
    }
    else if(seg2.selectedSegmentIndex==3){
        texty2=@"Very";
    }
    else if(seg2.selectedSegmentIndex==4){
        texty2=@"Extremely";
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
        texty3=@"Could not do because of foot/ankle pain";
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
        texty4=@"Could not do because of foot/ankle pain";
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
        texty5=@"Could not do because of foot/ankle pain";
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
        texty6=@"Could not do because of foot/ankle pain";
    }
    else if(seg6.selectedSegmentIndex==6){
        texty6=@"Could not do for other reasons";
    }
    
}
- (IBAction)segbut7:(id)sender {
    if(seg7.selectedSegmentIndex==0){
        texty7=@"Did not give way at all";
    }
    else if(seg7.selectedSegmentIndex==1){
        texty7=@"Partially gave way,but I did not fall";
    }
    else if(seg7.selectedSegmentIndex==2){
        texty7=@"Completely gave way,so that I fell";
    }
    else if(seg7.selectedSegmentIndex==3){
        texty7=@"Could not do the activity because of foot/ankle giving way";
    }
    else if(seg7.selectedSegmentIndex==4){
        texty7=@"Could not do for other reasons";
    }
}
- (IBAction)segbut8:(id)sender {
    if(seg8.selectedSegmentIndex==0){
        texty8=@"Did not give way at all";
    }
    else if(seg8.selectedSegmentIndex==1){
        texty8=@"Partially gave way,but I did not fall";
    }
    else if(seg8.selectedSegmentIndex==2){
        texty8=@"Completely gave way,so that I fell";
    }
    else if(seg8.selectedSegmentIndex==3){
        texty8=@"Could not do the activity because of foot/ankle giving way";
    }
    else if(seg8.selectedSegmentIndex==4){
        texty8=@"Could not do for other reasons";
    }
}
- (IBAction)segbut9:(id)sender {
    if(seg9.selectedSegmentIndex==0){
        texty9=@"Did not give way at all";
    }
    else if(seg9.selectedSegmentIndex==1){
        texty9=@"Partially gave way,but I did not fall";
    }
    else if(seg9.selectedSegmentIndex==2){
        texty9=@"Completely gave way,so that I fell";
    }
    else if(seg9.selectedSegmentIndex==3){
        texty9=@"Could not do the activity because of foot/ankle giving way";
    }
    else if(seg9.selectedSegmentIndex==4){
        texty9=@"Could not do for other reasons";
    }
}
- (IBAction)next:(id)sender {
    recorddict=[[NSMutableDictionary alloc]init];
    [recorddict setObject:texty1 forKey:@"seg1"];
    [recorddict setObject:texty2 forKey:@"seg2"];
    [recorddict setObject:texty3 forKey:@"seg3"];
    [recorddict setObject:texty4 forKey:@"seg4"];
    [recorddict setObject:texty5 forKey:@"seg5"];
    [recorddict setObject:texty6 forKey:@"seg6"];
    [recorddict setObject:texty7 forKey:@"seg7"];
    [recorddict setObject:texty8 forKey:@"seg8"];
    [recorddict setObject:texty9 forKey:@"seg9"];
    suc=1;
    NSLog(@"Record dict in footanklequestionnaire form::%@",recorddict);
  if(suc==1){
        [self performSegueWithIdentifier:@"footankle1" sender:self];
    }
}
- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
  
    if([identifier isEqual:@"footankle1"])
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
    
    
    if ([segue.identifier isEqualToString:@"footankle1"])
    {
        
        NSLog(@"succc value in prepre segue %i ",suc);
       FootAnkleViewController *destViewController = [segue destinationViewController];
    destViewController.recorddict=recorddict;
        
    }
    
    
    
}


- (void)dealloc {
  
    [super dealloc];
}
@end
