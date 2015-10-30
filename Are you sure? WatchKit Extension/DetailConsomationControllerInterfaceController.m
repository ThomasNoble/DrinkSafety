//
//  DetailConsomationControllerInterfaceController.m
//  Are you sure?
//
//  Created by Etudiant on 08/10/2015.
//  Copyright © 2015 Esgi. All rights reserved.
//

#import "DetailConsomationControllerInterfaceController.h"

@interface DetailConsomationControllerInterfaceController (){
    @private
    NSArray* images_;
    NSMutableArray* alcoolConsommer_;
}

@end

@implementation DetailConsomationControllerInterfaceController

- (void)awakeWithContext:(id)context {
    NSNumber* counter = [context objectAtIndex:0];
    [ChangerIcon setIcon:self.lblBiere image:self.imgBiere newImage:@"cannette-biere-2.png" count:counter];
    
    counter = [context objectAtIndex:1];
    [ChangerIcon setIcon:self.lblCosmo image:self.imgCosmo newImage:@"cosmo-2.png" count:counter];

    counter = [context objectAtIndex:2];
    [ChangerIcon setIcon:self.lblChampagne image:self.imgChampagne newImage:@"coupe-champagne-2.png" count:counter];

    counter = [context objectAtIndex:3];
    [ChangerIcon setIcon:self.lblJager image:self.imgJager newImage:@"jagermeister-2.png" count:counter];
    
    counter = [context objectAtIndex:4];
    [ChangerIcon setIcon:self.lblMojito image:self.imgMojito newImage:@"mojito-2.png" count:counter];
    
    counter = [context objectAtIndex:5];
    [ChangerIcon setIcon:self.lblPastis image:self.imgPastis newImage:@"pastis-2.png" count:counter];
    
    counter = [context objectAtIndex:6];
    [ChangerIcon setIcon:self.lblPina image:self.imgPina newImage:@"pina-colada-2.png" count:counter];
    
    counter = [context objectAtIndex:7];
    [ChangerIcon setIcon:self.lblRhum image:self.imgRhum newImage:@"rhum-2.png" count:counter];
    
    counter = [context objectAtIndex:8];
    [ChangerIcon setIcon:self.lblTequila image:self.imgTequila newImage:@"tequila-2.png" count:counter];
    
    counter = [context objectAtIndex:9];
    [ChangerIcon setIcon:self.lblVin image:self.imgVin newImage:@"verre-de-vin-2.png" count:counter];
    
    counter = [context objectAtIndex:10];
    [ChangerIcon setIcon:self.lblVodka image:self.imgVodka newImage:@"vodka-2.png" count:counter];
    
    counter = [context objectAtIndex:11];
    [ChangerIcon setIcon:self.lblWhisky image:self.imgWhisky newImage:@"whisky-2.png" count:counter];

}

- (void)willActivate {
    
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



