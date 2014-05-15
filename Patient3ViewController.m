//
//  Patient3ViewController.m
//  EHR
//
//  Created by DeemsysInc on 10/8/13.
//  Copyright (c) 2013 DeemSysInc. All rights reserved.
//

#import "Patient3ViewController.h"
#import "WorkaccidentViewController.h"
#import "AutoAccidentViewController1.h"
@interface Patient3ViewController ()

@end

@implementation Patient3ViewController
@synthesize recorddict;
@synthesize reslabel1;
@synthesize reslabel2;
@synthesize switch1;
@synthesize switch2;
@synthesize otherdis;
@synthesize otheropt;

-(IBAction)back:(id)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(BOOL)validateNames:(NSString *)country1
{
    NSString *countryFormat1 =@"(?:[A-Za-z]+[A-Za-z0-9]*)";
   // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateSign:(NSString *)country1
{
    NSString *countryFormat1 = @"(?:[A-Za-z]+[a-zA-Z]*)";
   // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
-(BOOL)validateDate:(NSString *)country1
{
    NSString *countryFormat1 =  @"[0-9]{2}+[/]+[0-9]{2}+[/]+[0-9]{4}";
    
   // [(UITextField*)[self.view viewWithTag:101] resignFirstResponder];
    NSPredicate *countryTest1 = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", countryFormat1];
    return [countryTest1 evaluateWithObject:country1];
    
}
- (void)textFieldDatePicker:(TextFieldDatePicker *)textFieldDatePicker didSelectDate:(NSDate *)date
{
    //	NSLog(@"%@", date);
    
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    
    //	NSLog(@"begin editing");
}
- (void)viewDidLoad
{
    otherdis.hidden=YES;
  /*  NSString *docsDir;
    NSArray *dirPaths;
    
    // Get the documents directory
    dirPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    
    docsDir = [dirPaths objectAtIndex:0];
    
    // Build the path to the database file
    databasePath = [[NSString alloc] initWithString: [docsDir stringByAppendingPathComponent: @"ehrdb6.db"]];
    
    NSFileManager *filemgr = [NSFileManager defaultManager];
    
    if ([filemgr fileExistsAtPath: databasePath ] == NO)
    {
		const char *dbpath = [databasePath UTF8String];
        
        if (sqlite3_open(dbpath, &ehrdb6) == SQLITE_OK)
        {
            char *errMsg;
            const char *sql_stmt = "CREATE TABLE IF NOT EXISTS PATIENTINFO (ID INTEGER PRIMARY KEY AUTOINCREMENT,Name TEXT,Date TEXT, StreetAddress TEXT,        City TEXT,State TEXST, ZipCode TEXT,Homephone TEXT,            Pager TEXT, MobileNumber TEXT,     DateOfBirth TEXT,            SocialSecurityNumber TEXT, Gender TEXT, MaritalStatus TEXT,            Student TEXT,            EmployerName TEXT,            Occupation  TEXT,            EmployerAddress  TEXT,            Workphone  TEXT,            EmployerCity  TEXT,            Estate  TEXT,            Ezip  TEXT,            SpousesName  TEXT,            SpousesEmp  TEXT,            Spousesph  TEXT,            Name_friend TEXT,Phone_friend  TEXT,            Chiropratic_care  TEXT,            Symptoms  TEXT,            Painscale  TEXT,            Symptom1  TEXT,            Painscale1  TEXT,            Symptom2  TEXT,            Painscale2  TEXT,            Symptom_Accident  TEXT,            Type_Of_Accident  TEXT,            Date_Of_Accident  TEXT,            Accident_Reported  TEXT,            When  TEXT,            Where  TEXT,            Attorney_accident  TEXT,            NameOfAttorney  TEXT,            phone_Number  TEXT,            Fault_accident  TEXT,            Insurance  TEXT,            Insurance_phone  TEXT,            Name_auto  TEXT,  Phone_auto  TEXT,           policy  TEXT,            Name_health  TEXT,            Health_phone  TEXT,            prev_accident  TEXT,            Prev_When  TEXT,            anemia  TEXT,            Muscular  TEXT,            Rheumatic  TEXT,            Allergies  TEXT, Cancer VARCHAR DEFAULT NULL           Polio1  TEXT,            Multiple  TEXT,Scarlet VARCHAR DEFAULT NULL,            HIV  TEXT,            Sinus  TEXT,            Asthma  TEXT,            German  TEXT,            Nervousness  TEXT,            Numbness  TEXT,            Convulsions  TEXT,            Epilepsy  TEXT,          Concussion  TEXT,            Dizziness  TEXT,            Neuritis  TEXT,            Rheumatism  TEXT,            Diabetes  TEXT,            Arthritis  TEXT,            Venereal  TEXT,            Backaches  TEXT, Tuberculosis VARCHAR DEFAULT NULL,           Liver  TEXT,            Kidney  TEXT,            Thyroid  TEXT,            Alcoholism  TEXT,            Hepatitis  TEXT,            Mental  TEXT,            High  TEXT,            Digestive  TEXT,            Heart  TEXT,            other  TEXT, Ifother VARCHAR DEFAULT NULL,           illness  TEXT,            Dates  TEXT,            medications  TEXT,            Drink  TEXT,            Smoke  TEXT,            Drugs  TEXT,            Diet  TEXT,            Exercise  TEXT,            hazardous  TEXT,            hazardousyes  TEXT,            female  TEXT,                 patient  TEXT) ";
            
            
            
            if (sqlite3_exec(ehrdb6, sql_stmt, NULL, NULL, &errMsg) != SQLITE_OK)
            {
                BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Failed to create table."];
                
                //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                [alert setDestructiveButtonWithTitle:@"x" block:nil];
                [alert show];            }
            
            sqlite3_close(ehrdb6);
            
        } else {
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Failed to open or create DB."];
            
            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }
    */

    [super viewDidLoad];
    patientsign.text=[recorddict objectForKey:@"name"];
    //recorddict=[[NSMutableDictionary alloc]init];
    selecteddisease=[[NSMutableArray alloc]init];
    temp=[[NSMutableDictionary alloc]init];
    temp=recorddict;
    circle=[[NSMutableArray alloc]init];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    
    
	// Do any additional setup after loading the view.
}
-(void)dismissKeyboard
{
    [date resignFirstResponder];
    [otherdis resignFirstResponder];
    [otheropt resignFirstResponder];
    [surg resignFirstResponder];
    [medhad resignFirstResponder];
    [hazlist resignFirstResponder];
    [patsign resignFirstResponder];
     }

- (IBAction) toggleEnabledTextForSwitch1onSomeLabel: (id) sender
{
	if (switch1.on){
        reslabel1.text = @"Yes";
        hazlist.hidden=NO;
        plslisthide.hidden=NO;
    }
	else{
        
    reslabel1.text = @"No";
        hazlist.hidden=YES;
        plslisthide.hidden=YES;
        hazlist.text=@" ";
    }
}
- (IBAction) toggleEnabledTextForSwitch2onSomeLabel: (id) sender
{
	if (switch2.on) reslabel2.text = @"Yes";
	else
    {
        reslabel2.text = @"No";
        
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)checkboxSelected:(UIButton*)sender {
        sender.selected = !sender.selected;
    if(sender.selected){
     [sender setImage:[UIImage imageNamed:@"checkBoxMarked.png"] forState:UIControlStateNormal];
    }
    else{
         [sender setImage:[UIImage imageNamed:@"checkBox.png"] forState:UIControlStateNormal];
    }
    if(button35.selected)
    {
        otherdis.hidden=NO;
    }
    else{
        otherdis.hidden=YES;
        otherdis.text=@" ";
    }

}
-(IBAction)submit:(id)sender{
    recorddict=[[NSMutableDictionary alloc]init];
    [recorddict addEntriesFromDictionary:temp];
    selecteddisease=[[NSMutableArray alloc]init];
    
    circle=[[NSMutableArray alloc]init];

    if(button1.selected)
    {
        Anemia.text=@"Anemia";
        [selecteddisease addObject:@"Anemia"];
        
    }
    else
        Anemia.text=NULL;
    if(button2.selected)
    {
        Muscular.text=@"Muscular Dystrophy";
        [selecteddisease addObject:@"Muscular Dystrophy"];
        
    }
    else
        Muscular.text=NULL;
    if(button3.selected)
    {
        Rheumatic.text=@"Rheumatic Fever";
       [selecteddisease addObject:@"Rheumatic Fever"];

        
    }
    else
        Rheumatic.text=NULL;
    if(button4.selected)
    {
        Allergies.text=@"Allergies";
        [selecteddisease addObject:@" Allergies"];
        
    }
    else
        Allergies.text=@"Allergies";
        if(button5.selected)
    {
        Polio1.text=@"Polio";
         [selecteddisease addObject:@"Polio"];
        
    }
    else
        Polio1.text=NULL;
    if(button6.selected)
    {
        Multiple.text=@"Multiple Sclerosis";
          [selecteddisease addObject:@"Multiple Sclerosis"];
    }
    else
        Multiple.text=NULL;
    if(button7.selected)
    {
    Scarlet.text=@"Scarlet Fever";
         [selecteddisease addObject:@"Scarlet Fever"];
        
    }
    else
        Scarlet.text=NULL;
    if(button8.selected)
    {
        HIV.text=@"HIV";
         [selecteddisease addObject:@"HIV"];
    }
    else
        HIV.text=NULL;
    if(button9.selected)
    {
        Asthma.text=@"Asthma";
          [selecteddisease addObject:@"Asthma"];
    }
    else
        Asthma.text=NULL;
    if(button10.selected)
    {
        German.text=@"German Measles";
        [selecteddisease addObject:@"German Measles"];
    }
    else
        German.text=NULL;
    if(button11.selected)
    {
        Nervousness.text=@"Nervousness";
         [selecteddisease addObject:@" Nervousness"];
        
    }
    else
        Nervousness.text=NULL;
    if(button12.selected)
    {
        Numbness.text=@"Numbness";
         [selecteddisease addObject:@"Numbness"];
    }
    else
        Numbness.text=NULL;
    if(button13.selected)
    {
        Epilepsy.text=@"Epilepsy";
        [selecteddisease addObject:@"Epilepsy"];
    }
    else
        Epilepsy.text=NULL;
    if(button14.selected)
    {
        Concussion.text=@"Concussion";
       [selecteddisease addObject:@"Concussion"];
    }
    if(button15.selected)
    {
        Dizziness.text=@"Dizziness";
        [selecteddisease addObject:@"Dizziness"];
        
    }
    else
        Dizziness.text=NULL;
    if(button16.selected)
    {
        Neuritis.text=@"Neuritis";
        [selecteddisease addObject:@"Neuritis"];
        
    }
    else
        Neuritis.text=NULL;
    if(button17.selected)
    {
        Diabetes.text=@"Disbetes";
       [selecteddisease addObject:@"Diabetes "];
        
    }
    else
        Diabetes.text=NULL;
    if(button18.selected)
    {
        Arthritis.text=@"Arthritis";
        [selecteddisease addObject:@"Arthritis"];
    }
    else
        Arthritis.text=NULL;
    if(button19.selected)
    {
        Venereal.text=@"Venereal Disease";
       
        [selecteddisease addObject:@"Venereal Disease"];
        
    }
    else
        Venereal.text=NULL;
    if(button20.selected)
    {
       Backaches.text=@"Backaches";
        [selecteddisease addObject:@"Backaches"];
        
    }
    if(button21.selected)
    {
        Liver.text=@"Liver Disease";
               [selecteddisease addObject:@"Liver Disease"];
        
    }
    else
        Liver.text=NULL;
    if(button22.selected)
    {
        Kidney.text=@"Kidney Disease";
                [selecteddisease addObject:@"Kidney Disease"];
        
    }
    else
        Kidney.text=NULL;
    if(button23.selected)
    {
        Thyroid.text=@"Thyroid Disease";
        [selecteddisease addObject:@"Thyroid Disease"];
        
    }
    else
        Thyroid.text=NULL;
    if(button24.selected)
    {
        Alcoholism.text=@"Alcoholism";
         [selecteddisease addObject:@"Alcoholism"];
        
    }
    else
        Thyroid.text=NULL;
    if(button25.selected)
    {
        Mental.text=@"Mental Illness";
         [selecteddisease addObject:@"Mental Illness"];
        
    }
    else
        Thyroid.text=NULL;
    if(button26.selected)
    {
        High.text=@"High Blood Pressure";
        [selecteddisease addObject:@"High Blood Pressure"];
    }
    else
        High.text=NULL;
    if(button27.selected)
    {
        Digestive.text=@"Digestive Disorders";
        [selecteddisease addObject:@"Digestive Disorders"];
        
    }
    else
        Digestive.text=NULL;
    
    if(button28.selected)
    {
        Heart.text=@"Heart trouble";
        [selecteddisease addObject:@"Heart trouble"];
    }
    else
        Heart.text=NULL;
    if(button29.selected)
    {
        Cancer.text=@"Cancer";
         [selecteddisease addObject:@" Cancer "];
    }
    else
        Cancer.text=NULL;
    if(button30.selected)
    {
        Sinus.text=@"Sinus Trouble";
         [selecteddisease addObject:@"Sinus Trouble"];
        
    }
    else
        Sinus.text=NULL;
    if(button31.selected)
    {
        Convulsions.text=@"Convulsions";
         [selecteddisease addObject:@"Convulsions"];
        
    }
    else
        Convulsions.text=NULL;
    if(button32.selected)
    {
        Rheumatism.text=@"Rhematism";
        [selecteddisease addObject:@"Rheumatism"];
        
    }
    else
        Rheumatism.text=NULL;
    if(button33.selected)
    {
        Tuberculosis.text=@"Tuberculosis";
         [selecteddisease addObject:@"Tuberculosis"];
    }
    else
        Tuberculosis.text=NULL;
    if(button34.selected)
    {
        Hepatitis.text=@"Hepatitis";
        [selecteddisease addObject:@"Hepatitis"];
        
    }
    else
        Hepatitis.text=NULL;
    if(button35.selected)
    {
        other.text=@"other";
        ifother.text=otherdis.text;
        [selecteddisease addObject:otherdis.text];
        
    }
    else
    {
        other.text=NULL;
        ifother.text=NULL;
    }
    if(buttonx1.selected)
    {
        Drink.text=@"Drink Regularly";
       // NSLog(@"selected %hhd",buttonx1.selected);
        [circle addObject:@"Drink Regularly"];
        
    }
    else
        Drink.text=NULL;
    if(buttonx2.selected)
    {
     Diet.text=@"Eat a Poor Diet";
        [circle addObject:@"Eat a Poor Diet"];
        
    }
    else
        Diet.text=NULL;
    if(buttonx3.selected)
    {
        Excercise.text=@"Exercise Regularly";
        [circle addObject:@"Exercise Regularly"];
        
    }
    else
        Excercise.text=NULL;
    if(buttonx4.selected)
    {
        smoke.text=@"Smoke";
        [circle addObject:@"Smoke"];
        
    }
    else
        smoke.text=NULL;
    if(buttonx5.selected)
    {
        Drugs.text=@"Take Recreational Dugs";
        [circle addObject:@"Take Recreational Dugs"];
        
    }
    else
        Drugs.text=NULL;
    
    [recorddict setObject:selecteddisease forKey:@"selecteddis"];
    [recorddict setObject:circle forKey:@"doyoucircle"];
    if((button35.selected)&&([otherdis.text length]!=0))
    {
        
        a=1;
      //  NSLog(@"entered %d",a);
       
    }
    else if(!(button35.selected))
    {
        NSLog(@"else if");
        a=1;
    }
    else
    {NSLog(@"else ");
        a=0;
    }
    if(([reslabel1.text isEqual:@"Yes"] )&& (hazlist.hidden==NO))
    {
        b =[self validateNames:[hazlist text]];
    }
    else if(([reslabel1.text isEqual:@"No"] )&&(hazlist.hidden==YES))
    {
        b =1;
    }
    else{
        b=0;
    }
   
    if(([selecteddisease count]!=0)&&([circle count]!=0)&&([surg.text length]!=0)&&([medhad.text length]!=0)&&([date.text length]!=0)&&([patsign.text length]!=0))
    {
        c=0;
    if([self validateNames:[surg text]]==1)
    {
     if([self validateDate:[date text]]==1)
     {
         if([self validateNames:[medhad text]]==1)
         {
             if([self validateNames:[patsign text]]==1)
             {
        
                   [recorddict setValue:surg.text forKey:@"majorillness"];
                   [recorddict setValue:date.text forKey:@"majorillnessdate"];
                   [recorddict setValue:medhad.text forKey:@"medicines"];
                                    [recorddict setValue:reslabel1.text forKey:@"hazardoussubstances"];
                  [recorddict setValue:reslabel2.text forKey:@"femalepregnant"];
                  if(a==1)
                  {
                      [recorddict setValue:otherdis.text forKey:@"Otherdisease"];
                      if(b==1)
                      {
                           c=1;
                         [recorddict setValue:hazlist.text forKey:@"hazardouslist"];
                      }
                      else
                      {
                          BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Hazardous Substances."];
                          
                          //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                          [alert setDestructiveButtonWithTitle:@"x" block:nil];
                          [alert show];
                      }
                  }
                  else{
                      BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid otherdisease name."];
                      
                      //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                      [alert setDestructiveButtonWithTitle:@"x" block:nil];
                      [alert show];
                  }
             
           
         }
             else
             {
                 BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Patient Signature."];
                 
                 //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
                 [alert setDestructiveButtonWithTitle:@"x" block:nil];
                 [alert show];
             }
         }
         
         else{
             BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Medicines."];
             
             //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
             [alert setDestructiveButtonWithTitle:@"x" block:nil];
             [alert show];
         }
     }
        else
        {
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid Date."];
            
            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
    }
    else{
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter valid surgeries or major illnesses."];
        
        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];

        
    }
    }
    else{
        BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Enter all the required fields."];
        
        //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
        [alert setDestructiveButtonWithTitle:@"x" block:nil];
        [alert show];
    }
    if((a==1)&&(b==1)&&(c==1))
    {
        NSLog(@"submit full recorddict values %@",recorddict);
           }
        
    }

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    
    //NSLog(@"identifier %@",identifier);
    if([identifier isEqual:@"Patientdetail2"])
    {
        if ((c==1)&&(a==1))
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
    
    if ([segue.identifier isEqualToString:@"Patientdetail2"])
    {
        
        Patient3ViewController *destViewController = [segue destinationViewController];
        destViewController.recorddict=recorddict;
        NSLog(@"recorddict in Patient2VC first %@",recorddict);
    }
    
    
}
-(IBAction)clear:(id)sender
{
      for (UIView *subview in [self.view subviews])
            if([subview isKindOfClass:[UITextField class]])
                [(UITextField*)subview setText:@""];
  
  
}
/*-(void)savedata1
{
    
    sqlite3_stmt    *statement;
    
    const char *dbpath = [databasePath UTF8String];
    
    if (sqlite3_open(dbpath, &ehrdb6) == SQLITE_OK)
    {
         NSString *insertSQL = [NSString stringWithFormat:@"INSERT INTO PATIENTINFO (Name,Date, StreetAddress,  City,State,Zipcode, Homephone,Pager,MobileNumber,DateOfBirth,SocialSecurityNumber,Gender,  MaritalStatus, Student, EmployerName, Occupation,EmployerAddress,                               Workphone,EmployerCity,Estate,Ezip,SpousesName,SpousesEmp,Spousesph, Name_friend,Phone_friend, Chiropratic_care,Symptoms,Painscale,         Symptom1, Painscale1,Symptom2,Painscale2, Symptom_Accident, TypeOfAccident, Date_Of_Accident, Accident_Reported,When,Where,Attorney_accident,                              NameOfAttorney,phone_Number,Fault_accident,Insurance, Insurance_phone,Name_auto,Phone_auto,policy,  Name_health,  Health_phone,                               prev_accident,Prev_When,anemia, Muscular, Rheumatic,   Allergies,Cancer,   Polio1,         Multiple,Scarlet,         HIV,         Sinus,         Asthma,         German,         Nervousness,         Numbness,         Convulsions,         Epilepsy,         Concussion,         Dizziness,         Neuritis,         Rheumatism,         Diabetes,         Arthritis,         Venereal,         Backaches,Tuberculosis,         Liver,         Kidney,         Thyroid,         Alcoholism,         Hepatitis,         Mental,         High,         Digestive,         Heart,         other,         Ifother,         Illness,         Dates,         Medications,         Drink,         Smoke,         Drugs,         Diet,         Exercise,         Hazardous,         Hazardousyes,         Female,         Dr,         Patient) VALUES (\"%@\", \"%@\", \"%@\",\"%@\", \"%@\", \"%@\",\"%@\", \"%@\", \"%@\",\"%@\", \"%@\", \"%@\",\"%@\", \"%@\", \"%@\",\"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\",\"%@\", \"%@\", \"%@\",\"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\",\"%@\", \"%@\", \"%@\",\"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\",\"%@\",\"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\",\"%@\",\"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\",\"%@\",\"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\",\"%@\",\"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\",\"%@\",\"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\", \"%@\")", [recorddict objectForKey:@"name"],[recorddict objectForKey:@"todaydate"],[recorddict objectForKey:@"streetaddress"],
         [recorddict objectForKey:@"city"],
         [recorddict objectForKey:@"state"],
         [recorddict objectForKey:@"zipcode"],
         [recorddict objectForKey:@"homephone"],
         [recorddict objectForKey:@"pager"],
         [recorddict objectForKey:@"cellphone"],
         [recorddict objectForKey:@"DateOfBirth"],
         [recorddict objectForKey:@"ssn"],
         [recorddict objectForKey:@"sex"],
         [recorddict objectForKey:@"Maritalstatus"],
         [recorddict objectForKey:@"Student"],
         [recorddict objectForKey:@"empname"],
         [recorddict objectForKey:@"occupation"],
         [recorddict objectForKey:@"empaddress"],
         [recorddict objectForKey:@"workphone"],
         [recorddict objectForKey:@"empcity"],
         [recorddict objectForKey:@"workstate"],
         [recorddict objectForKey:@"workzipcode"],
         [recorddict objectForKey:@"spousename"],
         [recorddict objectForKey:@"spouseemp"],
         [recorddict objectForKey:@"spousephone"],
         [recorddict objectForKey:@"relativename"],
         [recorddict objectForKey:@"relativephone"],
         [recorddict objectForKey:@"hadchiropractic"],
         [recorddict objectForKey:@"symptom1"],
         [recorddict objectForKey:@"symrate1"],
         [recorddict objectForKey:@"symptom2"],
         [recorddict objectForKey:@"symrate2"],
         [recorddict objectForKey:@"symptom3"],
         [recorddict objectForKey:@"symrate3"],
         [recorddict objectForKey:@"symduetoacc"],
         [recorddict objectForKey:@"TypeOfaccident"],
         [recorddict objectForKey:@"Dateofaccident"],
         [recorddict objectForKey:@"accreported"],
         [recorddict objectForKey:@"Medicaltime"],
         [recorddict objectForKey:@"MedicalLocation"],
         [recorddict objectForKey:@"retainedattorney"],
         [recorddict objectForKey:@"nameofattorney"],
         [recorddict objectForKey:@"attorneyphone"],
         [recorddict objectForKey:@"NOP"],
         [recorddict objectForKey:@"insurancecom"],
         [recorddict objectForKey:@"insurancepho"],
         [recorddict objectForKey:@"autoname"],
         [recorddict objectForKey:@"autoph"],
         [recorddict objectForKey:@"autopolicy"],
         [recorddict objectForKey:@"healthname"],
         [recorddict objectForKey:@"healthphone"],
         [recorddict objectForKey:@"prevautoorwork"],
         [recorddict objectForKey:@"prevauto"],Anemia.text,Muscular.text,Rheumatic.text,Allergies.text,Polio1.text,Multiple.text,HIV.text,Sinus.text,Asthma.text,German.text,Nervousness.text,Numbness.text,Convulsions.text,Epilepsy.text,Concussion.text,Dizziness.text,Neuritis.text,Rheumatism.text,Diabetes.text,Arthritis.text,Venereal.text,Backaches.text,Liver.text,Kidney.text,Thyroid.text,Alcoholism.text,Hepatitis.text,Mental.text,High.text,Digestive.text,Heart.text,other.text,ifother.text,
                  [recorddict objectForKey:@"majorillness"],
         [recorddict objectForKey:@"majorillnessdate"],
         [recorddict objectForKey:@"medicines"],Drink.text,smoke.text,Drugs.text,Diet.text,Excercise.text,
         
         [recorddict objectForKey:@"hazardoussubstances"],
         [recorddict objectForKey:@"hazardouslist"],
         [recorddict objectForKey:@"femalepregnant"],
         [recorddict objectForKey:@"docotorsign"],
                                [recorddict objectForKey:@"patientsign"] ];
                               
               
        
        const char *insert_stmt = [insertSQL UTF8String];
        
        sqlite3_prepare_v2(ehrdb6, insert_stmt, -1, &statement, NULL);
        if (sqlite3_step(statement) == SQLITE_DONE)
        {
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Form Submitted Successfully."];
            
            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
        }
        else
        {
            BlockAlertView *alert = [BlockAlertView alertWithTitle:@"Oh Snap!" message:@"Form Submission Failed."];
            
            //  [alert setCancelButtonWithTitle:@"Cancel" block:nil];
            [alert setDestructiveButtonWithTitle:@"x" block:nil];
            [alert show];
           
        }
        sqlite3_finalize(statement);
        sqlite3_close(ehrdb6);
    }
}
 */
@end
