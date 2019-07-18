
#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface BarcodeTypesTableViewController : UITableViewController

@property (strong, nonatomic) IBOutlet UITableView *barcodeTypesTableView;
@property (strong, nonatomic) ViewController *mainView;
@property (weak, nonatomic) IBOutlet UITableViewCell *linearCell;
@property (weak, nonatomic) IBOutlet UITableViewCell *qrcodeCell;
@property (weak, nonatomic) IBOutlet UITableViewCell *pdf417Cell;
@property (weak, nonatomic) IBOutlet UITableViewCell *datamatrixCell;
@property (weak, nonatomic) IBOutlet UITableViewCell *aztecCell;

@end
