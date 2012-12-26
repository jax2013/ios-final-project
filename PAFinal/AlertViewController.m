//
//  FirstViewController.m
//  PAFinal
//
//  Created by Ning Zhao on 12/9/12.
//  Copyright (c) 2012 Ning Zhao. All rights reserved.
//

#import "AlertViewController.h"

@interface AlertViewController ()

@end

@implementation AlertViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.text1.text = @"";

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)alertwok:(id)sender {
    UIAlertView *alert =[[UIAlertView alloc] initWithTitle:@"title" message:@"message" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    [alert show];

}
- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    
    //we could use switch case logic...
    if (buttonIndex == 0) {
        self.text1.text = @"YES was selected";
    }
    else {
        self.text1.text = @"NO is selected";
        }
    
    
}

- (IBAction)alertwyesno:(id)sender {
    UIAlertView *alert =[[UIAlertView alloc] initWithTitle:@"title" message:@"message" delegate:self cancelButtonTitle:@"YES" otherButtonTitles:@"NO", nil];
    //delegate is to call us back to let's know which button user uses on the runtime...
    [alert show];
}
@end
