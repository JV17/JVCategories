//
//  NSDictionary+JVUtils.h
//  Pods
//
//  Created by Jorge Valbuena on 2015-12-06.
//
//

#import <Foundation/Foundation.h>

@interface NSDictionary (JVAddons)

#pragma mark - Parsing helpers

/**
 Creates a singleton of NSDictionary.
 */
+ (instancetype)sharedInstance;


/**
 Parses a json file from file name and type provided.
 
 @param fileName
    The file name.
 @param type
    The file type.
 
 @return
    An @NSDictionary of the json file.
 */
+ (NSDictionary *)parseJSONFileWithFileName:(NSString *)fileName withType:(NSString *)type;


/**
 Extracts data from a json data. Converts the json data into a @NSDictionary.
 
 @param data
    The json data to be extracted.
 
 @return
    An @NSDictionary of the json data.
 */
+ (NSDictionary *)extractDataFromJson:(NSData *)data;


/**
 Extracts parameters from given url.
 
 @param url
    The url to containing the parameters.
 
 @return
    An @NSDictionary with the extracted parameters.
 */
+ (NSDictionary *)getParametersFromURL:(NSURL *)url;

@end
