//
//  NSString+LXYIDCardInfo.m
//  LXYIDCardInfo
//
//  Created by Lucas on 2018/11/4.
//  Copyright © 2018 liuxianyu. All rights reserved.
//

#import "NSString+LXYIDCardInfo.h"

#define ids(i) ([self substringWithRange:NSMakeRange(i,1)])
#define string2Char(i) ((char *)[ids(i) UTF8String])[0]

@implementation NSString (LXYIDCardInfo)

- (NSString *)lxy_getBirthDay {
    if (self.length <= 15) {
        return [NSString stringWithFormat:@"19%@%@-%@%@-%@%@", ids(6),ids(7),ids(8),ids(9),ids(10),ids(11)];
    } else {
        return [NSString stringWithFormat:@"%@%@%@%@-%@%@-%@%@", ids(6),ids(7),ids(8),ids(9),ids(10),ids(11),ids(12),ids(13)];
    }
}

- (NSString *)lxy_getSex {
    
    if(self.length <= 15){
        char *cString = (char *)[ids(14) UTF8String];
        int i = cString[0]-'0';
        if(i%2==0) {
            return @"女";
        }else{
            return @"男";
        }
    } else {
        char *cString = (char *)[ids(16) UTF8String];
        int i = cString[0]-'0';
        if(i%2==0){
            return @"女";
        }else {
            return @"男";
        }
    }
}

- (NSString *)lxy_getAge {
    time_t t;
    struct tm * lt;
    time (&t);
    lt = localtime (&t);
    int now = lt->tm_year;
    int birth;
    if(self.length==15){
        birth=(string2Char(6)-'0')*10 + (string2Char(7)-'0');
    }else{
        birth=(string2Char(6)-'0')*1000 + (string2Char(7)-'0')*100 + (string2Char(8)-'0')*10 + (string2Char(9)-'0')-1900;
    }
    return [NSString stringWithFormat:@"%d",now-birth];
}

@end
