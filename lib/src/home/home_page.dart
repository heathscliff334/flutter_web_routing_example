import 'package:flutter/material.dart';
import 'package:routing_name/src/second/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Home Page"),
                MaterialButton(
                  color: Colors.black,
                  onPressed: () {
                    print("Go to second page!");
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => SecondPage(),
                    //         settings: const RouteSettings(name: '/seconsssd')));
                    Navigator.pushNamed(context, '/second',
                        arguments: {'id': 1});
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => SecondPage()));
                  },
                  child: const Text(
                    "Go to second page",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 5),
                MaterialButton(
                  color: Colors.black,
                  onPressed: () {
                    print("Go to third page!");

                    Navigator.pushNamed(context, '/third',
                        arguments: {'id': 1});
                  },
                  child: const Text(
                    "Go to third page",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
