import 'package:docapp/app/router/router.dart';
import 'package:docapp/features/splash/splashview.dart';
import 'package:docapp/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class docapp extends StatelessWidget {
  const docapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        onGenerateRoute: onGenerateRoute,
        locale: const Locale("en"),
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        home: Scaffold(body: SplashView()),
      ),
    );
  }
}
