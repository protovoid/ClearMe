//
//  CMTextViewController.m
//  ClearMe
//
//  Created by Chad on 9/16/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "CMTextViewController.h"

@interface CMTextViewController () <UITextFieldDelegate> // says our object can handle delegate methods from the textfield

@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UIButton *clearButton;

@end

@implementation CMTextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"Clear Me";
    self.textField.text = @"Hey, I'm Chad";
    self.textField.delegate = self;
    
}


- (IBAction)clearButtonPressed:(id)sender {
    NSLog(@"");
    
}





- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [self.textField resignFirstResponder]; // makes keyboard move away
    return YES;
}



-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    NSLog(@"%@", self.textField.text);
    return YES;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
