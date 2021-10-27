import 'package:flutter/material.dart';
import 'package:routing_name/src/home/home_page.dart';
import 'package:routing_name/src/second/detail_page.dart';
import 'package:routing_name/src/second/second_page.dart';
import 'package:routing_name/src/third/third_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  // Documentation : https://flutter.dev/docs/cookbook/navigation/navigate-with-arguments

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
        "/second": (context) => SecondPage(),
        "/third": (context) => ThirdPage(),
        "/second/detail": (context) => DetailPage()
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomePage(),
    );
  }
}
