//
//  FeedCell.m
//  BI-iOS-2013_06-REST
//
//  Created by Jakub Hladík on 29.10.13.
//  Copyright (c) 2013 Flowknight s.r.o. All rights reserved.
//

#import "FeedCell.h"

@interface FeedCell ()



@end

@implementation FeedCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        UIImageView *thumbView = [[UIImageView alloc] initWithFrame:CGRectZero];
        thumbView.translatesAutoresizingMaskIntoConstraints = NO;
        thumbView.contentMode = UIViewContentModeCenter;
        [self.contentView addSubview:thumbView];
        {
            [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-8-[thumbView]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(thumbView)]];

            [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-8-[thumbView]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(thumbView)]];
            
            [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:thumbView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:thumbView attribute:NSLayoutAttributeHeight multiplier:1.0 constant:0]];
        }
        self.thumbView = thumbView;
        
        UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        nameLabel.translatesAutoresizingMaskIntoConstraints = NO;
        nameLabel.backgroundColor = [UIColor yellowColor];
        nameLabel.font = [UIFont boldSystemFontOfSize:17];
        nameLabel.textAlignment = NSTextAlignmentLeft;
        nameLabel.textColor = [UIColor darkTextColor];
        [self.contentView addSubview:nameLabel];
        {
            [self.contentView addConstraints:
             [NSLayoutConstraint
              constraintsWithVisualFormat:@"H:[thumbView]-8-[nameLabel]-8-|"
              options:0
              metrics:nil
              views:NSDictionaryOfVariableBindings(thumbView, nameLabel)]];
            
            [self.contentView addConstraints:
             [NSLayoutConstraint
              constraintsWithVisualFormat:@"V:|-8-[nameLabel]"
              options:0
              metrics:nil
              views:NSDictionaryOfVariableBindings(nameLabel)]];
        }
        self.nameLabel = nameLabel;
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

//- (void)layoutSubviews
//{
//    [super layoutSubviews];
//    
//    const CGFloat kImageSize = 80;
//    self.imageView.frame = CGRectMake(8,
//                                      (CGRectGetHeight(self.contentView.bounds) - kImageSize)/2.0,
//                                      kImageSize,
//                                      kImageSize);
//    
//    self.textLabel.frame = CGRectMake(8+kImageSize+8, 8, CGRectGetWidth(self.contentView.bounds) - 8 - kImageSize - 8, CGRectGetHeight(self.contentView.bounds)/2.0 - 8);
//    self.detailTextLabel.frame = CGRectMake(8+kImageSize+8, CGRectGetHeight(self.contentView.bounds)/2.0, CGRectGetWidth(self.contentView.bounds) - 8 - kImageSize - 8, CGRectGetHeight(self.contentView.bounds)/2.0 - 8);
//}

@end
