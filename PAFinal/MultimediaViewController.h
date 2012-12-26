//
//  MultimediaViewController.h
//  PAFinal
//
//  Created by Ning Zhao on 12/9/12.
//  Copyright (c) 2012 Ning Zhao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import <AVFoundation/AVFoundation.h>
@interface MultimediaViewController : UIViewController <AVAudioPlayerDelegate>
- (IBAction)audiobutton:(id)sender;
- (IBAction)videobutton:(id)sender;

@end
