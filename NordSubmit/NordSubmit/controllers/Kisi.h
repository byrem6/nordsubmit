//
//  Kisi.h
//  NordSubmit
//
//  Created by Ramazan on 3/11/14.
//  Copyright (c) 2014 Gurkan Tumer. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Kisi : NSObject

@property(nonatomic,retain)NSString * isim_soyisim;
@property(nonatomic,retain)NSString * telefon;
@property(nonatomic,retain)NSString * mail;
@property(nonatomic,retain)NSString * aciklama;
@property(nonatomic,retain)NSString * okul;
@property(nonatomic,retain)NSString * deneyim;

-(NSMutableDictionary *)getvCard;
-(void)SaveParse;
@end
