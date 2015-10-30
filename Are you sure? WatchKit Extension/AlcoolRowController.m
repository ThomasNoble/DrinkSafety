//
//  AlcoolRowController.m
//  Are you sure?
//
//  Created by Etudiant on 07/10/2015.
//  Copyright © 2015 Esgi. All rights reserved.
//

#import "AlcoolRowController.h"

@implementation AlcoolRowController
- (void) setLetter:(NSString*)letter mode:(NSString*)images {
    [self.titleLabel setText:letter];
    [self.interfaceImage setImageNamed:images];
}
@end
