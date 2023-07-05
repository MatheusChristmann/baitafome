import 'package:baitafome/pages/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:window_manager/window_manager.dart';
import 'package:floor/floor.dart';
import 'package:baitafome/dao/database.dart';
import 'package:baitafome/utils/onCreateDB.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  final callback = Callback(
    
    onCreate: (database, version) {
      onCreateDB();
    },
  );

  final database = await $FloorAppDatabase.databaseBuilder('baitafome.db').addCallback(callback).build();
  database.close;

  WindowOptions windowOptions = WindowOptions(
      windowButtonVisibility: true,
      center: true,
      size: Size(1200, 740),
      minimumSize: Size(1200, 740));
    windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.show();
      await windowManager.focus();
    }
  );

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
