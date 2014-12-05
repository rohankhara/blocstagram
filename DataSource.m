//
//  DataSource.m
//  Blocstagram
//
//  Created by Rohan on 05/12/14.
//  Copyright (c) 2014 Rohan Khara. All rights reserved.
//

#import "DataSource.h"
#import "User.h"
#import "Media.h"
#import "Comment.h"

@interface DataSource()

@property (nonatomic, strong) NSArray *mediaItems;

@end

@implementation DataSource

+ (instancetype) sharedInstance

{

    static dispatch_once_t once;
    static id sharedInstance;
    dispatch_once (&once, ^ {sharedInstance = [[self alloc] init];});
    return sharedInstance;

}

@end
