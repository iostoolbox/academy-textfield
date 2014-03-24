//
//  ViewController.m
//  iOSToolboxTextField
//
//  Created by iOS Toolbox on 24/03/14.
//  Copyright (c) 2014 iOS Toolbox. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController {
    UITextField *_emailTextField;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithRed:0.224 green:0.263 blue:0.369 alpha:1];
    
    // email text field
    _emailTextField = [[UITextField alloc] init];
    [_emailTextField setTranslatesAutoresizingMaskIntoConstraints:NO];
    [_emailTextField setBackground:[UIImage imageNamed:@"_emailTextField"]];
    _emailTextField.textColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1];
    _emailTextField.font = [UIFont fontWithName:@"HelveticaNeue-Bold" size:15];
    _emailTextField.textAlignment = NSTextAlignmentCenter;
    _emailTextField.placeholder = NSLocalizedString(@"E-mail address", nil);
    [self.view addSubview:_emailTextField];
    
    // align _emailTextField from the top
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-66-[_emailTextField]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_emailTextField)]];
    
    // align _emailTextField from the left and right
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-23-[_emailTextField]-23-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_emailTextField)]];
    
    // height constraint
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[_emailTextField(==31)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_emailTextField)]];
}

@end
