//
//  TableViewCell.h
//  CallRestApi Prectice
//
//  Created by Shalitha Senanayaka on 2019-04-29.
//  Copyright © 2019 Shalitha Senanayaka. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *lblAddress;
@property (strong, nonatomic) IBOutlet UILabel *lblName;


@end

NS_ASSUME_NONNULL_END
