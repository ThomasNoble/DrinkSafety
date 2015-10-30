//
//  CalculSobriete.h
//  Are you sure?
//
//  Created by Etudiant on 08/10/2015.
//  Copyright © 2015 Esgi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculSobriete : NSObject
+ (float)calculAlcoolemieEnCours:(float)grammeAlcoolSang withTemps:(long)seconde;
+ (float)calculAlcoolemie:(float)grammeAlcool withPoids:(NSInteger)p WithSexe:(NSString*)s;
+ (NSInteger)calculTauxAlcoolemie:(float)alcoolSupporte withAlcoolConsomme:(float)alcoolConso;
+ (float)tempsSobrieteEnSeconde:(float)grammeAlcoolSang withTemps:(long)seconde;
+ (NSString *)tempsSobriete:(float)valeurSobriete;
@end
