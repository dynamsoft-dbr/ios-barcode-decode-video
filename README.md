# ios-barcode-decode-video

DBR SDK updates to 7.4.1

Call startFrameDecodingEx() to initialize the environment and call appendFrame() repeatedly to add the preview images.

## Installation

1.To install ios-barcode-decode-video, simply add the following line to your Podfile:

```bash
pod 'DynamsoftBarcodeReader'
```

2.Then run `pod install` from the Example directory.

3.Please modify the following commands to make the projet run correctly. These two commands in build setting defined in `Pods/Target Support Files/Pods-testOc/Pods-xxx.debug.xcconfig`, can lead to problems with the CocoaPods installation, 

```bash
FRAMEWORK_SEARCH_PATHS = "${SRCROOT}/Pods/DynamsoftBarcodeReader"

HEADER_SEARCH_PATHS = "${SRCROOT}/Pods/DynamsoftBarcodeReader/DynamsoftBarcodeReader.framework/Headers"
```

## License Agreement
https://www.dynamsoft.com/Products/barcode-reader-license-agreement.aspx#javascript
