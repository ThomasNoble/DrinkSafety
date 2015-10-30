//
//  AlcoolRowController.h
//  Are you sure?
//
//  Created by Etudiant on 07/10/2015.
//  Copyright © 2015 Esgi. All rights reserved.
//

#import <WatchKit/WatchKit.h>

@interface AlcoolRowController : NSObject
@property (strong, nonatomic) IBOutlet WKInterfaceImage *interfaceImage;
@property (strong, nonatomic) IBOutlet WKInterfaceLabel *titleLabel;

- (void) setLetter:(NSString*)letter mode:(NSString*)images ;

@end
