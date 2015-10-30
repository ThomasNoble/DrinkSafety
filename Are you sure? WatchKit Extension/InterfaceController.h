//
//  InterfaceController.h
//  Are you sure? WatchKit Extension
//
//  Created by Etudiant on 07/10/2015.
//  Copyright © 2015 Esgi. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *userInfoLastName;
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *userInfoFirstname;


@end
