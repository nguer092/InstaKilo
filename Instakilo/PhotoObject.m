//
//  PhotoObject.m
//  Instakilo
//
//  Created by Nicolas Guerrero on 9/20/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "PhotoObject.h"

@implementation PhotoObject

-(instancetype)initWithName:(NSString *)name{
    if (self = [super init]) {
        _image = [UIImage imageNamed:name];
    }
    
    return self;
}

@end
