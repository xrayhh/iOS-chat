//
//  main.m
//  copyTest 263
//
//  Created by 朱敬业 on 2023/5/11.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableString* book = [NSMutableString stringWithString:@"疯狂iOS讲义"];
        NSMutableString* bookcopy = [book mutableCopy];
        [bookcopy replaceCharactersInRange:NSMakeRange(2, 3) withString:@"Android"];//改变副本不会改变原来的对象
        NSLog(@"%@ %@",book,bookcopy);
        NSString* str = @"fkit";
        NSMutableString* strcopy =[str mutableCopy];
        [strcopy appendString:@".org"];
        NSLog(@"%@ %@",str,strcopy);
        NSMutableString* strcopy2 = [str copy];
       // [strcopy2 appendString:@"aa"];//上面copy方法复制的是一个不可变副本，strcopy2实际上是NSmutablestring类的对象
    }
    return 0;
}
