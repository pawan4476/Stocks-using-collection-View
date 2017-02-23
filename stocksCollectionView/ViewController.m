//
//  ViewController.m
//  stocksCollectionView
//
//  Created by Nagam Pawan on 11/12/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.array = [NSArray arrayWithObjects:@"OPEN", @"CLOSE", @"LOW", @"HIGH", @"AVG VOL", @"YEAR LOW", nil];
    self.array1 = [NSArray arrayWithObjects:@"11", @"31", @"36", @"17", @"41", @"61", nil];
    self.array2 = [NSArray arrayWithObjects:@"12", @"32", @"35", @"18", @"42", @"62", nil];
    self.array3 = [NSArray arrayWithObjects:@"13", @"33", @"34", @"19", @"43", @"63", nil];
    self.array4 = [NSArray arrayWithObjects:@"14", @"34", @"33", @"10", @"44", @"64", nil];
    self.array5 = [NSArray arrayWithObjects:@"15", @"35", @"32", @"13", @"45", @"65", nil];
    self.array6 = [NSArray arrayWithObjects:@"16", @"36", @"31", @"15", @"46", @"66", nil];
    NSString *string1 = @"1";
    NSString *string2 = @"2";
    NSString *string3 = @"3";
    NSString *string4 = @"4";
    NSString *string5 = @"5";
    NSString *string6 = @"6";
    self.allArrays = [NSArray arrayWithObjects:string1, string2, string3, string4, string5, string6, nil];
   // self.allArrays = [NSDictionary dictionaryWithObjectsAndKeys:allTheData, nil];
    //self.array1 = [NSArray arrayWithObjects:@"12", @"34", @"32", @"12", @"45", @"67", nil];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    
    return 1;
    
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return self.array.count;
    
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.openValueLabel.text = [self.array objectAtIndex:indexPath.item];
   // CollectionViewCell *cell1 = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell1" forIndexPath:indexPath];
  //  cell1.openValueLabel.text = [self.array objectAtIndex:indexPath.item];
    cell.detailsLabel.text = [self.allArrays objectAtIndex:indexPath.item];
    return cell;
    
}

@end
