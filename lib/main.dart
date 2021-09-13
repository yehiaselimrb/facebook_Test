import'package:flutter/material.dart';
import 'package:untitled/screens/mobile_screen.dart';
import 'package:untitled/screens/web_screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //scaffoldBackgroundColor: Colors.grey,
        iconTheme: IconThemeData(color: Colors.black),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        textTheme: TextTheme(
            bodyText2: TextStyle(color: Colors.grey[400],fontSize: 16),
            bodyText1: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
          headline5: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 30),
         // button: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 30),
          headline6: TextStyle(color: Colors.black, fontSize: 16)
        ),
      ),
      home: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){
        print(constraints.minWidth.toInt());
        print(constraints.minHeight.toInt());
        if(constraints.minWidth.toInt() <= 920
        //    || constraints.minHeight.toInt() <= 720
        )
          return MobileScreen();
        return WebScreen();
    }
    )
    );

  }
}
