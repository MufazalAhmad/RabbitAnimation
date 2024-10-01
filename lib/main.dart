import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbit_pic/rabbit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rabbit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Rabbit'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool reverse = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var y = MediaQuery.of(context).size.height;
    var x = MediaQuery.of(context).size.width;
    Color _color = Colors.white;

    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: AnimatedContainer(
        duration: Duration(seconds: 2),
        height: y,
        width: x,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/grass5.jpg"), fit: BoxFit.fill)),
        child: CustomPaint(
          painter: Rabbit(revers: reverse),
          child: InkWell(
            onTap: () {
              setState(() {
                reverse = !reverse;
              });
            },
          ),
        ),
      ),
    );
  }
}

/*
    /// Feet Finger
    path.moveTo(x * 0.64, y * 0.694);
    path.quadraticBezierTo(x * 0.5, y * 0.625, x * 0.5, y * 0.73);

    path.moveTo(x * 0.43, y * 0.68);
    path.quadraticBezierTo(x * 0.49, y * 0.7, x * 0.5, y * 0.73);
    path.quadraticBezierTo(x * 0.523, y * 0.77, x * 0.523, y * 0.79);

    ///left finger
    path.quadraticBezierTo(x * 0.5, y * 0.792, x * 0.482, y * 0.765);

    path.moveTo(x * 0.476, y * 0.81);
    path.lineTo(x * 0.44, y * 0.78);
    path.moveTo(x * 0.5, y * 0.724);
    path.quadraticBezierTo(x * 0.38, y * 0.68, x * 0.365, y * 0.78);

    /// right finger
    path.moveTo(x * 0.621, y * 0.75);
    path.lineTo(x * 0.619, y * 0.735);

    path.moveTo(x * 0.593, y * 0.767);
    path.quadraticBezierTo(x * 0.585, y * 0.76, x * 0.587, y * 0.745);

    path.moveTo(x * 0.535, y * 0.77);
    path.quadraticBezierTo(x * 0.564, y * 0.77, x * 0.54, y * 0.738); */
