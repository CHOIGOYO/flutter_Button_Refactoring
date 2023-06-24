import 'package:flutter/material.dart';

// 중복코드를 없애기 위해 버튼을 따로 만들어 놓고 생성자로 값을 줌
class MyButton extends StatelessWidget {
  final Widget image;
  final Widget text;
  final Color color;
  final double radius;
  final VoidCallback onPressed;

  MyButton({required this.image, required this.text, required this.color, required this.radius, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 50.0,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            minimumSize: Size(double.infinity, 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(radius)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            image,
            text,
            Opacity(
              opacity: 0.0,
              child: Image.asset('images/glogo.png'),
            )
          ],
        ),
      ),
    );
  }
}
