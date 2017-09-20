//
//  CharacterTitleReusableView.m
//  Instakilo
//
//  Created by Nicolas Guerrero on 9/20/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "CharacterTitleReusableView.h"
#import "PhotoObject.h"

@implementation CharacterTitleReusableView

- (void)setPhotoObject:(PhotoObject *)photo {
    self.label.text = photo.name ;
    _photo = photo;
}

@end
