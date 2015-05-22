//
//  RootTableViewController.m
//  ToDo
//
//  Created by Jonathan Beaulieu on 5/22/15.
//  Copyright (c) 2015 Jonathan Beaulieu. All rights reserved.
//

#import "RootTableViewController.h"
#import "ExpandingCell.h"

@interface RootTableViewController ()

@property (nonatomic, strong) NSArray* dataArr;
@property NSInteger selectedIndex;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation RootTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.dataArr = @[@"One", @"Two", @"Three"];
    self.selectedIndex = -1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArr.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"expandingCell";
    
    ExpandingCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        cell = [[ExpandingCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    if (self.selectedIndex == indexPath.row) {
        cell.isExpanded = YES;
    } else {
        cell.isExpanded = NO;
    }
    
    cell.title.text = [self.dataArr objectAtIndex:indexPath.row];
    cell.subtitle.text = @"Subtitle";
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (self.selectedIndex == indexPath.row) {
        return 100;
    } else {
        return 44;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.selectedIndex = indexPath.row;
    [self.tableView reloadData];
}

@end
