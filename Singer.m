//
//  Singer.m
//  nhaccuatui
//
//  Created by ios12 on 3/25/13.
//  Copyright (c) 2013 ios12. All rights reserved.
//

#import "Singer.h"

@implementation Singer

-(id) initName: (NSString*)name
     withTitle: (NSString*)title
      withYear: (int)year
      andGenre: (NSString*)genre
{
    if (self=[super init])
    {
        _name=name;
        _title=title;
        _year=year;
        _genre=genre;
    }
    return self;
}


@end
