import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScrean extends StatefulWidget {
  const HomeScrean({Key? key}) : super(key: key);

  @override
  State<HomeScrean> createState() => _HomeScreanState();
}

int _counter = 0;

class _HomeScreanState extends State<HomeScrean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text('مسبحة الاذكار', style: GoogleFonts.cairo()),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: AlignmentDirectional.topStart,
                end: AlignmentDirectional.bottomEnd,
                colors: [
              Colors.teal.shade800,
              Colors.teal.shade200,
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 80,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white
                ,

              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.only(top: 20, bottom: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      'استغفر الله ',
                      style: GoogleFonts.cairo(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.teal.shade50,
                    child: Text(
                      _counter.toString(),
                      style: GoogleFonts.cairo(
                          fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          ++_counter;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.only(
                                  bottomStart: Radius.circular(10)))),
                      child: const Text('تسبيح' , style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                    )),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _counter = 0;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.only(
                                  topEnd: Radius.circular(10)))),
                      child: const Text('اعادة', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),)),
                )
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: (FloatingActionButton(
        onPressed: () => setState(() {
          ++_counter;
        }),
        backgroundColor: Colors.orange.shade300,
        child: Icon(Icons.add),
      )),
    );
  }
}
