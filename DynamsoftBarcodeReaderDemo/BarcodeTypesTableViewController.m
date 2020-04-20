
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
@synthesize databarCell;
@synthesize patchcodeCell;
@synthesize maxicodeCell;
@synthesize microqrCell;
@synthesize micropdf417Cell;
@synthesize gs1compositeCell;
@synthesize postalCodeCell;
@synthesize dotCodeCell;
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
    [databarCell setSelectedBackgroundView:bgColorView];
    [patchcodeCell setSelectedBackgroundView:bgColorView];
    [maxicodeCell setSelectedBackgroundView:bgColorView];
    [microqrCell setSelectedBackgroundView:bgColorView];
    [micropdf417Cell setSelectedBackgroundView:bgColorView];
    [gs1compositeCell setSelectedBackgroundView:bgColorView];
    [postalCodeCell setSelectedBackgroundView:bgColorView];
    [dotCodeCell setSelectedBackgroundView:bgColorView];
}

- (void)selectCells{
    long types = (mainView == nil || mainView.dbrManager == nil) ? EnumBarcodeFormatALL : mainView.dbrManager.barcodeFormat;
    long types_2 = (mainView == nil || mainView.dbrManager == nil) ? EnumBarcodeFormat2NULL: mainView.dbrManager.barcodeFormat2;
    
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
    
    if((types | EnumBarcodeFormatGS1DATABAR) == types)
    {
        NSIndexPath *indexPath=[NSIndexPath indexPathForRow:5 inSection:0];
        [barcodeTypesTableView selectRowAtIndexPath:indexPath animated:NO  scrollPosition:UITableViewScrollPositionBottom];
    }
    
    if((types | EnumBarcodeFormatPATCHCODE) == types)
    {
        NSIndexPath *indexPath=[NSIndexPath indexPathForRow:6 inSection:0];
        [barcodeTypesTableView selectRowAtIndexPath:indexPath animated:NO  scrollPosition:UITableViewScrollPositionBottom];
    }
    
    if((types | EnumBarcodeFormatMAXICODE) == types)
    {
        NSIndexPath *indexPath=[NSIndexPath indexPathForRow:7 inSection:0];
        [barcodeTypesTableView selectRowAtIndexPath:indexPath animated:NO  scrollPosition:UITableViewScrollPositionBottom];
    }
    
    if((types | EnumBarcodeFormatMICROQR) == types)
    {
        NSIndexPath *indexPath=[NSIndexPath indexPathForRow:8 inSection:0];
        [barcodeTypesTableView selectRowAtIndexPath:indexPath animated:NO  scrollPosition:UITableViewScrollPositionBottom];
    }
    
    if((types | EnumBarcodeFormatMICROPDF417) == types)
    {
        NSIndexPath *indexPath=[NSIndexPath indexPathForRow:9 inSection:0];
        [barcodeTypesTableView selectRowAtIndexPath:indexPath animated:NO  scrollPosition:UITableViewScrollPositionBottom];
    }
    
    if((types | EnumBarcodeFormatGS1COMPOSITE) == types)
    {
        NSIndexPath *indexPath=[NSIndexPath indexPathForRow:10 inSection:0];
        [barcodeTypesTableView selectRowAtIndexPath:indexPath animated:NO  scrollPosition:UITableViewScrollPositionBottom];
    }
    
    if((types_2 | EnumBarcodeFormat2POSTALCODE) == types_2)
    {
        NSIndexPath *indexPath=[NSIndexPath indexPathForRow:11 inSection:0];
        [barcodeTypesTableView selectRowAtIndexPath:indexPath animated:NO  scrollPosition:UITableViewScrollPositionBottom];
    }
    
    if((types_2 | EnumBarcodeFormat2DOTCODE) == types_2)
    {
        NSIndexPath *indexPath=[NSIndexPath indexPathForRow:12 inSection:0];
        [barcodeTypesTableView selectRowAtIndexPath:indexPath animated:NO  scrollPosition:UITableViewScrollPositionBottom];
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //where indexPath.row is the selected cell
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    //where indexPath.row is the selected cell
    BOOL hasCellSelected = linearCell.selected || qrcodeCell.selected || pdf417Cell.selected || datamatrixCell.selected || aztecCell.selected || databarCell.selected || patchcodeCell.selected || maxicodeCell.selected || microqrCell.selected || micropdf417Cell.selected || gs1compositeCell.selected || postalCodeCell.selected || dotCodeCell.selected;
    
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
        long types_2 = 0;
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
        if(databarCell.selected)
            types |= EnumBarcodeFormatGS1DATABAR;
        if(patchcodeCell.selected)
            types |= EnumBarcodeFormatPATCHCODE;
        if(maxicodeCell.selected)
            types |= EnumBarcodeFormatMAXICODE;
        if(microqrCell.selected)
            types |= EnumBarcodeFormatMICROQR;
        if(micropdf417Cell.selected)
            types |= EnumBarcodeFormatMICROPDF417;
        if(gs1compositeCell.selected)
            types |= EnumBarcodeFormatGS1COMPOSITE;
        if(postalCodeCell.selected)
            types_2 |= EnumBarcodeFormat2POSTALCODE;
        if(dotCodeCell.selected)
            types_2 |= EnumBarcodeFormat2DOTCODE;
        long allBarcodeFormatInvert = ~EnumBarcodeFormatALL;
        long allBarcodeFormat2Invert = ~(EnumBarcodeFormat2POSTALCODE | EnumBarcodeFormat2NONSTANDARDBARCODE | EnumBarcodeFormat2DOTCODE);
        if(mainView != nil && mainView.dbrManager != nil){
            [mainView.dbrManager setBarcodeFormat:(mainView.dbrManager.barcodeFormat & allBarcodeFormatInvert) barcodeFormat2:(mainView.dbrManager.barcodeFormat2 & allBarcodeFormat2Invert)];
            [mainView.dbrManager setBarcodeFormat:(mainView.dbrManager.barcodeFormat | types) barcodeFormat2:(mainView.dbrManager.barcodeFormat2 | types_2)];
        }
    }
    [super viewWillDisappear:animated];
}

@end
