//
//  CheckSumViewController.m
//  2020GitLearningDemo
//
//  Created by ASSASSIN on 2021/1/18.
//

#import "CheckSumViewController.h"
#import "NSString+Hash.h"

/*
 Git Has Integrity
 Everything in Git is checksummed before it is stored and is then referred to by that checksum. This means it’s impossible to change the contents of any file or directory without Git knowing about it. This functionality is built into Git at the lowest levels and is integral to its philosophy. You can’t lose information in transit or get file corruption without Git being able to detect it.

 The mechanism that Git uses for this checksumming is called a SHA-1 hash. This is a 40-character string composed of hexadecimal characters (0–9 and a–f) and calculated based on the contents of a file or directory structure in Git. A SHA-1 hash looks something like this:

 24b9da6552252987aa493b52f8696cd6d3b00373
 You will see these hash values all over the place in Git because it uses them so much. In fact, Git stores everything in its database not by file name but by the hash value of its contents.
 */

@interface CheckSumViewController ()

@end

@implementation CheckSumViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSMutableString *tes1 = [[NSMutableString alloc] initWithString:@"The mechanism that Git uses for this checksumming is called a SHA-1 hash. This is a 40-character string composed of hexadecimal characters (0–9 and a–f) and calculated based on the contents of a file or directory structure in Git. A SHA-1 hash looks something like this"];
    NSString *sha1 = [tes1 sha1String];
    NSLog(@"%@",sha1);
    [tes1 appendString:@"1"];
    NSString *sha2 = [tes1 sha1String];
    NSLog(@"%@",sha2);
    if ([sha1 isEqualToString:sha2]) {
        NSLog(@"test1没有改变");
    }else {
        NSLog(@"test2改变了");
    }
}


@end
