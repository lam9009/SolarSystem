//
//  SpaceObject.m
//  SolarSystem
//
//  Created by Alfred on 14/2/15.
//  Copyright (c) 2015 Maptier. All rights reserved.
//

#import "SpaceObject.h"
#import "AstronomicalData.h"

@implementation SpaceObject

- (id) init{
    self = [self initWithData:nil andImage:nil];
    return self;
}

-(id)initWithData: (NSDictionary *)data andImage:(UIImage *)image{
    self = [super init];
    self.name = data[PLANET_NAME];
    
    self.spaceImage = image;
    
    return self;
}

@end
