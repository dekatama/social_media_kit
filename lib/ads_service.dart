import 'dart:io';

import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdManager {
  static String get bannerAdUnitId => Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/6300978111'
      : 'ca-app-pub-3940256099942544/6300978111';

  static initialize() {
    if (MobileAds.instance == null) {
      MobileAds.instance.initialize();
    }
  }

  static BannerAd createBannerAd() {
    BannerAd ad = new BannerAd(
        size: AdSize.banner,
        adUnitId: bannerAdUnitId,
        listener: AdListener(
          onAdLoaded: (Ad ad) => print('On Ad Loader'),
          onAdFailedToLoad: (Ad ad, LoadAdError error) {
            ad.dispose();
            print('Ad failed to load: $error');
          },
          onAdOpened: (Ad ad) => print('Ad Opened'),
          onAdClosed: (Ad ad) => print('Ad Closed'),
        ),
        request: AdRequest());
    return ad;
  }
}
