//
//  MTTableViewCell.h
//  2020GitLearningDemo
//
//  Created by ASSASSIN on 2020/12/15.
//

#import <UIKit/UIKit.h>
#import "CellModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MTTableViewCell : UITableViewCell

@property(nonatomic,strong)CellModel *model;

@end

NS_ASSUME_NONNULL_END
