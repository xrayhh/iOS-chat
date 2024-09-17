//
//  EOCPerson.m
//  属性
//
//  Created by 朱敬业 on 2024/1/16.
//

#import "EOCPerson.h"


@implementation EOCPerson
//- (NSString*) fullName {
//    return [NSString stringWithFormat:@"%@ %@",_firstName,_lastName];
//}
//
//- (void)setFullName:(NSString *)fullName {
//    NSArray* componentd = [fullName componentsSeparatedByString:@" "] ;
//    _firstName = [componentd objectAtIndex:0] ;
//    _lastName = [componentd objectAtIndex:1] ;
//}

- (BOOL)isEqual:(id)object {
    if (self == object) return  YES;
    if ([self class] != [object class]) return NO;
    
    EOCPerson* otherPerson = (EOCPerson*) object ;
    if (![_firstName isEqualToString:otherPerson.firstName])
        return NO;
    if (![_lastName isEqualToString:otherPerson.lastName])
        return NO;
    if (_age != otherPerson.age)
        return NO;
    return YES;
}

- (NSUInteger)hash {
    NSUInteger firsthash = [_firstName hash] ;
    NSUInteger lasthash = [_lastName hash] ;
    NSUInteger ageHash = _age ;
    return firsthash ^ lasthash ^ ageHash;
}

//id authDictionaryGetter (id self, SEL _cmd) ;
//void authDictionarySetter (id self, SEL _cmd,id value) ;
//
//+ (BOOL)resolveInstanceMethod:(SEL)sel {
//    NSString* selectorString = NSStringFromSelector(selector) ;
//    if (/* selector is from a @dynamic property */) {
//        if ([selectorString hasPrefix:@"set"]) {
//            class_addMethod (self, selector,(IMP)authDictionarySetter,"v@ : @") ;
//        } else {
//            class_addMethod (self,selector,(IMP)authDictionaryGetter , "@ @ :") ;
//        }
//        return YES;
//    }
//    return [super resolveInstanceMethod:selecter];
//}

- (id)forwardingTargetForSelector:(SEL)aSelector ;

- (void)forwardInvocation : (NSInvocation*) invocation

@end
