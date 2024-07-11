import 'package:flutter/material.dart';
import 'package:ott/Modeltheme.dart';
import 'package:ott/splashscreen.dart';
import 'package:ott/test%202.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ModelTheme(),
      child: Consumer<ModelTheme>(
          builder: (context, ModelTheme themeNotifier, child) {
            return MaterialApp(
              builder: (context, child) => ResponsiveWrapper.builder(child,
                  maxWidth: 1200,
                  minWidth: 480,
                  defaultScale: true,
                  breakpoints: [
                    ResponsiveBreakpoint.resize(480, name: MOBILE),
                    ResponsiveBreakpoint.autoScale(800, name: TABLET),
                    ResponsiveBreakpoint.resize(1000, name: DESKTOP),
                  ],
                  background: Container(color: Colors.blue)),
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: themeNotifier.isDark
                  ? ThemeData(
                useMaterial3: true,
                colorScheme: ColorScheme.fromSeed(
                    brightness: Brightness.dark, seedColor: Colors.green),
                textTheme: GoogleFonts.montserratTextTheme(
                    Theme.of(context).textTheme),
                primaryTextTheme: GoogleFonts.montserratTextTheme(
                    Theme.of(context).textTheme),
              )
                  : ThemeData(
                useMaterial3: true,
                colorScheme: ColorScheme.fromSeed(
                    brightness: Brightness.light, seedColor: Colors.red),
                textTheme: GoogleFonts.montserratTextTheme(
                    Theme.of(context).textTheme)
                    .apply(bodyColor: Colors.black),
                primaryTextTheme: GoogleFonts.montserratTextTheme(
                    Theme.of(context).textTheme)
                    .apply(bodyColor: Colors.black),
              ),
              home:Profile(),
            );
          }),
    );  }



}


