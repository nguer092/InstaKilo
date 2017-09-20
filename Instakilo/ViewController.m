//
//  ViewController.m
//  Instakilo
//
//  Created by Nicolas Guerrero on 9/20/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "ViewController.h"
#import "PhotoObject.h"
#import "PhotoCollectionViewCell.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic) NSArray* photos;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createPhoto];
}


-(void)createPhoto{
    PhotoObject *naruto = [[PhotoObject alloc] initWithName:@"naruto"];
    PhotoObject *luffy = [[PhotoObject alloc] initWithName:@"luffy"];
    PhotoObject *gon = [[PhotoObject alloc] initWithName:@"gon"];
    PhotoObject *eren = [[PhotoObject alloc] initWithName:@"eren"];
    PhotoObject *edward = [[PhotoObject alloc] initWithName:@"edward"];
    self.photos = @[naruto, luffy, gon, eren, edward];
}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.photos.count;
    
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    PhotoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.photo = self.photos[indexPath.row];
    return cell;
}


@end
