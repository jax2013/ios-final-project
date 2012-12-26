//
//  FirstViewController.h
//  PAFinal
//
//  Created by Ning Zhao on 12/9/12.
//  Copyright (c) 2012 Ning Zhao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AlertViewController : UIViewController
- (IBAction)alertwok:(id)sender;
- (IBAction)alertwyesno:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *text1;

@end
