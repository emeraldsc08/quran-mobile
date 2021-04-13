import 'package:flutter/material.dart';
import 'package:quran/models/models.dart';
import 'package:quran/ui/pages/pages.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: QuranData(),
        ),
        ChangeNotifierProvider.value(
          value: QuranAyat(),
        )
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Quran Mobile',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: SplashScreen(),
        routes: {
          '/detail': (ctx) => QuranDetail(),
        },
      ),
    );
    
  }
}
