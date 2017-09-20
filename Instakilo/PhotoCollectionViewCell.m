//
//  PhotoCollectionViewCell.m
//  Instakilo
//
//  Created by Nicolas Guerrero on 9/20/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "PhotoCollectionViewCell.h"

@interface PhotoCollectionViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *photoImage;

@end


@implementation PhotoCollectionViewCell

-(void)setPhoto:(PhotoObject*)photo{
    self.photoImage.image = photo.image;
    _photo = photo;
}


@end
