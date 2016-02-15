//
//  DetailInterfaceController.m
//  Are you sure?
//
//  Created by Etudiant on 07/10/2015.
//  Copyright © 2015 Esgi. All rights reserved.
//

#import "DetailInterfaceController.h"
#import "AlcoolRowController.h"
#import "CalculSobriete.h"
@interface DetailInterfaceController (){
@private
    NSArray* values_;
    NSArray* images_;
    NSMutableArray* counter_;
    NSUInteger* tauxAlcool;
    NSDate* firstDate;
    NSDate* currentDate;
    float gramme ;
    NSInteger taux;
    NSString* poids;
    NSTimeInterval secondsBetween;
    NSString* sexe;
    float alcoolSupporte;
    long numberOfSecond;
    NSInteger poidsInt;

}

@end

@implementation DetailInterfaceController
@synthesize poidLbl = poidLb_;
- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    values_ = @[@"Biere",@"Cosmo",@"Champ.",@"Jager.",@"Mojito",@"Pastis",@"Pina.",@"Rhum",@"Tequila",@"Vin",@"Vodka",@"Whisky"];
   images_ = @[@"cannette-biere (1).png",@"cosmo (1).png",@"coupe-champagne (1).png",@"jagermeister (1).png",@"mojito (2).png",@"pastis (1).png",@"pina-colada (1).png",@"rhum (1).png",@"tequila (1).png",@"verre-de-vin.png",@"vodka.png",@"whisky.png"];
    counter_ = [NSMutableArray arrayWithArray:@[@(0),@(0),@(0),@(0),@(0),@(0),@(0),@(0),@(0),@(0),@(0),@(0)]];
    NSUInteger count = [values_ count];
    [self.interfaceTable setNumberOfRows:count withRowType:@"Letter"];
    
    for(NSUInteger i=0; i<count; i++) {
        AlcoolRowController* rowController = [self.interfaceTable rowControllerAtIndex:i];
        [rowController setLetter:[values_ objectAtIndex:i] mode:[images_ objectAtIndex:i]];
    }

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    NSString* documentPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    NSString* filePath = [documentPath stringByAppendingPathComponent:@"userinfo.archive"];
    NSDictionary* userInfo = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
    sexe =[userInfo objectForKey:@"sexe"]; 
    poids =[userInfo objectForKey:@"masse"];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex{
    NSNumber* counter = [counter_ objectAtIndex:rowIndex];
    NSUInteger count = [counter integerValue];
    float limitAlcoolDrive = 0.2;
    float limitAlcool = 0.5 ;
    count++;
    currentDate = [NSDate date];
    NSTimeInterval secondsBetween;
    if (gramme == 0) {
        firstDate = [NSDate date];
        currentDate = firstDate;
        secondsBetween = [currentDate timeIntervalSinceDate:firstDate];
    }else{
        secondsBetween = [currentDate timeIntervalSinceDate:firstDate];
       
    }
    gramme += 10;
    long numberOfSecond = secondsBetween ;
    poidsInt = [poids integerValue];
    alcoolSupporte =  [CalculSobriete calculAlcoolemie:gramme withPoids:poidsInt WithSexe:sexe];
    gramme =[CalculSobriete calculAlcoolemieEnCours:gramme withTemps:numberOfSecond];
    taux= [CalculSobriete calculTauxAlcoolemie:alcoolSupporte withAlcoolConsomme:gramme];


    
    [counter_ replaceObjectAtIndex:rowIndex withObject:@(count)];
    NSString* countFormatString =[NSString  stringWithFormat:@"%d", count];
    NSString* alcool = [values_ objectAtIndex:rowIndex];
    alcool = [alcool stringByAppendingString: @" "];
    alcool = [alcool stringByAppendingString: @"("];
    alcool = [alcool stringByAppendingString: countFormatString];
    alcool = [alcool stringByAppendingString: @")"];
    NSLog(@"%f", alcoolSupporte);
       AlcoolRowController* rowController = [self.interfaceTable rowControllerAtIndex:rowIndex];
    [rowController setLetter:alcool mode:[images_ objectAtIndex:rowIndex]];
    
    //AlertView
    
  
    if(alcoolSupporte >= limitAlcoolDrive ){
    WKAlertAction *act = [WKAlertAction actionWithTitle:@"ATTENTION" style:WKAlertActionStyleCancel handler:^(void){
        
    }];
    
    NSArray *testing = @[act];
    
    [self presentAlertControllerWithTitle:@"ATTENTION" message:@"Vous ne pouvez plus prendre la voiture" preferredStyle:WKAlertControllerStyleAlert actions:testing];
    }
    
}
- (IBAction)onTouchConsommation {
    [self presentControllerWithName:@"Consomation" context:counter_];
}
- (IBAction)onTouchStep {
    [self presentControllerWithName:@"Step" context:@[@(taux),@(alcoolSupporte)]];
}
@end



