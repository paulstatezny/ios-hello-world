//
//  ViewController.m
//  HelloWorld
//
//  Created by Paul Statezny on 2/25/17.
//  Copyright © 2017 Paul Statezny. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *simpleLabel;
@property (weak, nonatomic) IBOutlet UITextField *simpleTextField;

@end

@implementation ViewController

- (IBAction)changeLabel:(id)sender {
    // Change the label
    NSString *contents = self.simpleTextField.text;
    NSString *message = [NSString stringWithFormat:@"Hello, %@", contents];
    [self.simpleLabel setText:message];
    
    [self.simpleTextField resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    
    return YES;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"viewDidLoad");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
    NSLog(@"viewDidAppear");
    
    UIAlertController *alertController = [UIAlertController
                                          alertControllerWithTitle:@"Some Title"
                                          message:@"Hey! Wassup"
                                          preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *defaultAction = [UIAlertAction
                                    actionWithTitle:@"OK"
                                    style:UIAlertActionStyleDefault
                                    handler:^(UIAlertAction * action) {}];
    
    defaultAction.enabled = NO;
    [alertController addAction:defaultAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
