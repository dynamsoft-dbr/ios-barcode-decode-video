
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
@property (weak, nonatomic) IBOutlet UITableViewCell *databarCell;
@property (weak, nonatomic) IBOutlet UITableViewCell *patchcodeCell;
@property (weak, nonatomic) IBOutlet UITableViewCell *maxicodeCell;
@property (weak, nonatomic) IBOutlet UITableViewCell *microqrCell;
@property (weak, nonatomic) IBOutlet UITableViewCell *gs1compositeCell;
@property (weak, nonatomic) IBOutlet UITableViewCell *micropdf417Cell;
@property (weak, nonatomic) IBOutlet UITableViewCell *postalCodeCell;
@property (weak, nonatomic) IBOutlet UITableViewCell *dotCodeCell;

@end
