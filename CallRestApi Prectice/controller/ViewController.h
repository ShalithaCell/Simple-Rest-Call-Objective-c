//
//  ViewController.h
//  CallRestApi Prectice
//
//  Created by Shalitha Senanayaka on 2019-04-28.
//  Copyright © 2019 Shalitha Senanayaka. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewController.h"


@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *txtRestLink;

@property(nonatomic, strong) NSMutableArray *dataArray;

@end

