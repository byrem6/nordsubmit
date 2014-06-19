//
//  SubmitViewController.m
//  NordSubmit
//
//  Created by Gurkan Tumer on 13/06/14.
//  Copyright (c) 2014 Gurkan Tumer. All rights reserved.
//

#import "SubmitViewController.h"
#import "Kisi.h"

@interface SubmitViewController ()

@end

@implementation SubmitViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

        //self.view.backgroundColor = [UIColor darkGrayColor]; Bu rengi Sevmedim :)
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    
    
}

- (void)viewDidAppear:(BOOL)animated{
    
    Kisi * my=[[Kisi alloc]init];
    my.isim_soyisim=@"Ramazan Hocaoğlu";
     my.telefon=@"0(545) 472 56 76";
     my.mail=@"remindfunction@gmail.com";
     my.aciklama=@"Deneme Bir İki Üç :)";
     my.okul=@"Marmara Üniversitesi";
    my.deneyim=@".net +9y / ios +4y ";
    
    vCard=[[NSMutableDictionary alloc]initWithDictionary:my.getvCard];
    
    
    
    [my SaveParse];

    [self.tableView reloadData];
    
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [vCard count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell * myCell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:@"myCellTemp"];
    
    myCell.textLabel.text=vCard.allKeys[indexPath.row];
    myCell.detailTextLabel.text=vCard.allValues[indexPath.row];
    
    
    return myCell;
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
