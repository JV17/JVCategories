//
//  NSDictionary+JVUtils.m
//  Pods
//
//  Created by Jorge Valbuena on 2015-12-06.
//
//

#import "NSDictionary+JVAddons.h"


@implementation NSDictionary (JVAddons)

#pragma mark - Parsing helpers

+ (instancetype)sharedInstance
{
    static id _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[self alloc] init];
    });
    
    return _sharedInstance;
}


+ (NSDictionary *)parseJSONFileWithFileName:(NSString *)fileName withType:(NSString *)type
{
    NSString *localPath = [[NSBundle mainBundle] pathForResource:fileName ofType:type];
    NSData *data = [NSData dataWithContentsOfFile:localPath];
    
    if ( data == nil )
    {
        // TODO: display error!
        return nil;
    }
    
    return [self extractDataFromJson:data];
}


+ (NSDictionary *)extractDataFromJson:(NSData *)data
{
    return [self preprocessData:data];
}


/**
 This function trys to parse the provided data into a @NSDictionary thinking this data contains a json.
 
 @param data
    The data containning the json.
 
 @return 
    An @NSDictionary containing the parsed json.
 */
+ (NSDictionary *)preprocessData:(NSData *)data
{
    NSString *jsonString = nil;
    NSString *goodString = nil;
    NSDictionary *dataDictionary = nil;
    
    @try
    {
        jsonString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
        dataDictionary = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:nil];
        
        goodString = jsonString;
    }
    @catch (id exception)
    {
        // TODO: display error!
        return nil;
    }
    @finally
    {
        goodString = nil;
        jsonString = nil;
    }
    
    return dataDictionary;
}


+ (NSDictionary *)getParametersFromURL:(NSURL *)url
{
    NSArray *pairs = [[url query] componentsSeparatedByString:@"&"];
    NSMutableDictionary *result = [NSMutableDictionary dictionary];
    
    for(NSString *pair in pairs)
    {
        NSArray *keyValue = [pair componentsSeparatedByString:@"="];
        if([keyValue count] > 1)
        {
            [result setValue:[keyValue objectAtIndex:1]
                      forKey:[keyValue objectAtIndex:0]];
        }
        else if([keyValue count] > 0)
        {
            [result setValue:@"" forKey:[keyValue objectAtIndex:0]];
        }
    }
    
    return result;
}

@end
