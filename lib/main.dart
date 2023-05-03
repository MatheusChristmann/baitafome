import 'package:baitafome/pages/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  runApp(const BaitaFomeApp());
}

class BaitaFomeApp extends StatelessWidget {
  const BaitaFomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(           
      home: const MainPage(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}


