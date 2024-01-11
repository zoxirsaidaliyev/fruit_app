import 'package:flutter/material.dart';
import 'package:fruit_app/screens/enter_page.dart';
import 'package:fruit_app/screens/home_screen.dart';
import 'package:fruit_app/screens/lets_go.dart';
import 'package:fruit_app/screens/my_basket.dart';
import 'package:fruit_app/screens/order.dart';
import 'package:fruit_app/screens/order_complate.dart';
import 'package:fruit_app/screens/register_screen.dart';
import 'package:fruit_app/screens/track_order.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EnterScreen(),
      initialRoute: '1',
      routes: {
        '1': (context) => EnterScreen(),
        '2': (context) => LetsGoScreen(),
        '3': (context) => RegisterScreen(),
        '4': (context) => HomeScreen(),
        '5': (context) => OrderScreen(),
        '6': (context) => MyBasketScreen(),
        '7': (context) => ComplateScreen(),
        '8': (context) => TrackScreen(),
      },
    );
  }
}
