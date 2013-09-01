#import<Foundation/Foundation.h>
#import "employee.h"

int main(int argc, char *argv[])
{
	employee *emp = [[employee alloc]init];
	[emp setName:@"abcd"];
	[emp setDept:@"ise"];
	[emp setEmpid:70];
	printf("\nReading employee data:\n");
	NSLog(@"\nName: %@\nDepartment: %@\nID: %d\n", [emp getName], [emp getDept], [emp getEmpid]);
	[emp release];
	return 0;
}