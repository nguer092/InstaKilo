//
//  PhotoObject.h
//  Instakilo
//
//  Created by Nicolas Guerrero on 9/20/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

@import UIKit;

@interface PhotoObject : NSObject

-(instancetype)initWithName:(NSString *)name;
@property (strong) UIImage *image;
@property (strong) NSString* name;

@end
