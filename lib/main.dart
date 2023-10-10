import 'dart:io';

import 'package:dikara_core/dikara_core.dart' as dkr;
import 'package:fimber/fimber.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:report_book/firebase_options.dart';
import 'package:report_book/src/app.dart';
import 'package:report_book/src/config/config.dart';
import 'package:report_book/src/di/injection_container.dart';

void main() async {
  // Make sure all is initialized before we configure everything.
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // Theme.
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  // Dependencies.
  // HttpOverrides.global = IsrgOverrides();
  await configureDependencies(
    environmentFilter: NoEnvOrContainsAny(
      {
        Config.buildVariant,
        Platform.operatingSystem,
      },
    ),
  );

  // Timezone and TimeFormat
  await initializeDateFormatting('id_ID', null);
  Intl.defaultLocale = 'id_ID';

  // Logging
  if (Config.debug) {
    Fimber.plantTree(
      dkr.DevTree(useColors: dkr.inject<dkr.DevicePlatformInfo>().isAndroid),
    );
  } else {
    Fimber.plantTree(dkr.CrashlyticsTree());
  }

  // Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MainApp());
}
