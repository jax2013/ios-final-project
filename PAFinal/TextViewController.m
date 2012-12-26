//
//  SecondViewController.m
//  PAFinal
//
//  Created by Ning Zhao on 12/9/12.
//  Copyright (c) 2012 Ning Zhao. All rights reserved.
//

#import "TextViewController.h"

@interface TextViewController ()

@end

@implementation TextViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.textview1.delegate=self;


}
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range
 replacementText:(NSString *)text {
    
    // Any new character added is passed in as the "text" parameter
    
    if([text isEqualToString:@"\n"]) {
        
        // Be sure to test for equality using the "isEqualToString" message
        
        [textView resignFirstResponder];
        
        // Return FALSE so that the final '\n' character doesn't get added
        
        return NO;
    }
    
    // For any other character return TRUE so that the text gets added to the view
    
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)htmlbutton:(id)sender {
    NSString *html=self.textview1.text;
        [self.webview1 loadHTMLString:html baseURL:nil];
}
@end
