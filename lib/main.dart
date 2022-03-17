import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(36)),
    borderSide: BorderSide(
        color: const Color(0xFFeceff1), width: 2));
    const linkTextStyle = TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color(0xFF0079D0)
    );

    return MaterialApp(
      home: Scaffold(
          body: Container(
            width: double.infinity,
           child: Column(children: [
         SizedBox(height: 110,),
         SizedBox(width: 110, height: 84, child: Placeholder(),),
         SizedBox (height: 30,),
         const SizedBox(width: 260,
        child:Text('Введите логин в виде 10 цифр номера телефона',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6), ),
        ),
         ),
         SizedBox (height: 30,),
         const SizedBox(width: 264,
           child: TextField(
             decoration: InputDecoration (
               filled: true,
               fillColor: Color(0xFFeceff1),
               enabledBorder: borderStyle,
               focusedBorder: borderStyle,
               labelText: 'Телефон',
             ),
             ),
           ),
         SizedBox (height: 30,),
         const SizedBox(width: 264,
           child: TextField(
             obscureText: true,
             decoration: InputDecoration (
               filled: true,
               fillColor: Color(0xFFeceff1),
               enabledBorder: borderStyle,
               focusedBorder: borderStyle,
               labelText: 'Пароль',
             ),
           ),
         ),
          SizedBox (height: 30,),
          SizedBox(width: 154, height: 42, child:
           ElevatedButton(onPressed: () {},
             child: Text('Войти'),
               style: ElevatedButton.styleFrom(
               primary: Color(0xFF0079D0),
               shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(36.0),
              ),
             ),
            )
          ),
         SizedBox (height: 60,),
          InkWell(child: Text('Регистрация', style: linkTextStyle,
          ), onTap: () {}),
          SizedBox (height: 30,),
         InkWell(child: Text('Забыли пароль?', style: linkTextStyle,),
            onTap: () {}),
        ],),
      )
      ),
    );
  }
}

