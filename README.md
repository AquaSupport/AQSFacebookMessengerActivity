AQSFacebookMessengerActivity
============================

![](http://img.shields.io/cocoapods/v/AQSFacebookMessengerActivity.svg?style=flat) [![Build Status](https://travis-ci.org/AquaSupport/AQSFacebookMessengerActivity.svg?branch=master)](https://travis-ci.org/AquaSupport/AQSFacebookMessengerActivity)

![](https://raw.githubusercontent.com/AquaSupport/AQSFacebookMessengerActivity/master/Screencast.gif)

[iOS] UIActivity class for sharing with Facebook Messenger for iOS

Usage
---

```objc
UIActivity *fbmActivity = [[AQSFacebookMessengerActivity alloc] init];

UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:@[fbmActivity]];

[self presentViewController:activityViewController animated:YES completion:NULL];
```

Accepted `activityItems` Types
---

- `FBLinkShareParams`: Accepts only single
- `FBPhotoParams`: Accepts only single
- `NSURL`: Accepts only single
- `UIImage`: Accepts single / multiple

Can perform activity when
---

- When Facebook Messenger iOS App is installed and FB App information is properly set in `.plist`.
- At least one of accepted types provided.

Setup
---

`AQSFacebookMessengerActivity` requires 3-min setup.

1. Register Facebook App https://developers.facebook.com/apps/
2. In your `.plist`, set `FacebookAppID` as your FB App ID. (like `7828392093`)
3. In your `.plist`, set `FacebookDisplayName` as you FB App's Display Name.
4. Setup URL Scheme like `fb42` where `42` is your FB App ID (For FB App ID:`7828392093`, the URL Scheme is `fb7828392093`)

![](https://raw.githubusercontent.com/AquaSupport/AQSFacebookMessengerActivity/master/Assets/ss_plist.png)

Installation
---

```
pod "AQSFacebookMessengerActivity"
```

Link to Documents
---

https://dl.dropboxusercontent.com/u/7817937/___doc___AQSFacebookMessengerActivity/html/index.html

Related Projects
---

- [AQSShareService](https://github.com/AquaSupport/AQSShareService) - UX-improved sharing feature in few line. 

References
---

- Getting Started with the Facebook iOS SDK : https://developers.facebook.com/docs/ios/getting-started#
