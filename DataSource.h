//
//  DataSource.h
//  Blocstagram
//
//  Created by Rohan on 05/12/14.
//  Copyright (c) 2014 Rohan Khara. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataSource : NSObject

+(instancetype) sharedInstance;
// @property (nonatomic, strong, readonly) NSArray *mediaItems;
@property (nonatomic, strong) NSMutableArray *mediaItems;

@end
