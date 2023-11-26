//st만 치고 엔터치면 위젯을 손쉽게 만들 수 있음
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;
  //위와같이 변수를 생성하거나 우리 버튼이 이러한 프로퍼티들을 가지고 있다고 설명해주기 전에
  //항상 생성자 함수(constructiors)를 만들어줘야만 함.
  const Button(
      {super.key,
      required this.text,
      required this.bgColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(45),
      ), //boxdecoration widget을 필요로함.
      // 이렇게만 써줘도 되지만 여백을 주기위해 padding안에 삽입, child: Text('Transfer'),
      child: Padding(
        //const를 삭제하면 오류가 없어짐.
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 50,
        ),
        child: Text(
          text, //원래 'Transfer', 이게 있던 자리르 text로 바꿔줌
          style: TextStyle(
            color: textColor,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
