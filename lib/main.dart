import 'package:flutter/material.dart';

import 'package:heath_care/providers/bottom_navbar_provider.dart';
import 'package:heath_care/view/pages/login_signup_page/log_in.dart';
import 'package:heath_care/view/pages/main_pages/detail_clinic.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottomNavBarProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Golos' 'Arimo' 'Poppins',
        ),
        home: Login(),
      ),
    );
  }
}
