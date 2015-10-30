//
//  ChangerIcon.h
//  Are you sure?
//
//  Created by Etudiant on 08/10/2015.
//  Copyright © 2015 Esgi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WatchKit/WatchKit.h>
@interface ChangerIcon : NSObject
+ (void) setIcon:(WKInterfaceLabel*)label image:(WKInterfaceImage*)images newImage:(NSString*)newImage count:(NSNumber*)count  ;
@end
