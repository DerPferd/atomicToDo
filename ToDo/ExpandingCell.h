//
//  ExpandingCell.h
//  ToDo
//
//  Created by Jonathan Beaulieu on 5/22/15.
//  Copyright (c) 2015 Jonathan Beaulieu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ExpandingCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *subtitle;

@property (nonatomic) Boolean isExpanded;

@end
