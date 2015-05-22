//
//  ExpandingCell.m
//  ToDo
//
//  Created by Jonathan Beaulieu on 5/22/15.
//  Copyright (c) 2015 Jonathan Beaulieu. All rights reserved.
//

#import "ExpandingCell.h"

@implementation ExpandingCell

- (void)setIsExpanded:(Boolean)isExpanded
{
    _isExpanded = isExpanded;
    if (isExpanded) {
        self.subtitle.hidden = NO;
    } else {
        self.subtitle.hidden = YES;
    }
}

- (Boolean)getIsExpanded {
    return _isExpanded;
}

@end
