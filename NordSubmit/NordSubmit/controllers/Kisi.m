//
//  Kisi.m
//  NordSubmit
//
//  Created by Ramazan on 3/11/14.
//  Copyright (c) 2014 Gurkan Tumer. All rights reserved.
//

#import "Kisi.h"
#import <Parse/Parse.h>
@implementation Kisi




-(NSMutableDictionary *)getvCard{
    
    NSMutableDictionary * d=[[NSMutableDictionary alloc]init];
    
    [d setObject:_isim_soyisim forKey:@"İsim Soyisim"];
    [d setObject:_telefon forKey:@"Telefon"];
    [d setObject:_mail forKey:@"Mail"];
    [d setObject:_aciklama forKey:@"Acıklama"];
    [d setObject:_okul forKey:@"Okul"];
    [d setObject:_deneyim forKey:@"Deneyim"];
 
    return d;
}

-(void)SaveParse{
    
    
    PFQuery *query = [PFQuery queryWithClassName:@"user"];
    [query whereKey:@"Isim_Soyisim" equalTo:_isim_soyisim];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
  
            NSLog(@"Kayıt Mevcut");
            
        } else {
            
        
    PFObject *newvCard = [PFObject objectWithClassName:@"user"];
    newvCard[@"Isim_Soyisim"] = _isim_soyisim;
    newvCard[@"Telefon"] = _telefon;
    newvCard[@"Mail"] =_mail;
    newvCard[@"Aciklama"] = _aciklama;
    newvCard[@"Okul"] = _okul;
    newvCard[@"Deneyim"] = _deneyim;
    [newvCard saveInBackground];

        }
    }];
    
       
}


@end
