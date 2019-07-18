
#import <UIKit/UIKit.h>
#import "DbrManager.h"

@interface ViewController : UIViewController{
    UIView *cameraPreview;
    AVCaptureVideoPreviewLayer *previewLayer;
    UIImageView *rectLayerImage;
    DbrManager *dbrManager;
}

@property (nonatomic, strong) UIView *cameraPreview;
@property (nonatomic, strong) AVCaptureVideoPreviewLayer *previewLayer;
@property (nonatomic, strong) IBOutlet UIImageView *rectLayerImage;
@property (nonatomic, strong) DbrManager *dbrManager;
@property (weak, nonatomic) IBOutlet UIButton *flashButton;
@property (weak, nonatomic) IBOutlet UILabel *detectDescLabel;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
- (IBAction)onFlashButtonClick:(id)sender;
- (IBAction)onAboutInfoClick:(id)sender;

@end

