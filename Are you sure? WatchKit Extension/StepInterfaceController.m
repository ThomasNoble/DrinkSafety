//
//  StepInterfaceController.m
//  Are you sure?
//
//  Created by Etudiant on 08/10/2015.
//  Copyright © 2015 Esgi. All rights reserved.
//

#import "StepInterfaceController.h"

@interface StepInterfaceController (){
    @private
    NSInteger taux;
    float alcoolemieSang;
}
@property (unsafe_unretained, nonatomic) IBOutlet WKInterfaceImage *image;





@end

@implementation StepInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    taux = [[context objectAtIndex:0] integerValue];
    alcoolemieSang = [[context objectAtIndex:1] floatValue];
    NSString *str = [NSString stringWithFormat:@"%.3f", alcoolemieSang];
    str = [str stringByAppendingString:@" g/l"];
    
    [self.tauxAlcoolSang setText:str];
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    
    if (taux == 0) {
        [self.image setImageNamed:@"Steps-0"];
    }else{
        [self.image setImageNamed:@"Steps-"];
        [self.image startAnimatingWithImagesInRange:NSMakeRange(0, taux) duration:2 repeatCount:1];
    }

}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



