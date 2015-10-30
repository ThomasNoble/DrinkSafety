//
//  CalculSobriete.m
//  Are you sure?
//
//  Created by Etudiant on 08/10/2015.
//  Copyright © 2015 Esgi. All rights reserved.
//

#import "CalculSobriete.h"

@implementation CalculSobriete
/*http://cardamome.over­blog.com/article­21028558.html
 
 Elimination 0,15g/h
 
 https://developer.apple.com/library/watchos/documentation/WatchKit/Reference/WKInterface
 
 Slider_class/index.html#//apple_ref/doc/uid/TP40014963
 
 */

/*
 
 Exemple courbe
 
 http://www.applewatch­france.fr/wp-
 content/uploads/2014/10/Apple_Watch_version_sport.jpg
 
 */
+ (float)calculAlcoolemie:(float)grammeAlcool withPoids:(NSInteger)p WithSexe:(NSString*)s{
    if ([s  isEqual: @"Homme"]) {
        return (grammeAlcool/(p*0.68));
    }
    else
        return (grammeAlcool/(p*0.55));
}


+ (float)calculAlcoolemieEnCours:(float)grammeAlcoolSang withTemps:(long)seconde{
    
    return grammeAlcoolSang-((0.15*seconde/60)/60);
    
}

+(NSInteger)calculTauxAlcoolemie:(float)alcoolSupporte

withAlcoolConsomme:(float)alcoolConso{
    
//    return (alcoolConso/1000)*alcoolSupporte;
    return (alcoolSupporte *100)/(0.80);
}

+ (float)tempsSobrieteEnSeconde:(float)grammeAlcoolSang withTemps:(long)seconde{
    float heure =0.15*seconde/60/60;
    if (heure<1) {
        heure=1.;
    }
    return grammeAlcoolSang/(heure);
    
}

+ (NSString *)tempsSobriete:(float)valeurSobriete{
    int heure = valeurSobriete/3600;
    int minute = ((int)valeurSobriete%3600)/60;
    NSString* temps = [NSString stringWithFormat: @"%dh%d", heure, minute];
    NSLog(@"%@", temps);
    return temps;
    
}




@end
