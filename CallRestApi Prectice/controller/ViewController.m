//
//  ViewController.m
//  CallRestApi Prectice
//
//  Created by Shalitha Senanayaka on 2019-04-28.
//  Copyright © 2019 Shalitha Senanayaka. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
  
}



-(void)getJsonResponse:(NSString *)urlStr success:(void (^)(NSMutableArray *responseArray))success failure:(void(^)(NSError* error))failure
{
    NSURLSession *session = [NSURLSession sharedSession];
    NSURL *url = [NSURL URLWithString:urlStr];
    
    // Asynchronously API is hit here
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url
                                            completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
                                                //NSLog(@"%@",data);
                                                if (error)
                                                    failure(error);
                                                else {
                                                    NSMutableArray *json  = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
                                                    //NSLog(@"%@",json);
                                                    success(json);
                                                }
                                            }];
    [dataTask resume];    // Executed First
}


-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
    [self getJsonResponse:self.txtRestLink.text success:^(NSMutableArray *responseArray) {
        
        TableViewController*tableViewController;
        tableViewController = [segue destinationViewController];
        tableViewController.dataArray = responseArray;
        //NSLog(@"%@", self.dataArray);
        
    } failure:^(NSError *error) {
        // error handling here ...
        [self showAlert:error];
    }];
    
    
    
    
}

-(void) showAlert:(NSError *)error{
    UIAlertController * alert = [UIAlertController
                                 alertControllerWithTitle:@"Error"
                                 message:[error localizedDescription]
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    
    
    UIAlertAction* okButton = [UIAlertAction
                                actionWithTitle:@"ok"
                                style:UIAlertActionStyleDefault
                                handler:^(UIAlertAction * action) {
                                    //Handle your yes please button action here
                                }];
    
    
    [alert addAction:okButton];
    
    [self presentViewController:alert animated:YES completion:nil];
}

@end
