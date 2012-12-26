//
//  WebServiceViewController.h
//  PAFinal
//
//  Created by Ning Zhao on 12/9/12.
//  Copyright (c) 2012 Ning Zhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebServiceViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textfield4;
- (IBAction)convertbutton:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *tempresult;

@end
