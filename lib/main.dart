import 'package:baitafome/pages/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:window_manager/window_manager.dart';
import 'package:floor/floor.dart';
import 'package:baitafome/dao/database.dart';
import 'package:baitafome/utils/generatetypes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  final callback = Callback(
    onCreate: (database, version) {
      generateTypes();
    },
  );

  final database = await $FloorAppDatabase.databaseBuilder('baitafome.db').addCallback(callback).build();
  database.close;

  WindowOptions windowOptions = WindowOptions(
      windowButtonVisibility: true,
      center: true,
      size: Size(850, 600),
      minimumSize: Size(850, 600));
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
