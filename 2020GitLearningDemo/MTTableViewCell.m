//
//  MTTableViewCell.m
//  2020GitLearningDemo
//
//  Created by ASSASSIN on 2020/12/15.
//

#import "MTTableViewCell.h"

@interface MTTableViewCell ()

@property(nonatomic,weak)IBOutlet UIImageView *imgView;
@property(nonatomic,weak)IBOutlet UILabel *detailLabel;

@end

@implementation MTTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.detailLabel.text = @"32t43y5euir8to79py80978l7ku6jhy54gr3f44he5rytujhtrefwdqfgerdtfygjmntrbefwd";
}

-(void)setModel:(CellModel *)model {
    _model = model;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
