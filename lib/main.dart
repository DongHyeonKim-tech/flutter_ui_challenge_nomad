import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Center(
        //     child: Text('Hello flutter!'),
        //   ),
        //   backgroundColor: Colors.blue,
        // ),
        backgroundColor: Color(0xFF181818),
        body: Padding(
            padding: EdgeInsets.all(10), // 전체
            // padding: EdgeInsets.only(right: 20), // 한 부분
            // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20), // 수직, 수평
            child: const Column(children: [
              SizedBox(height: 80),
              Row(
                // row justify
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    // column justify
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hey, Selena',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Welcome back!',
                        style: TextStyle(color: Colors.white60, fontSize: 18),
                      )
                    ],
                  )
                ],
              )
            ])),
      ),
    );
  }
}
