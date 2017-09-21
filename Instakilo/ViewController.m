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
#import "CharacterTitleReusableView.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic) NSArray* photos;
@property (nonatomic) NSArray* masterPhotos;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createPhoto];
    self.title = @"Students";
}

#pragma mark - Date Source

-(void)createPhoto{
    PhotoObject *naruto = [[PhotoObject alloc] initWithName:@"naruto"];
    PhotoObject *luffy = [[PhotoObject alloc] initWithName:@"luffy"];
    PhotoObject *gon = [[PhotoObject alloc] initWithName:@"gon"];
    PhotoObject *eren = [[PhotoObject alloc] initWithName:@"eren"];
    PhotoObject *edward = [[PhotoObject alloc] initWithName:@"edward"];
    PhotoObject *kakashi = [[PhotoObject alloc] initWithName:@"kakashi"];
    PhotoObject *shanks = [[PhotoObject alloc] initWithName:@"shanks"];
    PhotoObject *oldman = [[PhotoObject alloc] initWithName:@"oldman"];
    PhotoObject *levi = [[PhotoObject alloc] initWithName:@"levi"];
    PhotoObject *roy = [[PhotoObject alloc] initWithName:@"roy"];
    PhotoObject *simon = [[PhotoObject alloc] initWithName:@"simon"];
    PhotoObject *kamina = [[PhotoObject alloc] initWithName:@"kamina"];
    self.photos = @[naruto, luffy, gon, eren, edward, simon];
    self.masterPhotos = @[kakashi, shanks, oldman, levi, roy, kamina];

}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 2;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return self.photos.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    PhotoCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    if (indexPath.section == 0){
        cell.photo = self.photos[indexPath.row];}
    else if (indexPath.section == 1){
        cell.photo = self.masterPhotos[indexPath.row];}
    
    return cell;
}

#pragma mark - Sections

- (PhotoObject *)photoAtIndexPath:(NSIndexPath *)indexPath {
    return self.photos[indexPath.section];
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    CharacterTitleReusableView *view;
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]) {
        view = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"Cell" forIndexPath:indexPath];
        NSString *header = @"";
        if (indexPath.section == 0) {
            header = @"Students";
        } else {
            header = @"Sensei";
        }
        view.label.text = header;
    }
    return view;
}

@end
