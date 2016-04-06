//
//  PlanetDetailsController.h
//  sampleTopic
//
//  Created by amarjit singh on 2/29/16.
//  Copyright © 2016 amarjit singh. All rights reserved.
//

#import "ViewController.h"

@interface PlanetDetailsController : ViewController
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *details;
@property (weak, nonatomic) IBOutlet UILabel *temp;
@property (weak, nonatomic) IBOutlet UILabel *radius;
@property (strong, nonatomic)NSDictionary *planetDictionary;

@property (strong, nonatomic)NSArray *vals;

@end
