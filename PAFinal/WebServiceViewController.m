//
//  WebServiceViewController.m
//  PAFinal
//
//  Created by Ning Zhao on 12/9/12.
//  Copyright (c) 2012 Ning Zhao. All rights reserved.
//

#import "WebServiceViewController.h"

@interface WebServiceViewController ()

@end

@implementation WebServiceViewController

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
        self.textfield4.delegate = self;
    self.tempresult.numberOfLines = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convertbutton:(id)sender {
    if([self.textfield4.text length]==0){
        UIAlertView *alert=
        [[UIAlertView alloc]initWithTitle:@"Enter Number" message:nil delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK " ,nil];
        [alert show];
        return;
        
    }
    
    [UIApplication sharedApplication].networkActivityIndicatorVisible=YES;
    //self.myTextView.text=@" starting webservice access";
    [self performSelectorInBackground:@selector(doWebService:) withObject:self.textfield4.text];
}


-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
}


-(void)doWebService:(id)object
{
    
    NSString *urlString=[NSString stringWithFormat:@"http://"
                         "www.webservicex.net/"
                         "ConvertTemperature.asmx"
                         "/ConvertTemp?"
                         "Temperature=%@"
                         "&FromUnit=degreeFahrenheit"
                         "&ToUnit=degreeCelsius",object];
    
    NSLog(@"urlString; %@", urlString);
    
    NSError *myError=nil;
    NSURL *url = [NSURL URLWithString:urlString];
    NSString *xml=[NSString stringWithContentsOfURL:url  encoding:NSUTF8StringEncoding error:&myError];
    if (myError) {
        xml=[myError localizedDescription];
        
    }
    [self performSelectorOnMainThread:@selector(updateGUI:) withObject:xml waitUntilDone:YES];
    
    //    [NSThread sleepForTimeInterval:5.0];
    //
    //    [self performSelectorOnMainThread:@selector(updateGUI) withObject:nil waitUntilDone:NO];
    
}

-(void)updateGUI:(id)object
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible=NO;
    self.tempresult.text=object;
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch * touch = [touches anyObject];
    if(touch.phase == UITouchPhaseBegan) {
        [self.textfield4 resignFirstResponder];}
    
}

@end
