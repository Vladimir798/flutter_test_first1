import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle=OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(
            color:const Color(0xFFeceff1), width:2));
    const linkTextStyle=TextStyle (
        fontSize:18,
        color: Color(0xFF0079D0)
    );
    return MaterialApp(
      home: Scaffold(
          body:Container(
            decoration: const BoxDecoration (
              image: DecorationImage (
                image: AssetImage ('assets/rozkos.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.symmetric (horizontal: 50),
            child:SingleChildScrollView(
              child: Column(children:  [
                SizedBox(height: 60,),
                const SizedBox(width: 110, height: 84, child: const Image(image: AssetImage ("assets/img.png"),),),
                SizedBox(height: 20,),
                Text('Введите логин в виде 10 цифр номера телефона',
                  style:TextStyle (fontSize:16, color: Color.fromRGBO(0, 0, 0, 0.6)),),
                SizedBox(height: 20,),
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled:  true,
                    fillColor: Color(0xffe4eff1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: 'Телефон',
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled:  true,
                    fillColor: Color(0xffe4eff1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: 'Пароль',
                  ),
                ),
                SizedBox(height: 20,),
                SizedBox(width: 154, height: 41,child:
                ElevatedButton (onPressed: () {},child: Text('Войти'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF0079D0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36.0),
                    ),
                  ),
                )
                ),
                SizedBox(height: 20,),
                InkWell(child: const Text ("Регистрация", style:linkTextStyle
                ), onTap: () {}),
                SizedBox(height: 5,),
                InkWell(child: Text ("Забыли пароль",style:linkTextStyle
                ),onTap: () {}),
              ],),
            ),
          )
      ),
    );
  }
}
