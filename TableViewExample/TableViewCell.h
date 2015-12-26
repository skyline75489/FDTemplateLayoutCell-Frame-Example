//
//  TableViewCell.h
//  TableViewExample
//
//  Created by skyline on 15/12/26.
//  Copyright © 2015年 skyline. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

- (void)configureUsingText:(NSString *)text;

- (void)updateHeightUsingText:(NSString *)text;

@end
