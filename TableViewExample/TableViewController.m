//
//  TableViewController.m
//  TableViewExample
//
//  Created by skyline on 15/12/26.
//  Copyright © 2015年 skyline. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "UITableView+FDTemplateLayoutCell.h"

static NSString *const kCellIdentifier = @"Cell";

@interface TableViewController ()

@property (nonatomic) NSArray *dataSource;

@end

@implementation TableViewController

- (void)viewDidLoad {
    _dataSource = @[@"It is unclear whether the Syrian military or Russian planes carried out the strike, the group said. Syria's state-run news agency, SANA, reported it was a Syrian special operation and aired aerial footage it said was from the strike.",
                    @"The military chief was a jailed Salafi activist, who after his release from prison in 2011 established a rebel battalion to overthrow the government of President Bashar al-Assad.",
                    @"The group rose to prominence when it claimed a July 2012 bombing on National Security Headquarters in Damascus that killed a number of top government officials, and Alloush became one of the most influential rebel leaders in Syria and a highly wanted man.",
                    @"Jaysh al-Islam, whose fighters number in the thousands, participated earlier this month in the Riyadh conference, which laid the groundwork for future Saudi-led peace talks."];
    [self.tableView registerClass:[TableViewCell class] forCellReuseIdentifier:kCellIdentifier];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = (TableViewCell *)[tableView dequeueReusableCellWithIdentifier:kCellIdentifier forIndexPath:indexPath];
    [cell configureUsingText:self.dataSource[indexPath.row]];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [tableView fd_heightForCellWithIdentifier:kCellIdentifier configuration:^(TableViewCell *cell){
        [cell updateHeightUsingText:self.dataSource[indexPath.row]];
        [cell setNeedsLayout];
    }];
}

@end
