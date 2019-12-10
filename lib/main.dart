import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String address = "148 Wallaby Way";

  @override
  Widget build(BuildContext context) {
    print('Rebuilding with address = $address');
    return Scaffold(
      body: Center(child: TextFormField(
        initialValue: address,

      ),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            address = "16 Bellvue Road";
          });
        },
        tooltip: 'Update Address',
        child: Icon(Icons.edit),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
