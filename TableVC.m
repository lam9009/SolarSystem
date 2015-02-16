//
//  TableVC.m
//  SolarSystem
//
//  Created by Alfred on 13/2/15.
//  Copyright (c) 2015 Maptier. All rights reserved.
//

#import "TableVC.h"
#import "AstronomicalData.h"
#import "SpaceObject.h"

@interface TableVC ()

@end

@implementation TableVC

- (void)viewDidLoad {
    [super viewDidLoad];

    self.planets = [[NSMutableArray alloc] init];
    for (NSMutableDictionary *planetData in [AstronomicalData allKnownPlanets]){
        NSString *imageName = [NSString stringWithFormat:@"%@.jpg", planetData[PLANET_NAME]];
        SpaceObject *planet = [[SpaceObject alloc] initWithData:planetData andImage:[UIImage imageNamed:imageName]];
        [self.planets addObject:planet];
    }
    
//    NSString *planet1 = @"Mercury";
//    NSString *planet2 = @"Venus";
//    NSString *planet3 = @"Earth";
//    NSString *planet4 = @"Mars";
//    NSString *planet5 = @"Jupiter";
//    NSString *planet6 = @"Saturn";
//    NSString *planet7 = @"Uranus";
//    NSString *planet8 = @"Neptune";
//    
//    
//    [self.planets addObject:planet1];
//    self.planets = [@[planet2,planet3,planet4,planet5,planet6,planet7,planet8] mutableCopy];
//    
//    //
//    NSMutableDictionary *myDic = [[NSMutableDictionary alloc]init];
//    [myDic setObject:@"Male" forKey:@"Gender"];
//    [myDic setObject:@"Manager" forKey:@"Occupation"];
//    [myDic setObject:@"United States" forKey:@"Citizenship"];
//    [myDic setObject:@51 forKey:@"Age"];
//    NSLog(@"%@", myDic);
//    
//    NSNumber *myNum1 = [NSNumber numberWithInt:5];
//    NSNumber *myNum2 = [NSNumber numberWithFloat:3.1415926];
//    NSLog(@"%@", myNum1);
//    NSLog(@"%@", myNum2);

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
    return [self.planets count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
//    cell.textLabel.text = @"It is Valentine Day today!";
//    cell.textLabel.text = [self.planets objectAtIndex:indexPath.section];
    
//    cell.textLabel.text = [self.planets objectAtIndex:indexPath.row];
//    cell.detailTextLabel.text =[NSString stringWithFormat:@"Solar System Planet %li", indexPath.row+1];
    
    SpaceObject *planet = [self.planets objectAtIndex:indexPath.row];
    cell.textLabel.text = planet.name;
    cell.textLabel.textColor = [UIColor yellowColor];
    cell.imageView.image = planet.spaceImage;
    
    if (indexPath.row == 0){
        cell.backgroundColor = [UIColor blueColor];
    }else if (indexPath.row == 1){
        cell.backgroundColor = [UIColor greenColor];
    }else if (indexPath.row == 2){
        cell.backgroundColor = [UIColor brownColor];
    }else if (indexPath.row == 3){
        cell.backgroundColor = [UIColor grayColor];
    }else if (indexPath.row == 4){
        cell.backgroundColor = [UIColor yellowColor];
    }else if (indexPath.row == 5){
        cell.backgroundColor = [UIColor purpleColor];
    }else if (indexPath.row == 6){
        cell.backgroundColor = [UIColor redColor];
    }else {
        cell.backgroundColor = [UIColor darkGrayColor];
    }
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
