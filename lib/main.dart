// import 'dart:js';

// import 'dart:js';

import 'package:a2wan/helpers/constants.dart';
import 'package:a2wan/providers/category_provider.dart';
import 'package:a2wan/providers/form_provider.dart';
import 'package:a2wan/screens/home_screen.dart';
// import 'package:a2wan/screens/try_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:a2wan/screens/category_screen.dart';
// import 'package:a2wan/screens/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import 'models/db_handler.dart';

// import 'models/api_handler.dart';

void main() {
  // var detId;
// ApiHandler.instance.getAllCategory.name;
// Provider
//  context.read<CategoryProvider>().getAllCategory();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MultiProvider(providers: [
      ChangeNotifierProvider(
      create: (context) => CategoryProvider(),
      ),
      ChangeNotifierProvider(
      create: (context) => FormProvider(),
      ),],
      child: MaterialApp(
          localizationsDelegates: [
            GlobalCupertinoLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: [
            Locale("ar"), // OR Locale('ar', 'AE') OR Other RTL locales
          ],
          locale: Locale("ar"),
          title: '3on عون ',
          theme: ThemeData(
            primarySwatch: Constants.color,
            accentColor: Color.fromRGBO(0, 97, 102, 1),
            fontFamily: 'Poppins',
            textTheme: TextTheme(
              headline6: TextStyle(
                color: Color.fromRGBO(0, 97, 102, 1),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            // scaffoldBackgroundColor: Color.fromRGBO(0, 97, 102, 0.8),
            // scaffoldBackgroundColor: Color.fromRGBO(0, 97, 102, 0.8),
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          // home: TryScreen()),
          home: HomeScreen()),
    )
    );
  }
}
