
import 'package:flutter/material.dart';
import 'package:police_training/translations/codegen_loader.g.dart';
import 'dart:async';
import 'dashboard.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';

import 'hm.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  
  
  runApp(
    
     EasyLocalization(
       path: 'assets/translations',
       supportedLocales: [
         Locale('en'),
         Locale('ur'),
       ],
       fallbackLocale: Locale('en'),
       assetLoader: CodegenLoader(),
       child: MyApp()),
  );
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      home: Hm()
    );
  }
}
