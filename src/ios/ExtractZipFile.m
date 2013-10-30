//
//  ExtractZipFile.m
//
//  Created by Iurii Kyian on 2013-10-30.
//  Copyright (c) 2013 Medical Insights AG. All rights reserved.
//
//  (completely rewritten for Phonegap 3.1)
//


#import "ExtractZipFile.h"
#import "SSZipArchive.h"

@implementation ExtractZipFile

//@synthesize callbackID;

//- (void)extract:(NSMutableArray *)arguments withDict:(NSMutableDictionary *)options
- (void)extract:(CDVInvokedUrlCommand*)command
{    
    CDVPluginResult* pluginResult = nil;
    NSString* file = [command.arguments objectAtIndex:0];
    NSString* destination = [command.arguments objectAtIndex:1];

    // parameters checking
    if(file == nil){
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"source file arg was null"];
    }
    if(destination == nil){
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"destination arg was null"];
    }
    if(pluginResult != nil){
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
        return;
    }

    // processing request
    if([SSZipArchive unzipFileAtPath:file toDestination:destination delegate:nil]) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:[destination stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:[@"Could not extract archive" stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end