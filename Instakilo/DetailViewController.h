//
//  DetailViewController.h
//  Instakilo
//
//  Created by Nicolas Guerrero on 9/21/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PhotoObject;

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *detailImage;
@property (weak, nonatomic) IBOutlet UILabel *detailNameLabel;

@property (strong, nonatomic) PhotoObject *photo;

@end
