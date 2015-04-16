//
//  BNRDateViewController.m
//  BNRChap10
//
//  Created by Douglas Voss on 4/16/15.
//  Copyright (c) 2015 Doug. All rights reserved.
//

#import "BNRItem.h"
#import "BNRDateViewController.h"

@interface BNRDateViewController ()

@property (nonatomic) UIDatePicker *datePicker;
//@property (nonatomic) IBOutlet UIButton *selectDateButton;

@end

@implementation BNRDateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect screenRect = [UIScreen mainScreen].bounds;
    CGRect datePickerRect = CGRectMake(CGRectGetMinX(screenRect), CGRectGetMinY(screenRect), CGRectGetWidth(screenRect), CGRectGetHeight(screenRect));
    //CGRect datePickerRect = CGRectMake(CGRectGetMinX(screenRect), CGRectGetMinY(screenRect), CGRectGetWidth(screenRect), CGRectGetHeight(screenRect)/2.0);
    //CGRect selectDateButtonRect = CGRectMake(CGRectGetMinX(screenRect), CGRectGetMidY(screenRect), CGRectGetWidth(screenRect), CGRectGetHeight(screenRect)/2.0);

    // Do any additional setup after loading the view.
    self.datePicker = [[UIDatePicker alloc] initWithFrame:datePickerRect];
    [self.view addSubview:self.datePicker];
    
    /*self.selectDateButton = [[UIButton alloc] initWithFrame:selectDateButtonRect];
    [self.selectDateButton setTitle:@"Select Date" forState:UIControlStateNormal];
    [self.selectDateButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.selectDateButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    self.selectDateButton.backgroundColor = [UIColor blueColor];
    //[self.selectDateButton setColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.selectDateButton addTarget:self action:@selector(selectDateButtonHandler:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.selectDateButton];*/
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillDisappear:(BOOL)animated
{
    self.item.dateCreated = [self.datePicker.date copy];
    NSLog(@"viewWillDisappear self.item.dateCreated = %@", self.item.dateCreated);

}

/*- (IBAction)selectDateButtonHandler:(id)sender
{
    self.item.dateCreated = self.datePicker.date;
    NSLog(@"item.dateCreated = %@", self.item.dateCreated);
}*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
