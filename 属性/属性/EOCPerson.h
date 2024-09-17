//
//  EOCPerson.h
//  属性
//
//  Created by 朱敬业 on 2024/1/16.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EOCPerson : NSObject
@property (nonatomic,copy) NSString* firstName ;
@property (nonatomic,copy) NSString* lastName ;
@property (nonatomic, assign) NSInteger age ;


//- (NSString*)fullName ;
//- (void)setFullName : (NSString*) fullName ;
+ (BOOL)resolveInstanceMethod:(SEL)sel ;
@end

NS_ASSUME_NONNULL_END
