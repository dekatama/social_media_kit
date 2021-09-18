import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:social_media_kit/flutter_web_browser.dart';


import 'ads_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AdManager.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo here
            FaIcon(
              FontAwesomeIcons.android,
              size: 150,
            ),
            SizedBox(
              height: 50,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<HomePage> {
  openBrowserTab() async {
    await FlutterWebBrowser.openWebPage(url: "https://facebook.com/");
  }

  Widget ads() {
    return Container(
      height: 50,
      child: AdWidget(
        ad: AdManager.createBannerAd()..load(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: new AppBar(
            title: new Text('Social Media App Kit'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.apps),
                  text: "SOCIAL SITE",
                ),
                Tab(
                  icon: Icon(Icons.shopping_bag),
                  text: "SHOPPING",
                ),
                Tab(
                  icon: Icon(Icons.movie),
                  text: "MOVIE",
                ),
              ],
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: TabBarView(children: <Widget>[
                  GridView.count(crossAxisCount: 4, children: <Widget>[
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Colors.blue,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://facebook.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Facebook',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.instagram,
                              color: Colors.red,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://instagram.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Instagram',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.twitter,
                              color: Colors.blue,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://twitter.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Twitter',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.linkedin,
                              color: Colors.blue,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://Linkedin.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Linkedin',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.pinterest,
                              color: Colors.red,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://Pinterest.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Pinterest',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(FontAwesomeIcons.snapchat,
                                color: Colors.yellow),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://snapchat.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Snapchat',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.tiktok,
                              color: Colors.black,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://tiktok.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Tiktok',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.instagram,
                              color: Colors.red,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://instagram.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Instagram',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(FontAwesomeIcons.youtube,
                                color: Colors.red),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://Youtube.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Youtube',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.google,
                              color: Colors.blue,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://google.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Google',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(FontAwesomeIcons.tumblr,
                                color: Colors.black),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://Tumblr.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Tumblr',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.reddit,
                              color: Colors.red[400],
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://Reddit.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Reddit',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.viber,
                              color: Colors.purple,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://Viber.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Viber',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.line,
                              color: Colors.green,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://line.me/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Line',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.telegram,
                              color: Colors.blue,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://web.telegram.org/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Telegram',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.medium,
                              color: Colors.blue,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://Medium.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Medium',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.spotify,
                              color: Colors.green,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://spotify.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Spotify',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.uber,
                              color: Colors.black,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://uber.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Uber',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.airbnb,
                              color: Colors.red,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://airbnb.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Airbnb',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.vimeo,
                              color: Colors.blue,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://vimeo.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Vimeo',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.periscope,
                              color: Colors.blue,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://www.periscope.tv//"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Periscope',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.mix,
                              color: Colors.orange,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://mix.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Mix',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.deviantart,
                              color: Colors.green,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://deviantart.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Deviantart',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.quora,
                              color: Colors.red[900],
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://quora.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Quora',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.meetup,
                              color: Colors.red[900],
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://meetup.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Meetup',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.twitch,
                              color: Colors.purple,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://www.twitch.tv/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Twitch',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.viadeo,
                              color: Colors.blue,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://viadeo.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Viadeo',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.xing,
                              color: Colors.green[900],
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://xing.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Xing',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                  ]),
                  GridView.count(crossAxisCount: 4, children: <Widget>[
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.amazon,
                              color: Colors.black,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://amazon.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Amazon',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.shopify,
                              color: Colors.green,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://shopify.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Shopify',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.ebay,
                              color: Colors.blue,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://ebay.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Ebay',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: Image(
                                image: NetworkImage(
                                    "https://icon-library.com/images/wish-icon/wish-icon-28.jpg"),
                                fit: BoxFit.cover),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://wish.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Text(
                                'Wish',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: Image(
                              image: NetworkImage(
                                  "https://cdn.icon-icons.com/icons2/2699/PNG/512/aliexpress_logo_icon_167892.png"),
                              fit: BoxFit.contain,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://aliexpress.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Aliexpress',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: Image(
                              image: NetworkImage(
                                  "https://4.bp.blogspot.com/-d7ejX_qMOTI/XgrnnlT-VwI/AAAAAAAABPw/GtwyGgILiF8aWtCaYoKEKokgsokXi4rIQCLcBGAsYHQ/s1600/lazada.png"),
                              fit: BoxFit.cover,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://lazada.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Lazada',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: Image(
                              image: NetworkImage(
                                  "https://www.freepnglogos.com/uploads/flipkart-logo-png/flipkart-inventory-management-system-zap-inventory-1.png"),
                              fit: BoxFit.contain,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://flipkart.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Flipkart',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: Image(
                              image: NetworkImage(
                                  "https://upload.wikimedia.org/wikipedia/commons/1/17/Jdid.png"),
                              fit: BoxFit.contain,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://jd.id/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Jd.id',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: Image(
                              image: NetworkImage(
                                  "https://i.pinimg.com/originals/59/88/ed/5988ed9531e7e4322993de62a1b98d05.png"),
                              fit: BoxFit.contain,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://us.shein.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Shein',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: Image(
                              image: NetworkImage(
                                  "https://www.freepnglogos.com/uploads/logo-myntra-png/myntra-logo-in-circle-transparent-background-21.png"),
                              fit: BoxFit.contain,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://myntra.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Myntra',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: Image(
                              image: NetworkImage(
                                  "https://logodix.com/logo/1713056.png"),
                              fit: BoxFit.contain,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://zalora.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Zalora',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: Image(
                              image: NetworkImage(
                                  "https://www.coywolf.news/wp-content/uploads/2020/05/shop-app-1024x412.png"),
                              fit: BoxFit.contain,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://shop.app/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Shop App',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: Image(
                              image: NetworkImage(
                                  "https://upload.wikimedia.org/wikipedia/commons/8/86/Letgo_logo.png"),
                              fit: BoxFit.contain,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://letgo.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Letgo',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: Image(
                              image: NetworkImage(
                                  "https://www.pngfind.com/pngs/m/431-4312130_harpers-bazaar-logo-harpers-bazaar-logo-transparent-hd.png"),
                              fit: BoxFit.contain,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://harpersbazaar.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Harpersbazaar',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: Image(
                              image: NetworkImage(
                                  "https://findvectorlogo.com/wp-content/uploads/2018/12/zara-vector-logo.png"),
                              fit: BoxFit.contain,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://zara.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Zara',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: Image(
                              image: NetworkImage(
                                  "http://clipart-library.com/images/qTBoa99yc.jpg"),
                              fit: BoxFit.contain,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://etsy.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Etsy',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                  ]),
                  GridView.count(crossAxisCount: 4, children: <Widget>[
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: Image(
                              image: NetworkImage(
                                  "https://ia601903.us.archive.org/0/items/tubi-tv/TubiTV.png"),
                              fit: BoxFit.contain,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://tubitv.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'TubiTV',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: Image(
                              image: NetworkImage(
                                  "https://cdn1.iconfinder.com/data/icons/logos-brands-5/512/disney-plus-2-512.png"),
                              fit: BoxFit.contain,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "www.hotstar.com"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Disney',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: Image(
                              image: NetworkImage(
                                  "https://iconape.com/wp-content/files/yf/112580/png/vudu-2014-logo.png"),
                              fit: BoxFit.contain,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://vudu.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Vudu',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: Image(
                              image: NetworkImage(
                                  "https://www.pngarea.com/pngm/282/2304643_supergirl-logo-png-mvdfilmrise-documentary-collection-transparent-png.png"),
                              fit: BoxFit.contain,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://filmrise.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Filmrise',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: Image(
                              image: NetworkImage(
                                  "https://brandslogos.com/wp-content/uploads/images/large/plex-logo-black-and-white.png"),
                              fit: BoxFit.contain,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://www.plex.tv/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Plex TV',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: Image(
                              image: NetworkImage(
                                  "https://cdn.freelogovectors.net/wp-content/uploads/2020/01/vizio-logo.png"),
                              fit: BoxFit.contain,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://vizio.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Vizio',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: Image(
                              image: NetworkImage(
                                  "https://seeklogo.com/images/R/rotten-tomatoes-logo-202C7E90E3-seeklogo.com.png"),
                              fit: BoxFit.contain,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://rottentomatoes.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Rottentomatoes',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: Image(
                              image: NetworkImage(
                                  "https://upload.wikimedia.org/wikipedia/commons/e/e1/JustWatch.png"),
                              fit: BoxFit.contain,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://JustWatch.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'JustWatch',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: Image(
                              image: NetworkImage(
                                  "https://www.citypng.com/public/uploads/preview/-11594687246vzsjesy7bd.png"),
                              fit: BoxFit.contain,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://netflix.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Netflix',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: Image(
                              image: NetworkImage(
                                  "https://upload.wikimedia.org/wikipedia/commons/0/09/Iflix_logo.png"),
                              fit: BoxFit.contain,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://Iflix.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Iflix',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: Image(
                              image: NetworkImage(
                                  "https://1.bp.blogspot.com/-E03L5HtEmPk/YDN-IAD_uMI/AAAAAAAAENQ/4rollGX60XcyTGuUA5W-3RMg4o9ahInRwCLcBGAsYHQ/s1600/Logo%2BViu.png"),
                              fit: BoxFit.contain,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://viu.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Viu',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                    Card(
                        child: Stack(
                      children: <Widget>[
                        Center(
                          child: IconButton(
                            icon: Image(
                              image: NetworkImage(
                                  "https://www.pngkit.com/png/full/849-8491421_hbo-logo-grey-mlb-advanced-media-logo.png"),
                              fit: BoxFit.contain,
                            ),
                            onPressed: () => FlutterWebBrowser.openWebPage(
                                url: "https://Hbo.com/"),
                            iconSize: 50,
                            splashColor: Colors.purple,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 70),
                          child: Center(
                            child: Container(
                              child: Text(
                                'Hbo',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    )),
                  ]),
                ]),
              ),
              ads()
            ],
          ),
        ),
      ),
    );
  }
}
