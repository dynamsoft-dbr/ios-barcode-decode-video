
#import <UIKit/UIKit.h>
#import <CoreMedia/CoreMedia.h>
#import <AVFoundation/AVFoundation.h>
#import <DynamsoftBarcodeReader/DynamsoftBarcodeSDK.h>

@interface DbrManager : NSObject<AVCaptureVideoDataOutputSampleBufferDelegate, NSURLConnectionDelegate>

@property (nonatomic) long barcodeFormat;

@property (nonatomic) long barcodeFormat2;

@property (strong, nonatomic) NSDate *startRecognitionDate;

@property (strong, nonatomic) NSDate *startVidioStreamDate;

@property BOOL isPauseFramesComing;
@property BOOL isCurrentFrameDecodeFinished;
@property BOOL adjustingFocus;

@property CGSize cameraResolution;

-(id)initWithLicenseFromServer:(NSString*)serverURL LicenseKey:(NSString*)licenseKey;

-(void)connectServerAfterInit:(NSString*)serverURL LicenseKey:(NSString*)licenseKey;

-(id)initWithLicense:(NSString *)license;

-(void)setBarcodeFormat:(long)barcodeFormat barcodeFormat2:(long)barcodeFormat2;

-(void)setVideoSession;

-(void)startVideoSession;

-(AVCaptureSession*) getVideoSession;

-(void)setRecognitionCallback :(id)sender :(SEL)callback;

-(void)setServerLicenseVerificationCallback: (id)sender :(SEL)callback;

@end
