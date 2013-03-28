//
//  Singer.h
//  nhaccuatui
//
//  Created by ios12 on 3/25/13.
//  Copyright (c) 2013 ios12. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singer : NSObject
@property (strong,nonatomic) NSString *name;
@property (strong,nonatomic) NSString *title;
@property (strong,nonatomic) NSString *genre;
@property (assign) int year;

-(id) initName: (NSString*)name
     withTitle: (NSString*)title
      withYear: (int)year
      andGenre: (NSString*)genre;
@end
