//
//  MyTableViewController.m
//  sampleTopic
//
//  Created by amarjit singh on 2/26/16.
//  Copyright © 2016 amarjit singh. All rights reserved.
//


#import "MyTableViewController.h"
#import "PlanetDetailsController.h"

@interface MyTableViewController ()

@end

@implementation MyTableViewController{
    NSArray *vals;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    vals = @[@"Mercury",@"Venus",@"Earth",@"Mars", @"Jupiter", @"Saturn", @"Uranus", @"Neptune", @"Pluto"];
    
    [self planetArray];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
     //self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    
    return [[self planetArray]count];
//    if(section==0){
//        return 2;
//    }else{
//        return 5;
//    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
//    
//    if (indexPath.section==0) {
//        cell.backgroundColor = [UIColor redColor];
//    }else cell.backgroundColor = [UIColor greenColor];
//    
//    cell.textLabel.text = [NSString stringWithFormat:@"Section:%li Row:%li",(long)indexPath.section,(long)indexPath.row]
//    ;
    
    NSDictionary *dict = [[self planetArray]objectAtIndex:indexPath.row];
    
    cell.textLabel.text = dict[@"name"];
    
    cell.detailTextLabel.text = dict[@"caption"];
    
    cell.imageView.image = [UIImage imageNamed: dict[@"image"]];
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//
//    NSDictionary *dict = [[self planetArray]objectAtIndex:indexPath.row];
//    
//    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    
//
//    PlanetDetailsController *vc = [sb instantiateViewControllerWithIdentifier:@"PlanetDetailsController"];
//    
//    vc.planetDictionary = dict;
//    
//    vc.vals = vals;
//    
//    [self.navigationController pushViewController:vc animated:YES];
//    
//}



-(NSArray *)planetArray{
    
    
    return @[
             @{@"name": @"Mercury", @"caption": @"Mercury is the planet closest to the Sun", @"temperature":@"750 \u00B0F", @"radius": @"1,516 miles", @"image": @"1.png", @"detail": @"Mercury is the smallest planet in the Solar System.It is the closest planet to the sun. It makes one trip around the Sun once every 87.969 days. Mercury is bright when it is visible from Earth, ranging from −2.0 to 5.5 in apparent magnitude."},
             @{@"name": @"Venus", @"caption": @"Venus is the second planet from the Sun", @"temperature":@"864 \u00B0F", @"radius": @"3,760 miles", @"image": @"2.png", @"detail": @"Venus is the second planet from the Sun, orbiting it every 224.7 Earth days. It has no natural satellite. It is named after the Roman goddess of love and beauty. After the Moon, it is the brightest natural object in the night sky, reaching an apparent magnitude of −4.6, bright enough to cast shadows."},
             @{@"name": @"Earth", @"caption": @"Earth is our home planet", @"temperature":@"61 \u00B0F", @"radius": @"3,959 miles", @"image": @"3.png", @"detail": @"Earth, also called the world and, less frequently, Gaia is the third planet from the Sun, the densest planet in the Solar System, the largest of the Solar System's four terrestrial planets, and the only astronomical object known to accommodate life."},
             @{@"name": @"Mars", @"caption": @"Mars is Earth's sister planet", @"temperature":@"70 \u00B0F", @"radius": @"2,106 miles", @"image": @"4.png", @"detail": @"Mars is the fourth planet from the Sun and the second smallest planet in the Solar System, after Mercury. Named after the Roman god of war, it is often referred to as the 'Red Planet' because the iron oxide prevalent on its surface gives it a reddish appearance."},
             @{@"name": @"Jupiter", @"caption": @"Jupiter is the largest planet in out solar system", @"temperature":@"-234 \u00B0F", @"radius": @"43,441 miles", @"image": @"5.png", @"detail": @"Jupiter is the fifth planet from the Sun and the largest planet in the Solar System. It is a giant planet with a mass one-thousandth of that of the Sun, but is two and a half times that of all the other planets in the Solar System combined."},
             @{@"name": @"Saturn", @"caption": @"Saturn is the second largest planet", @"temperature":@"-280 \u00B0F", @"radius": @"36,184 miles", @"image": @"6.png", @"detail": @"Saturn is the sixth planet from the Sun and the second largest in the Solar System, after Jupiter. It is a gas giant with an average radius about nine times that of Earth."},
             @{@"name": @"Uranus", @"caption": @"Uranus is the seventh planet from the Sun", @"temperature":@"-243 \u00B0F", @"radius": @"15,759 miles", @"image": @"7.png", @"detail": @"Uranus is the seventh planet from the Sun. It has the third-largest planetary radius and fourth-largest planetary mass in the Solar System. Uranus is similar in composition to Neptune, and both have different bulk chemical composition from that of the larger gas giants Jupiter and Saturn."},
             @{@"name": @"Neptune", @"caption": @"Neptune is the eighth planet from the Sun", @"temperature":@"-346 \u00B0F", @"radius": @"15,299 miles", @"image": @"8.png", @"detail": @"Neptune is the eighth and farthest planet from the Sun in the Solar System. It is the fourth-largest planet by diameter and the third-largest by mass. Among the gaseous planets in the Solar System, Neptune is the most dense."},
             @{@"name": @"Pluto", @"caption": @"Pluto is the smallest planet in our solar system", @"temperature":@"-387 \u00B0F", @"radius": @"736 miles", @"image": @"9.png", @"detail": @"Pluto was known as the smallest planet in the solar system and the ninth planet from the sun. Today, Pluto is called a 'dwarf planet'. A dwarf planet orbits the sun just like other planets, but it is smaller. A dwarf planet is so small it cannot clear other objects out of its path."}];
}







/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    PlanetDetailsController *dest = [segue destinationViewController];
    UITableViewCell *cell = (UITableViewCell*)sender;
    for (int i=0; i<vals.count; i++) {
        if([vals[i] isEqualToString:cell.textLabel.text]){
            dest.planetDictionary = [[self planetArray]objectAtIndex:i];
            break;
        }
    }
    }


@end
