import 'package:flutter/material.dart';
import 'package:toonflix/screens/detail_screen.dart';

/* #6.9강, #6.10강 (Detail Screen, Hero)
//widget으로 감싸주고 GestureDetector 위젯을 설정 다양한 동작을 감지해줌.

class Webtoon extends StatelessWidget {
  final String title, thumb, id;
  const Webtoon({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        /*여기에 바로 onTap 함수를 정의해주자. 클릭하면 프린트되게 할 수도 있음.
        print('take me homneeee');*/
        Navigator.push(
            context,
            MaterialPageRoute( //이걸 이용해서 더 많은 효과를 줄 수 있음
              builder: (context) => DetailScreen(
                title: title,
                thumb: thumb,
                id: id,
              ),
              fullscreenDialog: true,
            ));
      },
      child: Column(
        children: [
          Hero(//양쪽 화면에 같은 태그가 달려있는 이미지를 이용해서 애니매이션 효과를 줄 수 있음.
            tag: id,
            child: Container(
              width: 250,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 7,
                      offset: const Offset(10, 10),
                      color: Colors.red.withOpacity(0.5),
                    )
                  ]),
              child: Image.network(thumb),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
*/

class Webtoon extends StatelessWidget {
  final String title, thumb, id;
  const Webtoon({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        /*여기에 바로 onTap 함수를 정의해주자. 클릭하면 프린트되게 할 수도 있음.
        print('take me homneeee');*/
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(
                title: title,
                thumb: thumb,
                id: id,
              ),
              fullscreenDialog: true,
            ));
      },
      child: Column(
        children: [
          Hero(
            //양쪽 화면에 같은 태그가 달려있는 이미지를 이용해서 애니매이션 효과를 줄 수 있음.
            tag: id,
            child: Container(
              width: 250,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 7,
                      offset: const Offset(10, 10),
                      color: Colors.red.withOpacity(0.5),
                    )
                  ]),
              child: Image.network(thumb),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
