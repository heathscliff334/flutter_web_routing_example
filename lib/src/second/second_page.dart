import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var _itemMap;
  void _getParameter() {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    print("ID: ${arg['id']}");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as Map;
    print("ID: ${arg['id']}");
    // _getParameter();
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Second Page"),
                MaterialButton(
                  color: Colors.black,
                  onPressed: () {
                    print("Go to second page!");

                    Navigator.pushNamed(context, '/second/detail',
                        arguments: {'id': 1});
                  },
                  child: const Text(
                    "Go to third page",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 10),
                MaterialButton(
                  color: Colors.black,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Back",
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
