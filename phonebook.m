#import "phonebook.h"
#import "phonecard.h"

@implementation PhoneBook

-(void)initial
{
	arr = [[NSMutableArray alloc]init];
}	
	
-(void)addEntry:(id)obj
{
	NSLog(@"Adding\n");
	[arr addObject:obj];
}

-(void)delEntry:(id)obj
{
	if(arr!=nil)
	{
		NSLog(@"DELETING THE ENTRY\n");
		[arr removeObject:obj];
	}
	else
	{
		NSLog(@"The Phone Book is empty. Nothing to delete\n");
	}
}

-(void)listAll
{
	NSLog(@"The entries in the phone book are:\n");
	for(Phone *obj in arr)
	{
		[obj print];
	}
}

-(int)countAll
{
	int count = 0;
	for(Phone *obj in arr)
	{
		count += 1;
	}
	return count;
}

-(void)searchWithName:(NSString *)nm
{
	int flag = 0;
	for(Phone *obj in arr)
	{
		if([obj.name caseInsensitiveCompare:nm] == NSOrderedSame)
		{
			flag = 1;
			NSLog(@"The entry for %@ exists\n", nm);  
			[obj print];
		}
	}
	if(flag == 0)
	{
		NSLog(@"The entry for %@ doesnt exists\n", nm);  
	}	
}

@end
