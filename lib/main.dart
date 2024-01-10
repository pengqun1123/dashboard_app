import 'package:dashboard_app/resources/app_colors.dart';
import 'package:dashboard_app/resources/app_texts.dart';
import 'package:dashboard_app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return  MaterialApp.router(
      title: AppTexts.appName,
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
        textTheme: GoogleFonts.assistantTextTheme(
          Theme.of(context).textTheme.apply(
            bodyColor: AppColors.contentColorBlack,
          ),
        ),
        scaffoldBackgroundColor: AppColors.contentColorWhite,
      ),
      routerConfig: appRouterConfig,
    );
  }
}
