//
//  PlanetDetailsController.m
//  sampleTopic
//
//  Created by amarjit singh on 2/29/16.
//  Copyright © 2016 amarjit singh. All rights reserved.
//

#import "PlanetDetailsController.h"

@interface PlanetDetailsController ()

@end

@implementation PlanetDetailsController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.titleLabel.text = self.planetDictionary[@"name"];
    self.temp.text =[NSString stringWithFormat:@"Temperature = %@", self.planetDictionary[@"temperature"]];
    self.radius.text = [NSString stringWithFormat:@"Radius = %@", self.planetDictionary[@"radius"]];
    self.details.text = self.planetDictionary[@"detail"];
    self.image.image = [UIImage imageNamed:self.planetDictionary[@"image"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
