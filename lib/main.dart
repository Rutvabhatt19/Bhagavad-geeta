import 'package:departure_bhagvadgeetaapp/Bookmarkprovider.dart';
import 'package:departure_bhagvadgeetaapp/Languegeprovider.dart';
import 'package:departure_bhagvadgeetaapp/Provider.dart';
import 'package:departure_bhagvadgeetaapp/Splashscreen.dart';
import 'package:departure_bhagvadgeetaapp/Summerypage.dart';
import 'package:departure_bhagvadgeetaapp/Thememodal.dart';
import 'package:departure_bhagvadgeetaapp/Versespage.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ThemeModal(),
      ),
      ChangeNotifierProvider(
        create: (context) => Provider1(),
      ),
      ChangeNotifierProvider(
        create: (context) => Provider2(),
      ),
      ChangeNotifierProvider(
        create: (context) => Provider3(),
      ),
      ChangeNotifierProvider(
        create: (context) => Provider4(),
      ),
      ChangeNotifierProvider(
        create: (context) => Provider5(),
      ),
      ChangeNotifierProvider(
        create: (context) => Providerall(),
      ),
      ChangeNotifierProvider(
        create: (context) => Languegepro(),
      ),
      ChangeNotifierProvider(
        create: (context) => Languege2(),
      ),
      ChangeNotifierProvider(
        create: (context) => Bookmarkpref(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
