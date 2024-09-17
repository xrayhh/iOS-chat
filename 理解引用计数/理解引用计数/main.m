//
//  main.m
//  理解引用计数
//
//  Created by 朱敬业 on 2024/2/26.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
        NSMutableArray* array = [[NSMutableArray alloc] init] ;
        NSNumber* number = [[NSNumber alloc] initWithInt:15] ;
//        [array addObject:number] ;
        [number release] ;
    NSLog(@"%@",number) ;
//        NSLog(@"%lu",(unsigned long)[number retainCount]) ;
//        NSLog(@"%@",[array objectAtIndex:0]) ;
        [array release] ;
    
    return 0;
}
