#import<Foundation/Foundation.h>
#import "phonecard.h"
#import "phonebook.h"

int main(int argc, const char* argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	Phone *p1 = [[Phone alloc] init];
	Phone *p2 = [[Phone alloc] init];
	Phone *p3 = [[Phone alloc] init];
	
	PhoneBook *book = [[PhoneBook alloc]init];
	[book initial];
	
	[p1 setName:@"Sahana"];
	[p1 setEmail:@"sahana@gmail.com"];
	[p1 setNum:97897878];
	
	[p2 setName:@"def"];
	[p2 setEmail:@"def@gmail.com"];
	[p2 setNum:78978908];
	
	[p3 setName:@"xyz:P"];
	[p3 setEmail:@"x@y.z"];
	[p3 setNum:778978987];
	
	//Adding new Entries
	[book addEntry:p1];
	[book addEntry:p2];
	[book addEntry:p3];
	
	[book listAll];
	
	//Removing a particular entries
	[book delEntry:p2];
	
	//List All the entries
	[book listAll];
	
	//Count all the entries
	NSLog(@"Number of Entries: %d\n", [book countAll]);
	
	//Compare
	[book searchWithName:@"def:P"];
	
	[pool release];
	
	return 0;
}
