//
//  SecondViewController.h
//  sampleTopic
//
//  Created by amarjit singh on 2/26/16.
//  Copyright © 2016 amarjit singh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

@property NSString* nameFromViewOne;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end
