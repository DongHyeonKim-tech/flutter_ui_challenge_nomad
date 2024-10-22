import 'package:flutter/material.dart';
import 'package:ui_challenge/widgets/button.dart';

void main() {
  // const 사용 이유: compiler는 모든 const 객체에 대해 동일한 메모리 부분을 할당하여 객체를 불변으로 만드므로
  // 앱을 실행할 때 한 번만 생성 -> 리소스 낭비 줄임 -> 최적화!
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: Center(
        //     child: Text('Hello flutter!'),
        //   ),
        //   backgroundColor: Colors.blue,
        // ),
        backgroundColor: const Color(0xFF181818),
        body: Padding(
          // padding: const EdgeInsets.all(10), // 전체
          // padding: EdgeInsets.only(right: 20), // 한 부분
          // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20), // 수직, 수평
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              const Row(
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
                            // color: Color.fromRGBO(141, 141, 141, 1),
                            fontSize: 28,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Welcome back!',
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 18,
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Total Balance',
                style: TextStyle(
                  color: Colors.white30,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '\$5 194 482',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Container는 HTML의 div와 비슷
                  Button(
                      text: 'Transfer',
                      bgColor: Color(0xFFF1B33B),
                      textColor: Colors.black),
                  Button(
                      text: 'Request',
                      bgColor: Color(0xFF1F2123),
                      textColor: Colors.white),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      )),
                  Text('View All',
                      style: TextStyle(
                        color: Colors.white30,
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                // 영역을 벗어난 내부 요소 처리
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: const Color(0xFF1F2123),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Euro',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                '6 428',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'EUR',
                                style: TextStyle(
                                  color: Colors.white30,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      // padding 등에 영향받지 않고 크기 조정
                      Transform.scale(
                          scale: 2,
                          // padding 등에 영향받지 않고 위치 조정
                          child: Transform.translate(
                            offset: const Offset(-5, 12),
                            child: const Icon(
                              Icons.euro_rounded,
                              color: Colors.white,
                              size: 60,
                            ),
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
