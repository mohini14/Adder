//
//  ViewController.m
//  Adder
//
//  Created by Mohini on 15/01/17.
//  Copyright © 2017 Mohini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)addingButton:(UIButton *)sender {
    [self.view endEditing:YES];
     float first=[self.firstNumberTextField.text floatValue];
     float second=[self.secondNumberTextField.text floatValue];
     float result=first+second;
    NSString *message = [NSString stringWithFormat:@"Added number  successfully result=%f ", result];
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Success" message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
    self.firstNumberTextField.text=@"";
    self.secondNumberTextField.text=@"";
    
    
    
}
@end
