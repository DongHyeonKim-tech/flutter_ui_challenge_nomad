import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final int order;

  final _blackColor = const Color(0xFF1F2123);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    this.isInverted = false,
    this.order = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(
          0,
          order == 1
              ? -20
              : order == 2
                  ? -40
                  : 0),
      child: Container(
        // 영역을 벗어난 내부 요소 처리
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : _blackColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: isInverted ? _blackColor : Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isInverted ? Colors.black54 : Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: isInverted ? _blackColor : Colors.white30,
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
                    child: Icon(
                      icon,
                      color: isInverted ? _blackColor : Colors.white,
                      size: 60,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
