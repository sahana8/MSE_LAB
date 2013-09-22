#import<Foundation/Foundation.h>

@interface PhoneBook: NSObject
{
	NSMutableArray *arr;
}

//-(id)init;
//-(PhoneBook*)initWithObject;
-(void)initial;
-(void)addEntry:(id)obj;
-(void)delEntry:(id)obj;
-(void)listAll;
-(int)countAll;
-(void)searchWithName:(NSString *)nm;

@end	
