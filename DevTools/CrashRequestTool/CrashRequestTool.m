//
//  CrashRequestTool.m
//  lejuPro
//
//  Created by 谢涵 on 2017/5/22.
//  Copyright © 2017年 谢涵. All rights reserved.
//

#import "CrashRequestTool.h"
#import <AFNetworking/AFNetworking.h>


//http://test.haizuerp.com/haizu/ios/log/upload

@interface CrashRequestTool ()
@property (nonatomic, copy) NSString *fileName;
@property (nonatomic,copy) NSString *systemTime;
@end

@implementation CrashRequestTool

- (id)initWithDic:(NSDictionary *)dic
{
    if(self = [super init]){
        [self uploadCrashLog:dic];
    }
    return self;
}

- (void)removeFile
{
    if(_fileName.length >0){
        BOOL blHave= [[NSFileManager defaultManager] fileExistsAtPath:_fileName];
        if (!blHave) {
            NSLog(@"no  have");
            return;
        }else {
            NSLog(@" have");
            BOOL blDele= [[NSFileManager defaultManager] removeItemAtPath:_fileName error:nil];
            if (blDele) {
                NSLog(@"dele success");
            }else {
                NSLog(@"dele fail");
            }
        }
    }
}

- (NSData *)creatCrashFileWithDic:(NSDictionary *)dic{
    //把数据保存到沙盒里的plist文件
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    //NSString *path = @"/Users/xiehan/Desktop/";
    //得到完整的路径名
    NSString *userName = dic[@"userName"];;
    NSString *fileName = [path stringByAppendingPathComponent:userName];
    //LRLog(@"%@",fileName);

    NSString *str = [self convertToJsonData:dic];
    // LRLog(@"%@---str",str);
    //[str writeToURL:[NSURL URLWithString:fileName] atomically:YES encoding:NSUTF8StringEncoding error:nil];
    NSError *error = nil;
    
    if([str writeToFile:fileName atomically:YES encoding:NSUTF8StringEncoding error:&error]){
        _fileName = fileName;
        if([[NSFileManager defaultManager] fileExistsAtPath:_fileName]){
            return [NSData dataWithContentsOfFile:_fileName];
        }
    }
    return nil;
}

-(NSString *)convertToJsonData:(NSDictionary *)dict

{
    if(!dict){
        return nil;
    }
    NSError *error;
    
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dict options:NSJSONWritingPrettyPrinted error:&error];
    
    NSString *jsonString;
    
    if (!jsonData) {
        
    }else{
        
        jsonString = [[NSString alloc]initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
    
    NSMutableString *mutStr = [NSMutableString stringWithString:jsonString];
    
    NSRange range = {0,jsonString.length};
    
    //去掉字符串中的空格
    
    [mutStr replaceOccurrencesOfString:@" " withString:@"" options:NSLiteralSearch range:range];
    
    NSRange range2 = {0,mutStr.length};
    
    //去掉字符串中的换行符
    
    [mutStr replaceOccurrencesOfString:@"\n" withString:@"" options:NSLiteralSearch range:range2];
    
    return mutStr;
}

- (void)uploadCrashLog:(NSDictionary *)dicLog
{
    NSData *logData = [self creatCrashFileWithDic:dicLog];
    
    if(!logData){
        //LRLog(@"创建崩溃日志文件不成功");
        return;
    }
    
//    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
//    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
//    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html", nil];
//
//    [manager POST:[NSString stringWithFormat:@"%@/ios/log/upload",BaseUrl] parameters:@{@"userId":_fileName}
//constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
//
//    [formData appendPartWithFileData:logData name:@"file" fileName:@"testPlist.plist" mimeType:@"application/plist"];
//
//    } progress:^(NSProgress * _Nonnull uploadProgress) {
//        LRLog(@"%@",uploadProgress);
//    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        LRLog(@"%@",responseObject);
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//        LRLog(@"%@",error);
//    }];
}


@end


