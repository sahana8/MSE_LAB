#import <Foundation/Foundation.h>
#import "hello.h"
 
int main(int argc,const char *argv[])
{
 hello *object=[[hello alloc]init];
 [object addStringValue: "Hello, World!!"];
 [object print];
 [object release];
 return 0;
}