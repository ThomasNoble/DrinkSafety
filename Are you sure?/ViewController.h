//
//  ViewController.h
//  Are you sure?
//
//  Created by Etudiant on 07/10/2015.
//  Copyright © 2015 Esgi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *tbLastname;
@property (weak, nonatomic) IBOutlet UITextField *tbFirstname;
@property (weak, nonatomic) IBOutlet UITextField *tbPoids;
@property (weak, nonatomic) IBOutlet UISegmentedControl *scSexe;
@property (weak, nonatomic) IBOutlet UISwitch *swtNewsletter;
@property (weak, nonatomic) IBOutlet UITextField *tbAge;
@property (weak, nonatomic) IBOutlet UITextField *tbMail;
@property (weak, nonatomic) IBOutlet UISwitch *swCondition;

@end
