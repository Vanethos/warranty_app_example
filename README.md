# Warranty App

## Prerequisites

To be able to build this project, you will need to configure a new Firebase Project. You can either change the `bundleId` of the iOS and Android app or use the default one: `com.vanethos.warrantyexampleapp`

After that, you must also do the following:
- Place your debug SHA-1 in the Firebase console for the Android app (see https://developers.google.com/android/guides/client-auth , the default passowrd is `android`)
- Activate the "People API" in the Google Cloud console for the project that you created on the Firebase Console
- Place the `google-services.json` file in `android/app` and add to the XCode Project the file `GoogleService-Info.plist`
- Create a `keys.xcconfig` file in `ios/Runner` with the field `GOOGLE_KEY` with the value `REVERSED_CLIENT_ID` from the `GoogleService-Info.plist` file


