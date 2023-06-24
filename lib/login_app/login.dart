import 'package:flutter/material.dart';
import 'package:loginpage/my_button/my_button.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'login',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: _buildButton(),
    );
  }

  Widget _buildButton() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyButton(
            image: Image.asset('images/glogo.png'),
            text: const Text(
              'Login with Google',
              style: TextStyle(color: Colors.black87, fontSize: 15.0),
            ),
            color: Colors.white,
            radius: 4.0,
            onPressed: (){
              print('구글로그인1 버튼 pressed');
            },
          ),
          const SizedBox(
            height: 10.0,
          ),
          MyButton(
            image: Image.asset('images/glogo.png'),
            text: const Text(
              'Login with Google',
              style: TextStyle(color: Colors.black87, fontSize: 15.0),
            ),
            color: Colors.white,
            radius: 4.0,
            onPressed: (){
              print('구글로그인2 버튼 pressed');
            },
          ),
          const SizedBox(
            height: 10.0,
          ),
          MyButton(
            image: Image.asset('images/flogo.png'),
            text: const Text(
              'Login with facebook',
              style: TextStyle(color: Colors.white, fontSize: 15.0),
            ),
            color: Colors.blue,
            radius: 4.0,
            onPressed: (){
              print('페이스북 로그인 버튼 pressed');
            },
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
