import 'package:azkar_app/Screans/home_Screan.dart';
import 'package:azkar_app/Screans/launch_Screan.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_Screan',
      routes: {
        '/launch_Screan' : (context) => const LaunchScrean(),
        '/home_Screan' : (context) => const HomeScrean(),
      },
    );
  }
}
