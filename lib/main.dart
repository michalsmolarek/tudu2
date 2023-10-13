import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tudu/config/constants/consts.dart';
import 'package:tudu/config/theme/themes.dart';
import 'package:tudu/core/router/router.dart';
import 'package:tudu/core/translations/generated/l10n.dart';
import 'package:tudu/injectable/injectable.dart';

void main() async {
  injectDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: const [
        Translation.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: Translation.delegate.supportedLocales,
      locale: const Locale('pl'),
      debugShowCheckedModeBanner: false,
      routeInformationProvider: AppRouter.router.routeInformationProvider,
      routeInformationParser: AppRouter.router.routeInformationParser,
      routerDelegate: AppRouter.router.routerDelegate,
      title: AppConsts.appName,
      theme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}
