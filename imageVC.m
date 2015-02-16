//
//  imageVC.m
//  SolarSystem
//
//  Created by Alfred on 15/2/15.
//  Copyright (c) 2015 Maptier. All rights reserved.
//

#import "imageVC.h"

@interface imageVC ()

@end

@implementation imageVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Venus.jpg"]];
    self.scrollView.contentSize = self.imageView.frame.size;
    [self.scrollView addSubview:self.imageView];
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
