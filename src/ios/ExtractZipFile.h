//
//  ExtractZipFile.h
//
//  Created by Iurii Kyian on 2013-10-30.
//  Copyright (c) 2013 Medical Insights AG. All rights reserved.
//
//  (completely rewritten for Phonegap 3.1)
//

#import <Cordova/CDVPlugin.h>
#import "SSZipArchive.h"

@interface ExtractZipFile : CDVPlugin
{
}

- (void)extract:(CDVInvokedUrlCommand*)command;

@end
