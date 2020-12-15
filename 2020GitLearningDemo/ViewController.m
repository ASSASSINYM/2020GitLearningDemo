//
//  ViewController.m
//  2020GitLearningDemo
//
//  Created by ASSASSIN on 2020/12/15.
//

#import "ViewController.h"
#import "MTTableViewCell.h"


@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
    
@property(nonatomic,copy)NSString *year;

@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)BOOL isLogin;

@property(nonatomic,weak)IBOutlet UITableView *tableView;

@end

@implementation ViewController


-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - custom method

-(void)showAlert {
    
}

-(void)customMethod {
    
}

#pragma mark - tableview delegate & datasource

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MTTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MTTableViewCell"];
    NSLog(@"indexPath-------%ld",indexPath.row);
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(200, 100, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    //[cell addSubview:redView];
    [cell.contentView addSubview:redView];
    return cell;
}



@end
