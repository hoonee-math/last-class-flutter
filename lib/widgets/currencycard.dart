import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  //중괄호 치고 bui 치고 tab
  //widget에서 변수로 작용할 상수들을 지정해주자.
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final _blackColor = const Color(0xFF1F2123);
  final double offsetvalue; //Offset의 타입은 offset임.

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.offsetvalue,
  }); //Icon을 사용한 부분에 마우스를 올려서 변수타입을 확인한 후에 만들어주자.

  @override
  Widget build(BuildContext context) {
    //widget으로 쓸걸 붙여넣은 후에는 return 을 붙여줘야함.
    return Transform.translate(
      offset: Offset(0, offsetvalue * -10),
      child: Container(
        clipBehavior: Clip
            .hardEdge, //clipBehavvior는 어떤 아이템이 overflow가 되었을 때, 카드와 같은 container로 하여금 어떻게 동작하게끔 할건지 알려주는 장치
        decoration: BoxDecoration(
          //color: const Color.fromARGB(255, 134, 134, 134),
          //원래 위와 같았던 색상 코드를 경우에 따라 반전시키기 위한 isInverted 변수를 만들어준 후 아래와 같이 변경해줄 수도 있음
          color: isInverted ? Colors.white : _blackColor,

          borderRadius: BorderRadius.circular(40), //여기 작업후 const를 없애줘야함.
        ),
        child: Padding(
          padding: //가로 세로 여백은 여기서 설정 가능함.
              const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
          child: Row(
            //row의 main axis는 가로축임!
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                //container 안쪽에 글자들의 위치를 맞추기 위한 작업이 필요.
                //column으로 들어가서, column의 가로축이 뭐였지? CrossAxis 였지.
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: isInverted ? _blackColor : Colors.white,
                      fontSize: 52,
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
                          color: isInverted ? _blackColor : Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ), //6 428과 EUR 사이에 가로width 공백을 주는 작업
                      Text(
                        code,
                        style: TextStyle(
                          color: isInverted ? _blackColor : Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              /*const Icon(
                          Icons.euro_rounded,
                          color: Colors.white,
                          size: 98,
                        ),*/ //icon을 사용할 때 엄청 크게 만들어서 넘치도록 만들어주기위해 TransformaionWidget을 사용
              Transform.scale(
                scale: 2.5,
                child: Transform.translate(
                  //Transform.translate이걸 사용하기 위해 offset은 필수로 작성해야함.
                  offset: const Offset(-15, 8), //좌표로 얼만큼 옮겨줄지 설정해주는 작업임.
                  child: Icon(
                    //icon을 변수로 설정해주고 바꿔주면서 const를 지워줘야함. 경고가 뜨니까 쉽게 알 수 있음.
                    icon, //앞에서 변수로 바꿔준거임.
                    color: isInverted ? _blackColor : Colors.white,
                    size: 98,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ); //widget으로 만들걸 잘라내서 가져온 후에 , 콤마를 ; 세미콜론으로 바꿔주기
  }
}
