import 'package:flutter/material.dart';

import 'screens/home_page.dart';

void main() {
  runApp(MyApp());
}

// To Use HexColor

// extension ColorExtension on String {
//   toColor() {
//     var hexColor = this.replaceAll("#", "");
//     if (hexColor.length == 6) {
//       hexColor = "FF" + hexColor;
//     }
//     if (hexColor.length == 8) {
//       return Color(int.parse("0x$hexColor"));
//     }
//   }
// }

// HexColor End

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.teal,
        // primaryColor: '#22a39f'.toColor(),
      ),
      home: MyHomePage(
      title: 'Kushan Eranga'
      ),
    );
  }
}
