import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

import 'package:flutter_svg/svg.dart';

class Auth extends StatelessWidget {
  Auth({Key? key}) : super(key: key);

  final _googlesvg = SvgPicture.asset('assets/images/google.svg');
  final _facebooksvg = SvgPicture.asset('assets/images/facebook.svg');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: SafeArea(
          child: ListView(
            padding:
                const EdgeInsets.only(top: 10, right: 30, bottom: 10, left: 30),
            children: [
              SizedBox(
                height: 300,
                child: Image.asset('assets/images/logo.png'),
              ),
              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              _button(_googlesvg, 'Sign up with Google',
                  Color.fromARGB(34, 100, 104, 255), null),
              SizedBox(height: 20),
              _button(_facebooksvg, 'Sign up with Facebook',
                  Color.fromARGB(34, 100, 104, 255), null),
              SizedBox(height: 20),
            ],
          ),
        ));
  }
}

Widget _button(icon, String title, color, function) {
  return GestureDetector(
    onTap: function,
    child: Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 15,
            height: 15,
            child: icon,
          ),
          SizedBox(width: 15),
          Text(title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ))
        ],
      ),
    ),
  );
}
