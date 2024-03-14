//
//  SecondScreenViewController.m
//  HW6
//
//  Created by User on 14.03.2024.
//

#import <Foundation/Foundation.h>
#import "SecondScreenViewController.h"
#import "Robot.h"

@interface SecondScreenViewController ()

@property (weak, nonatomic) IBOutlet UITextField *xTextField;
@property (weak, nonatomic) IBOutlet UITextField *yTextField;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UIButton *submitButton;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation SecondScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)submitButtonTapped:(id)sender {
    Robot *robot = [Robot new];
    robot.x = [self.xTextField.text floatValue];
    robot.y = [self.yTextField.text floatValue];
    robot.name = self.nameTextField.text;
    
    // Save to file
    NSString *filePath = [NSString stringWithFormat:@"%@/%@.txt", documentsDirectory, robot.name];
    [NSKeyedArchiver archiveRootObject:robot toFile:filePath];
}

@end
