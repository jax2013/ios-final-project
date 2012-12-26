//
//  SecondViewController.h
//  PAFinal
//
//  Created by Ning Zhao on 12/9/12.
//  Copyright (c) 2012 Ning Zhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TextViewController : UIViewController <UITableViewDelegate,UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextView *textview1;
@property (weak, nonatomic) IBOutlet UIWebView *webview1;
- (IBAction)htmlbutton:(id)sender;

@end
