//
//  ChangerIcon.m
//  Are you sure?
//
//  Created by Etudiant on 08/10/2015.
//  Copyright © 2015 Esgi. All rights reserved.
//

#import "ChangerIcon.h"

@implementation ChangerIcon
+ (void) setIcon:(WKInterfaceLabel*)label image:(WKInterfaceImage*)images newImage:(NSString*)newImage count:(NSNumber*)counter {
    NSUInteger count = [counter integerValue];
    NSString* countFormatString =[NSString  stringWithFormat:@"%d", count];
    [label setText:countFormatString];
    if (count>0) {
        [images setImageNamed:newImage];
    }

}
@end
