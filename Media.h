//
//  Media.h
//  Blocstagram
//
//  Created by Rohan on 05/12/14.
//  Copyright (c) 2014 Rohan Khara. All rights reserved.
//

#import <Foundation/Foundation.h>


@class User;

@interface Media : NSObject

@property (nonatomic, strong) NSString *idNumber;
@property (nonatomic, strong) User *user;
@property (nonatomic, strong) NSURL *mediaURL;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *caption;
@property (nonatomic, strong) NSArray *comments;

@end
