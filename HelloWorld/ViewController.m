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

@property NSArray *pickerChoices;

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
    self.pickerChoices = @[@"Rock Star", @"10x", @"Prototyper", @"Refactor Master", @"Isaiah"];
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
    
    [alertController addAction:defaultAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [self.pickerChoices count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return self.pickerChoices[row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    UIColor *color;
    
    switch (row) {
        case 0: case 1:
            color = [UIColor colorWithRed:1.0 green:0.85 blue:0.0 alpha:1.0];
            break;
            
        case 2: case 3:
            color = [UIColor grayColor];
            break;
            
        case 4:
            color = [UIColor whiteColor];
            break;
        
        default:
            color = [UIColor purpleColor];
            break;
    }
    
    self.view.backgroundColor = color;
}

@end
