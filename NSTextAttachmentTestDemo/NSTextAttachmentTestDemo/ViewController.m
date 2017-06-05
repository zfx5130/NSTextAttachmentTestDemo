//
//  ViewController.m
//  NSTextAttachmentTestDemo
//
//  Created by 赵富星 on 2017/6/1.
//  Copyright © 2017年 thomas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *testLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self testNSTextAttachment];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)testNSTextAttachment {

    NSTextAttachment *attchment = [[NSTextAttachment alloc] init];
    attchment.image = [UIImage imageNamed:@"test"];
    //bounds属性能改变图片的位置。
    attchment.bounds = CGRectMake(0, 0, 15, 15);
    
    //这里通过appendAttributedString 添加的先后图字的先后顺序，则是展示的前后顺序。
    NSMutableAttributedString *attachmentString = [[NSMutableAttributedString alloc] initWithAttributedString:[NSMutableAttributedString attributedStringWithAttachment:attchment]];
    [attachmentString appendAttributedString:[[NSAttributedString alloc] initWithString:@"测试测试测试测试测试试"]];
    self.testLabel.attributedText = attachmentString;

}



@end
