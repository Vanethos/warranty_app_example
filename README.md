# Warranty App

## Prerequisites

To run this project, you will need to configure a new Firebase Project. This project uses the 
`com.vanethos.warrantyexampleapp` app id, so you can use that one or change the iOS Bundle Identifier
and the Android's `applicationId`.

- After creating the new project, download and Place the `google-services.json` file in `android/app` 
and add to the XCode Project the file `GoogleService-Info.plist`. 

- In the Info.plist file, add the following entry and change the value to the `REVERSED_CLIENT_ID` 
from the `GoogleService-Info.plist` file
```xml
<!-- Google Sign-in Section -->
    <key>CFBundleURLTypes</key>
    <array>
        <dict>
            <key>CFBundleTypeRole</key>
            <string>Editor</string>
            <key>CFBundleURLSchemes</key>
            <array>
                <!-- TODO Replace this value: -->
                <!-- Copied from GoogleService-Info.plist key REVERSED_CLIENT_ID -->
                <string>REVERSE_CLIENT_ID</string>
            </array>
        </dict>
    </array>
    <!-- End of the Google Sign-in Section -->
```

- Place your debug SHA-1 in the Firebase console for the Android app
To get the SHA-1 of your debug key, use the following command:

```bash
keytool -list -v \
-alias androiddebugkey -keystore ~/.android/debug.keystore
```

When prompted with a password, use `android`. If you are going to use the application in release mode, 
use the SHA-1 of that key, you can read more about it here:  https://developers.google.com/android/guides/client-auth and
https://stackoverflow.com/a/54696963

- Activate the "People API" in the Google Cloud console for the project that you created on the Firebase Console

Finally, you will be able to run your project via the command line:

```bash
flutter run
```






