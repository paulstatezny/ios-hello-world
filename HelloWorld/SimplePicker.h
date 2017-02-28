//
//  SimplePicker.h
//  HelloWorld
//
//  Created by Paul Statezny on 2/27/17.
//  Copyright © 2017 Paul Statezny. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface SimplePicker : NSObject <UIPickerViewDataSource, UIPickerViewDelegate>

@property NSArray *choices;

-(void)initWithChoices:(NSArray *)choices;

@end
