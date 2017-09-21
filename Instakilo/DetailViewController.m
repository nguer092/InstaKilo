//
//  DetailViewController.m
//  Instakilo
//
//  Created by Nicolas Guerrero on 9/21/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "DetailViewController.h"
#import "PhotoObject.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.detailNameLabel.text = self.photo.name;
    self.detailImage.image = self.photo.image;
}

@end
