#import<Foundation/Foundation.h>

@interface employee: NSObject
{
	NSString *name;
	NSString *dept;
	int empid;
}
//@property(assign) NSString *name;
//@property(assign) NSString *dept;
//@property(assign) int empid;

-(void) setName : (NSString*) n;
-(void) setDept : (NSString*) d;
-(void) setEmpid : (int) e;

-(NSString*) getName;
-(NSString*) getDept;
-(int) getEmpid;


@end