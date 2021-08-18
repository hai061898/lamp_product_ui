import 'package:flutter/material.dart';
import 'package:lamp_product/pages/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(  
        primaryColor: Colors.blue,
      ),
      home: HomeScreen(),
      
    );
  }
}