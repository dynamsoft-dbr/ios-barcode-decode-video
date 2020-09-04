# ios-barcode-decode-video

Call startFrameDecodingEx() to initialize the environment and call appendFrame() repeatedly to add the preview images.

## Installation

1.To install ios-barcode-decode-video, simply add the following line to your Podfile:

```bash
pod 'DynamsoftBarcodeReader'
```

2.Then run `pod install` from the Example directory.

3.Make sure `Your Project Target -> Build Settings -> Search Paths -> Frameworks Search Paths` and `Linking -> Other Linker Flags`, this can lead to problems with the CocoaPods installation, The following command is modified to the corresponding content please.
```bash
Frameworks Search Paths = "${PODS_ROOT}/DynamsoftBarcodeReader"
Other Linker Flags = -framework "DynamsoftBarcodeReader"
```

## License Agreement
https://www.dynamsoft.com/Products/barcode-reader-license-agreement.aspx#javascript
