//
//  FirstScreenViewController.m
//  HW6
//
//  Created by User on 14.03.2024.
//

#import <Foundation/Foundation.h>
#import "FirstScreenViewController.h"
#import "Robot.h"

@interface FirstScreenViewController ()

@property (weak, nonatomic) IBOutlet UITextField *xTextField;
@property (weak, nonatomic) IBOutlet UITextField *yTextField;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UIButton *submitButton;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation FirstScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)submitButtonTapped:(id)sender {
    Robot *robot = [Robot new];
    robot.x = [self.xTextField.text floatValue];
    robot.y = [self.yTextField.text floatValue];
    robot.name = self.nameTextField.text;
    
    // Save to userDefaults
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:robot forKey:robot.name];
}

@end
