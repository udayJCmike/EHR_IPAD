//
//  RegisterViewController.m
//  EHR
//
//  Created by DeemSysInc on 08/10/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

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
-(IBAction)registerkey:(id)sender
{
    
}
-(IBAction)rolechange:(id)sender
{
    if (rolesegment.selectedSegmentIndex==0)
    {
        doctid.hidden=FALSE;
        doctoridtext.hidden=FALSE;
    }
    else if (rolesegment.selectedSegmentIndex==1)
    {
        doctid.hidden=TRUE;
        doctoridtext.hidden=TRUE;
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
