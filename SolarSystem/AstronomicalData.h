//
//  AstronomicalData.h
//  SolarSystem
//
//  Created by Alfred on 14/2/15.
//  Copyright (c) 2015 Maptier. All rights reserved.
//

#import <Foundation/Foundation.h>

#define PLANET_NAME @"Planet Name"
#define PLANET_GRAVITY @"Acelleration of Gravity at Surface"
#define PLANET_DIAMETER @"Planet Size"
#define PLANET_YEAR_LENGTH @"Planet Year Length"
#define PLANET_DAY_LENGTH @"Length of Day in Hours"
#define PLANET_TEMPERATURE @"Planet Temperature"
#define PLANET_NUMBER_OF_MOONS @"Number of Moons"
#define PLANET_NICKNAME @"Planet Nickname"
#define PLANET_INTERESTING_FACT @"Fact about the Planet"
#define PLANET_IMAGE @"Image of the Planet"

@interface AstronomicalData : NSObject

+ (NSArray *)allKnownPlanets;

@end
