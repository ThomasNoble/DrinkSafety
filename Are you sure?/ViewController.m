//
//  ViewController.m
//  Are you sure?
//
//  Created by Etudiant on 07/10/2015.
//  Copyright © 2015 Esgi. All rights reserved.
//

#import "ViewController.h"
#import <WatchConnectivity/WatchConnectivity.h>
@interface ViewController (){
    @private
    NSString* segmentValue;
}

@end

@implementation ViewController



- (void)viewDidLoad {
    [self.scSexe addTarget:self action:@selector(segmentValues:) forControlEvents:UIControlEventValueChanged];
    self.tbMail.delegate = self;
    self.tbAge.delegate = self;
    self.tbFirstname.delegate = self;
    self.tbLastname.delegate = self;
    self.tbPoids.delegate = self;
    [self.swCondition setOn:FALSE];
    [self.swtNewsletter setOn:FALSE];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)touchValider:(UIButton *)sender {
    
    if([WCSession defaultSession].paired && [WCSession defaultSession].watchAppInstalled){
        [[WCSession defaultSession] transferUserInfo:@{@"masse":self.tbPoids.text,@"sexe":segmentValue}];
        
    }
}


- (IBAction)segmentValues:(UISegmentedControl *)sender {
    segmentValue= [sender titleForSegmentAtIndex:[sender selectedSegmentIndex]];
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
