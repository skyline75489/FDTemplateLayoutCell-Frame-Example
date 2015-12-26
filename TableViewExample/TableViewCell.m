//
//  TableViewCell.m
//  TableViewExample
//
//  Created by skyline on 15/12/26.
//  Copyright © 2015年 skyline. All rights reserved.
//

#import "TableViewCell.h"
#import "MyLabel.h"

@interface TableViewCell ()

@property (nonatomic) MyLabel *label;

@end

@implementation TableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        _label = [[MyLabel alloc] initWithFrame:CGRectMake(5, 5, 300, 40)];
        _label.numberOfLines = 0;
        _label.lineBreakMode = NSLineBreakByWordWrapping;
        [self.contentView addSubview:_label];
    }
    return self;
}

- (void)configureUsingText:(NSString *)text {
    _label.text = text;
    [self.label updateHeightUsingText:text];
}


- (void)layoutSubviews {
    [super layoutSubviews];
    _label.frame = CGRectMake(5, 5, 300, self.label.caculatedHeight);
}

- (void)updateHeightUsingText:(NSString *)text {
    [self.label updateHeightUsingText:text];
}

- (CGSize)sizeThatFits:(CGSize)size {
    return CGSizeMake(size.width, self.label.caculatedHeight + 5 /*Padding*/);
}

@end

