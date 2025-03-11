import 'package:flutter/material.dart';
import 'login.dart';

void main (){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

// class Home extends StatefulWidget{
//   @override
//   _Home createState() => _Home();
// }
//
// class _Home extends State<Home>{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Netflix"),
//         backgroundColor: Colors.red,
//         foregroundColor: Colors.white,
//       ),
//     );
//   }
// }