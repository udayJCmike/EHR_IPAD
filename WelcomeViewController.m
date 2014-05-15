//
//  WelcomeViewController.m
//  EHR
//
//  Created by DeemSysInc on 08/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "WelcomeViewController.h"
#import "SWRevealViewController.h"

@interface WelcomeViewController ()

@end

@implementation WelcomeViewController

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
    

    
	// Do any additional setup after loading the view.
}
-(void)viewWillAppear:(BOOL)animated
{
    age1=[[NSUserDefaults standardUserDefaults]integerForKey:@"age"];
    if(age1>18)
    {
        consentminor.hidden=NO;
    }
    else
        consentminor.hidden=YES;
    typeofaccident=[[NSUserDefaults standardUserDefaults]integerForKey:@"typeofacc"];
    if(typeofaccident==1)
    {
        autoaccident.hidden=NO;
        workaccident.hidden=YES;
    }
    else if(typeofaccident==2)
    {
        autoaccident.hidden=YES;
        workaccident.hidden=NO;
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
