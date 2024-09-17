//
//  main.m
//  属性
//
//  Created by 朱敬业 on 2024/1/16.
//

#import <Foundation/Foundation.h>

- (EOCBrain*)brain {
    if (!_brain) {
        _brain = [Brain new] ;
    }
    return _brain ;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        
    }
    return 0;
}

- (BOOL)isEqual : (id) object ;
- (NSUInteger) hash ;


void printHello () {
    printf("Hello,world! \n") ;
}

void printGoodbye () {
    printf("Goodbye,world! \n") ;
}

void doTheThing (int type) {
    void (*fnc) () ;
    if (type == 0) {
        fnc = printHello() ;
    } else {
        fnc = printGoodbye() ;
    }
    fnc () ;
    return 0 ;
}

id returnValue = [someObject messageName:paramenter] ;

//void doTheThing (int type) {
//    if (type == 0) {
//        printHello() ;
//    } else {
//        printGoodbye() ;
//    }
//    return 0;
//}

void objc_msfSend (id self,SEL cmd,...)

id returnValue = objc_msfSend(someObject, @selector(messageName:),parameter) ;
