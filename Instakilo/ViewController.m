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
#import "DetailViewController.h"

@interface ViewController () <UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic) NSArray* photos;
@property (nonatomic) NSArray* masterPhotos;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createPhoto];
}

#pragma mark - Date Source

-(void)createPhoto{
    PhotoObject *naruto = [[PhotoObject alloc] initWithName:@"Naruto Uzumaki"];
    PhotoObject *luffy = [[PhotoObject alloc] initWithName:@"Monkey D. Luffy"];
    PhotoObject *gon = [[PhotoObject alloc] initWithName:@"Gon Freecs"];
    PhotoObject *eren = [[PhotoObject alloc] initWithName:@"Eren Yeager"];
    PhotoObject *edward = [[PhotoObject alloc] initWithName:@"Edward Elric"];
    PhotoObject *kakashi = [[PhotoObject alloc] initWithName:@"Kakashi Hatake"];
    PhotoObject *shanks = [[PhotoObject alloc] initWithName:@"Red-Haired Shanks"];
    PhotoObject *oldman = [[PhotoObject alloc] initWithName:@"Isaac Netero"];
    PhotoObject *levi = [[PhotoObject alloc] initWithName:@"Captain Levi Ackerman"];
    PhotoObject *roy = [[PhotoObject alloc] initWithName:@"Lt. Roy Mustang"];
    PhotoObject *simon = [[PhotoObject alloc] initWithName:@"Simon"];
    PhotoObject *kamina = [[PhotoObject alloc] initWithName:@"Kamina"];
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
    if (indexPath.section == 0)
        cell.photo = self.photos[indexPath.row];
    else if (indexPath.section == 1)
        cell.photo = self.masterPhotos[indexPath.row];
    
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

#pragma mark - Segue to Detail View Controller

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DetailViewController * dvc = segue.destinationViewController;
    NSIndexPath *path = [self.collectionView indexPathForCell:(UICollectionViewCell*)sender];
    if (path.section == 0) {
         dvc.photo = self.photos[path.row];
    } else {
        dvc.photo = self.masterPhotos[path.row];
    }
   
}

@end
