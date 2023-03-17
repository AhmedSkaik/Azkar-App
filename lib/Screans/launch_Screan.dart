import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LaunchScrean extends StatefulWidget {
  const LaunchScrean({Key? key}) : super(key: key);

  @override
  State<LaunchScrean> createState() => _LaunchScreanState();
}

class _LaunchScreanState extends State<LaunchScrean> {
  @override
  void initState() {
super.initState();
Future.delayed(Duration(seconds: 3) ,() {
  Navigator.pushReplacementNamed(context, "/home_Screan");
});
    
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: [
            Colors.teal.shade800,
            Colors.teal.shade200,
          ])

        ),
        child: Text('AZKAR APP' ,style: GoogleFonts.cairo(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          letterSpacing: 2

        ),),
      ),
    );
  }

  
}
