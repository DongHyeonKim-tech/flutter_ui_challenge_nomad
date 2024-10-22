import 'package:flutter/material.dart';
import 'package:ui_challenge/widgets/button.dart';
import 'package:ui_challenge/widgets/currency_card.dart';

void main() {
  // const 사용 이유: compiler는 모든 const 객체에 대해 동일한 메모리 부분을 할당하여 객체를 불변으로 만드므로
  // 앱을 실행할 때 한 번만 생성 -> 리소스 낭비 줄임 -> 최적화!
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
        body: SingleChildScrollView(
          child: Padding(
            // padding: const EdgeInsets.all(10), // 전체
            // padding: EdgeInsets.only(right: 20), // 한 부분
            // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20), // 수직, 수평
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
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
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    color: Colors.white30,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '\$5 194 482',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
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
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                SizedBox(
                  height: 20,
                ),
                CurrencyCard(
                  name: 'Euro',
                  code: 'EUR',
                  amount: '6 428',
                  icon: Icons.euro_rounded,
                ),
                CurrencyCard(
                    name: 'Bitcoin',
                    code: 'BTC',
                    amount: '9 785',
                    icon: Icons.currency_bitcoin,
                    isInverted: true,
                    order: 1),
                CurrencyCard(
                  name: 'Dollar',
                  code: 'USD',
                  amount: '428',
                  icon: Icons.attach_money_outlined,
                  order: 2,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
