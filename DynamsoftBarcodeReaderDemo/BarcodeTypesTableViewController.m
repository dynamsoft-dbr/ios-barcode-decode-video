
#import "BarcodeTypesTableViewController.h"
#import <DynamsoftBarcodeReader/DynamsoftBarcodeSDK.h>

@interface BarcodeTypesTableViewController ()

@end

@implementation BarcodeTypesTableViewController

@synthesize barcodeTypesTableView;
@synthesize mainView;

@synthesize linearCell;
@synthesize qrcodeCell;
@synthesize pdf417Cell;
@synthesize datamatrixCell;
@synthesize aztecCell;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [barcodeTypesTableView setEditing: YES animated: NO];
    
    [self configCellsBackground];
    
    [self selectCells];
    
    barcodeTypesTableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    if(mainView != nil && mainView.dbrManager != nil)
        mainView.dbrManager.isPauseFramesComing = YES;
}

- (void) configCellsBackground{
    UIView *bgColorView = [[UIView alloc] init];
    bgColorView.backgroundColor = [UIColor whiteColor];
    
    [linearCell setSelectedBackgroundView:bgColorView];
    [qrcodeCell setSelectedBackgroundView:bgColorView];
    [pdf417Cell setSelectedBackgroundView:bgColorView];
    [datamatrixCell setSelectedBackgroundView:bgColorView];
    [aztecCell setSelectedBackgroundView:bgColorView];
}

- (void)selectCells{
    long types = (mainView == nil || mainView.dbrManager == nil) ? EnumBarcodeFormatALL : mainView.dbrManager.barcodeFormat;
    
    if((types | EnumBarcodeFormatONED) == types)
    {
        NSIndexPath *indexPath=[NSIndexPath indexPathForRow:0 inSection:0];
        [barcodeTypesTableView selectRowAtIndexPath:indexPath animated:NO  scrollPosition:UITableViewScrollPositionBottom];
    }

    if((types | EnumBarcodeFormatQRCODE) == types)
    {
        NSIndexPath *indexPath=[NSIndexPath indexPathForRow:1 inSection:0];
        [barcodeTypesTableView selectRowAtIndexPath:indexPath animated:NO  scrollPosition:UITableViewScrollPositionBottom];
    }
    
    if((types | EnumBarcodeFormatPDF417) == types)
    {
        NSIndexPath *indexPath=[NSIndexPath indexPathForRow:2 inSection:0];
        [barcodeTypesTableView selectRowAtIndexPath:indexPath animated:NO  scrollPosition:UITableViewScrollPositionBottom];
    }
    
    if((types | EnumBarcodeFormatDATAMATRIX) == types)
    {
        NSIndexPath *indexPath=[NSIndexPath indexPathForRow:3 inSection:0];
        [barcodeTypesTableView selectRowAtIndexPath:indexPath animated:NO  scrollPosition:UITableViewScrollPositionBottom];
    }
    
    if((types | EnumBarcodeFormatAZTEC) == types)
    {
        NSIndexPath *indexPath=[NSIndexPath indexPathForRow:4 inSection:0];
        [barcodeTypesTableView selectRowAtIndexPath:indexPath animated:NO  scrollPosition:UITableViewScrollPositionBottom];
    }
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //where indexPath.row is the selected cell
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    //where indexPath.row is the selected cell
    BOOL hasCellSelected = linearCell.selected || qrcodeCell.selected || pdf417Cell.selected || datamatrixCell.selected || aztecCell.selected;
    
    if(hasCellSelected == NO)
        [barcodeTypesTableView selectRowAtIndexPath:indexPath animated:NO  scrollPosition:UITableViewScrollPositionBottom];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCellEditingStyle)tableView:(UITableView*)tableView editingStyleForRowAtIndexPath:(NSIndexPath*)indexPath
{
    return UITableViewCellEditingStyleDelete | UITableViewCellEditingStyleInsert;
}

-(void) viewWillDisappear:(BOOL)animated {
    if ([self.navigationController.viewControllers indexOfObject:self] == NSNotFound) {
        long types = 0;
        if(linearCell.selected)
            types |= EnumBarcodeFormatONED;
        if(qrcodeCell.selected)
            types |= EnumBarcodeFormatQRCODE;
        if(pdf417Cell.selected)
            types |= EnumBarcodeFormatPDF417;
        if(datamatrixCell.selected)
            types |= EnumBarcodeFormatDATAMATRIX;
        if(aztecCell.selected)
            types |= EnumBarcodeFormatAZTEC;
        
        if(mainView != nil && mainView.dbrManager != nil)
            mainView.dbrManager.barcodeFormat = types;
    }
    [super viewWillDisappear:animated];
}

@end
