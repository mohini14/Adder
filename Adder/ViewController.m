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
    NSString *message;
    NSString *title;
    [self.view endEditing:YES];
    if([self.firstNumberTextField.text isEqualToString:@""] || [self.secondNumberTextField.text isEqualToString:@""] || self.firstNumberTextField.text==nil || self.secondNumberTextField.text==nil){
        message=@"Sorry ! you cannot leave the text field empty";
        title=@"Failed";
        
    }
    else{
        float first=[self.firstNumberTextField.text floatValue];
        float second=[self.secondNumberTextField.text floatValue];
        float result=first+second;
        message = [NSString stringWithFormat:@"Added number  successfully result=%f ", result];
        title=@"Success";
        self.firstNumberTextField.text=@"";
        self.secondNumberTextField.text=@"";
    }
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
    
    
    
    
}
@end
