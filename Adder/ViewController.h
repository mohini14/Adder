//
//  ViewController.h
//  Adder
//
//  Created by Mohini on 15/01/17.
//  Copyright © 2017 Mohini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *firstNumberTextField;
@property (strong, nonatomic) IBOutlet UITextField *secondNumberTextField;
- (IBAction)addingButton:(UIButton *)sender;

@end

