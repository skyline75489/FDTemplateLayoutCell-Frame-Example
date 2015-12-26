//
//  MyLabel.m
//  TableViewExample
//
//  Created by skyline on 15/12/26.
//  Copyright © 2015年 skyline. All rights reserved.
//

#import "MyLabel.h"

@interface MyLabel ()

@end

@implementation MyLabel

- (void)updateHeightUsingText:(NSString *)text {
    self.caculatedHeight = [text boundingRectWithSize:CGSizeMake(300, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{ NSFontAttributeName:[self font]} context:nil].size.height;
}

@end
