//
//  DetailInterfaceController.h
//  Are you sure?
//
//  Created by Etudiant on 07/10/2015.
//  Copyright © 2015 Esgi. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface DetailInterfaceController : WKInterfaceController
@property (strong, nonatomic) IBOutlet WKInterfaceTable *interfaceTable;

@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *age;

@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceLabel *poidLbl;



@end
