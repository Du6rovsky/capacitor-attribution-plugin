# @inphinit/capacitor-attribution-plugin

A lightweight Capacitor plugin for accessing native mobile attribution data

- Apple Search Ads Attribution Token (iOS 14.3+)
- Google Play Install Referrer URL (Android)
- Capacitor 6, 7, 8 are supported
- Dual licensing (GPL-3.0-only + Commercial)

No AppsFlyer, Adjust, Branch or other third-party attribution SDKs required

### Installation

```bash
npm install @inphinit/capacitor-attribution-plugin
npx cap sync
```

### Usage:
```ts
import {CapacitorAttribution} from "@inphinit/capacitor-attribution-plugin";
import {Capacitor} from "@capacitor/core";

const platform = Capacitor.getPlatform();

if (platform === 'ios') {
    const { attributionToken } =
        await CapacitorAttribution.getIosAttributionToken();
} else if (platform === 'android') {
    const { referrerUrl } =
        await CapacitorAttribution.getAndroidReferrerUrl();
}
```

### iOS Requirements
- Apple Search Ads Attribution Token requires iOS 14.3+
- Attribution data is available only for installs originating from Apple Search Ads
- Send the returned attribution token to your backend server to retrieve attribution data using the Apple AdServices API
- Official Apple Docs for Attribution Token: https://developer.apple.com/documentation/adservices/aaattribution/attributiontoken()

### Android Requirements
- Google Play Install Referrer provides attribution data only for installs originating from Google Ads
- Official Android Docs for Install Referrer API: https://developer.android.com/reference/com/android/installreferrer/api/package-summary

## Returned values

### iOS method getIosAttributionToken()

```
{ attributionToken: string }
```

### Android method getAndroidReferrerUrl()
```
{ referrerUrl: string }
```

## License

This project is dual-licensed:

- GPL-3.0-only for open-source projects
- Commercial license for proprietary applications

More information:
https://inphinit.space/capacitor-attribution-plugin

Contact:
inphinit.dev@gmail.com