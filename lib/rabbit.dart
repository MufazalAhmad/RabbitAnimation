import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Rabbit extends CustomPainter {
  Rabbit({this.colorWhite, this.revers});

  bool revers = false;
  final Color colorWhite;
  Color _color = Colors.white;
  Color _earColor = Color(0xffE5C5A2);
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    var x = size.width;
    var y = size.height;
    print("1");
    if (revers) {
      print("2");
      _color =Color(0xffE5C5A2);
      _earColor=Color(0xffE5C5A2);          //Color(0xffE5C5A2);
      fillBody(canvas, size,Colors.white);

    } else {
      print("3");
      _color =Colors.white;
      _earColor=Color(0xffE5C5A2);
      fillBody2(canvas, size,Colors.white);
    }

  }

  fillBody(Canvas canvas, Size size,Color color) {
    var x = size.width;
    var y = size.height;

    Paint pathPaint = new Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.5
      ..strokeJoin = StrokeJoin.bevel;

    Paint pathPaint2 = new Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = 1
      ..strokeJoin = StrokeJoin.bevel;

    wood(canvas, size);

    Path path = Path();

    /// Left Ear
    path.moveTo(x * 0.19, y * .18);
    path.quadraticBezierTo(x * 0.27, y * 0.18, x * 0.343, y * 0.23);
    path.lineTo(x * 0.42, y * .298);
    path.quadraticBezierTo(x * 0.425, y * .29, x * 0.469, y * 0.283);
    path.quadraticBezierTo(x * 0.425, y * .29, x * 0.469, y * 0.283);

    ///  Right ear
    path.quadraticBezierTo(x * 0.459, y * .22, x * 0.55, y * 0.127);
    path.quadraticBezierTo(x * 0.578, y * 0.1, x * 0.586, y * 0.129);
    path.quadraticBezierTo(x * 0.585, y * 0.15, x * 0.584, y * 0.16);
    path.quadraticBezierTo(x * 0.583, y * 0.16, x * 0.58, y * 0.19);
    path.quadraticBezierTo(x * 0.587, y * 0.22, x * 0.57, y * 0.295);

    ///   Right face start
    path.quadraticBezierTo(x * 0.67, y * 0.34, x * 0.67, y * 0.365);
    path.quadraticBezierTo(x * 0.67, y * 0.355, x * 0.75, y * 0.443);
    path.quadraticBezierTo(x * 0.774, y * 0.45, x * 0.772, y * 0.47);
    path.quadraticBezierTo(x * 0.785, y * 0.535, x * 0.7, y * 0.555);
    path.lineTo(x * 0.67, y * 0.563);
    path.quadraticBezierTo(x * 0.694, y * 0.564, x * 0.696, y * 0.59);
    path.lineTo(x * 0.696, y * 0.675);
    path.lineTo(x * 0.634, y * 0.694);
    path.lineTo(x * 0.634, y * 0.71);
    path.quadraticBezierTo(x * 0.634, y * 0.71, x * 0.634, y * 0.71);
    path.quadraticBezierTo(x * 0.639, y * 0.748, x * 0.621, y * 0.75);
    path.quadraticBezierTo(x * 0.639, y * 0.748, x * 0.593, y * 0.767);
    path.quadraticBezierTo(x * 0.61, y * 0.78, x * 0.523, y * 0.79);
    path.quadraticBezierTo(x * 0.61, y * 0.78, x * 0.523, y * 0.79);

    ///  Left feet
    path.quadraticBezierTo(x * 0.535, y * 0.81, x * 0.476, y * 0.81);
    path.quadraticBezierTo(x * 0.45, y * 0.83, x * 0.365, y * 0.78);
    path.lineTo(x * 0.19, y * 0.837);
    path.quadraticBezierTo(x * 0.17, y * 0.8, x * 0.18, y * 0.73);

    path.quadraticBezierTo(x * 0.13, y * 0.64, x * 0.248, y * 0.51);
    path.lineTo(x * 0.285, y * 0.485);
    path.quadraticBezierTo(x * 0.28, y * 0.46, x * 0.305, y * 0.43);
    path.quadraticBezierTo(x * 0.33, y * 0.415, x * 0.31, y * 0.392);
    path.quadraticBezierTo(x * 0.28, y * 0.362, x * 0.25, y * 0.354);
    path.quadraticBezierTo(x * 0.19, y * 0.32, x * 0.175, y * 0.22);
    path.quadraticBezierTo(x * 0.17, y * 0.19, x * 0.19, y * .18);

    canvas.drawPath(path, pathPaint2);
    outerLinePath(canvas, size);
    innerEar(canvas, size);
    eye(canvas, size);
    canvas.drawCircle(Offset(x * 0.509, y * 0.433), 9.8, pathPaint);
  }

  eye(Canvas canvas, Size size) {
    var x = size.width;
    var y = size.height;

    Paint pathPaint = new Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.5
      ..strokeJoin = StrokeJoin.bevel;
    Paint pathPaint2 = new Paint()
      ..color = Color(0xff886d62)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5
      ..strokeJoin = StrokeJoin.bevel;
    Paint nosePaint = new Paint()
      ..color = _earColor
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(x * 0.477, y * 0.426);
    path.quadraticBezierTo(x * 0.535, y * 0.395, x * 0.538, y * 0.444);
    path.quadraticBezierTo(x * 0.484, y * 0.469, x * 0.477, y * 0.426);
    path.close();
    canvas.drawPath(path, pathPaint2);

    Path eyeBrow = Path();
    eyeBrow.moveTo(x * 0.42, y * 0.42);
    eyeBrow.quadraticBezierTo(x * 0.455, y * 0.414, x * 0.49, y * 0.407);
    eyeBrow.quadraticBezierTo(x * 0.55, y * 0.399, x * 0.555, y * 0.446);
    eyeBrow.quadraticBezierTo(x * 0.573, y * 0.453, x * 0.55, y * 0.458);
    eyeBrow.quadraticBezierTo(x * 0.54, y * 0.457, x * 0.51, y * 0.462);
    eyeBrow.quadraticBezierTo(x * 0.478, y * 0.46, x * 0.42, y * 0.42);
    canvas.drawPath(eyeBrow, pathPaint);

    //  Path path2 = Path();
    //  path2.moveTo( x * 0.48, y * 0.426);
    ///      Nose
    Path pathNose = Path();
    pathNose.moveTo(x * 0.682, y * 0.49);
    pathNose.quadraticBezierTo(x * 0.73, y * 0.515, x * 0.735, y * 0.473);
    canvas.drawPath(pathNose, nosePaint);
  }

  innerEar(Canvas canvas, Size size) {
    var x = size.width;
    var y = size.height;

    Paint pathPaint = new Paint()
      ..color = _earColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1
      ..strokeJoin = StrokeJoin.bevel;
    Path path = Path();
    path.moveTo(x * 0.27, y * 0.35);
    path.quadraticBezierTo(x * 0.21, y * 0.32, x * 0.185, y * 0.22);
    path.quadraticBezierTo(x * 0.18, y * 0.19, x * 0.21, y * .19);
    path.quadraticBezierTo(x * 0.27, y * 0.195, x * 0.343, y * 0.25);
    path.quadraticBezierTo(x * 0.37, y * 0.28, x * 0.33, y * 0.37);
    path.quadraticBezierTo(x * 0.33, y * 0.38, x * 0.27, y * 0.35);
    canvas.drawPath(path, pathPaint);
  }

  outerLinePath(Canvas canvas, Size size) {
    var x = size.width;
    var y = size.height;

    Paint pathPaint = new Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1
      ..strokeJoin = StrokeJoin.bevel;
    Path path = Path();

    /// Left Ear
    path.moveTo(x * 0.19, y * .18);
    path.quadraticBezierTo(x * 0.27, y * 0.18, x * 0.343, y * .23);
    path.lineTo(x * 0.42, y * .298);
    path.quadraticBezierTo(x * 0.425, y * .29, x * 0.469, y * .283);
    path.quadraticBezierTo(x * 0.425, y * .29, x * 0.469, y * .283);

    ///  Right ear
    path.quadraticBezierTo(x * 0.459, y * .22, x * 0.55, y * .127);
    path.quadraticBezierTo(x * 0.578, y * 0.1, x * 0.586, y * .129);
    path.quadraticBezierTo(x * 0.585, y * 0.15, x * 0.584, y * .16);
    path.quadraticBezierTo(x * 0.583, y * 0.16, x * 0.58, y * .19);
    path.quadraticBezierTo(x * 0.587, y * 0.22, x * 0.57, y * .295);

    ///
    path.moveTo(x * 0.582, y * .17);
    path.quadraticBezierTo(x * 0.533, y * 0.25, x * 0.54, y * 0.288);

    ///   Right face start
    path.moveTo(x * 0.57, y * .295);
    path.quadraticBezierTo(x * 0.67, y * 0.34, x * 0.67, y * 0.365);
    path.quadraticBezierTo(x * 0.67, y * 0.355, x * 0.75, y * 0.443);
    path.quadraticBezierTo(x * 0.774, y * 0.45, x * 0.772, y * 0.47);
    path.quadraticBezierTo(x * 0.785, y * 0.535, x * 0.7, y * 0.555);
    path.lineTo(x * 0.67, y * 0.563);
    path.quadraticBezierTo(x * 0.694, y * 0.564, x * 0.696, y * 0.59);
    path.lineTo(x * 0.696, y * 0.675);
    path.lineTo(x * 0.634, y * 0.694);
    path.lineTo(x * 0.634, y * 0.71);
    path.quadraticBezierTo(x * 0.634, y * 0.71, x * 0.634, y * 0.71);
    path.quadraticBezierTo(x * 0.639, y * 0.748, x * 0.621, y * 0.75);
    path.quadraticBezierTo(x * 0.639, y * 0.748, x * 0.593, y * 0.767);
    path.quadraticBezierTo(x * 0.61, y * 0.78, x * 0.523, y * 0.79);
    path.quadraticBezierTo(x * 0.61, y * 0.78, x * 0.523, y * 0.79);

    ///  Left feet
    path.quadraticBezierTo(x * 0.535, y * 0.81, x * 0.476, y * 0.81);
    path.quadraticBezierTo(x * 0.45, y * 0.83, x * 0.365, y * 0.78);
    path.lineTo(x * 0.19, y * 0.837);
    path.quadraticBezierTo(x * 0.17, y * 0.8, x * 0.18, y * 0.73);
//    path.quadraticBezierTo(x * 0.155, y * 0.67, x * 0.193, y * 0.6);
    path.quadraticBezierTo(x * 0.13, y * 0.64, x * 0.248, y * 0.51);
    path.lineTo(x * 0.285, y * 0.485);
    path.quadraticBezierTo(x * 0.28, y * 0.46, x * 0.305, y * 0.43);
    path.quadraticBezierTo(x * 0.33, y * 0.415, x * 0.31, y * 0.392);
    path.quadraticBezierTo(x * 0.28, y * 0.362, x * 0.25, y * 0.354);
    path.quadraticBezierTo(x * 0.19, y * 0.32, x * 0.175, y * 0.22);
    path.quadraticBezierTo(x * 0.17, y * 0.19, x * 0.19, y * .18);

    ///      Nose
    path.moveTo(x * 0.685, y * 0.493);
    path.quadraticBezierTo(x * 0.73, y * 0.515, x * 0.735, y * 0.473);
    path.moveTo(x * 0.71, y * 0.5);
    path.quadraticBezierTo(x * 0.72, y * 0.55, x * 0.74, y * 0.54);
    path.moveTo(x * 0.71, y * 0.5);
    path.quadraticBezierTo(x * 0.738, y * 0.57, x * 0.57, y * 0.577);
    path.quadraticBezierTo(x * 0.39, y * 0.619, x * 0.285, y * 0.485);

    path.moveTo(x * 0.71, y * 0.5);
    path.quadraticBezierTo(x * 0.738, y * 0.57, x * 0.6, y * 0.568);
    path.quadraticBezierTo(x * 0.57, y * 0.56, x * 0.597, y * 0.5);

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

    path.quadraticBezierTo(x * 0.33, y * 0.729, x * 0.315, y * 0.8);

    /// right finger
    path.moveTo(x * 0.621, y * 0.75);
    path.lineTo(x * 0.619, y * 0.735);

    path.moveTo(x * 0.593, y * 0.767);
    path.quadraticBezierTo(x * 0.585, y * 0.76, x * 0.587, y * 0.745);
    path.moveTo(x * 0.535, y * 0.77);
    path.quadraticBezierTo(x * 0.564, y * 0.77, x * 0.54, y * 0.738);

    canvas.drawPath(path, pathPaint);

    ///  mustaches
    ///
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Path path1 = Path();
    path1.moveTo(x * 0.67, y * 0.365);
    path1.quadraticBezierTo(x * 0.7, y * 0.329, x * 0.76, y * 0.33);
    path1.moveTo(x * 0.66, y * 0.35);
    path1.quadraticBezierTo(x * 0.68, y * 0.279, x * 0.759, y * 0.22);
    path1.moveTo(x * 0.645, y * 0.337);
    path1.quadraticBezierTo(x * 0.65, y * 0.279, x * 0.68, y * 0.2);
    path1.moveTo(x * 0.665, y * 0.355);
    path1.quadraticBezierTo(x * 0.7, y * 0.29, x * 0.76, y * 0.278);

    //  path1.moveTo(x * 0.75, y * 0.449);
    //  path1.quadraticBezierTo(x * 0.8, y * 0.418, x * 0.93, y * 0.391);
    path1.moveTo(x * 0.75, y * 0.48);
    path1.quadraticBezierTo(x * 0.8, y * 0.45, x * 0.93, y * 0.47);
    path1.moveTo(x * 0.75, y * 0.49);
    path1.quadraticBezierTo(x * 0.8, y * 0.45, x * 0.94, y * 0.487);
    path1.moveTo(x * 0.75, y * 0.5);
    path1.quadraticBezierTo(x * 0.8, y * 0.48, x * 0.98, y * 0.53);
    path1.moveTo(x * 0.75, y * 0.51);
    path1.quadraticBezierTo(x * 0.8, y * 0.48, x * 0.99, y * 0.55);
    path1.moveTo(x * 0.74, y * 0.52);
    path1.quadraticBezierTo(x * 0.8, y * 0.5, x * 0.95, y * 0.59);
    path1.moveTo(x * 0.74, y * 0.52);
    path1.quadraticBezierTo(x * 0.8, y * 0.5, x * 0.92, y * 0.61);

    canvas.drawPath(path1, paint);

    Paint paint2 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.5;
    Path path2 = Path();

    path2.moveTo(x * 0.65, y * 0.51);
    path2.quadraticBezierTo(x * 0.54, y * 0.488, x * 0.46, y * 0.54);
    path2.moveTo(x * 0.65, y * 0.53);
    path2.quadraticBezierTo(x * 0.54, y * 0.52, x * 0.44, y * 0.58);
    path2.moveTo(x * 0.65, y * 0.55);
    path2.quadraticBezierTo(x * 0.54, y * 0.55, x * 0.44, y * 0.65);

    canvas.drawPath(path2, paint2);
  }

  wood(Canvas canvas, Size size) {
    var x = size.width;
    var y = size.height;

    Paint pathPaint = new Paint()
      ..color = Color(0xff98633B)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.5
      ..strokeJoin = StrokeJoin.bevel;

    Paint paint = new Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 9
      ..strokeJoin = StrokeJoin.bevel;
    Paint pathPaint2 = new Paint()
      ..color = Color(0xffB5651D)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.5
      ..strokeJoin = StrokeJoin.bevel;

    Path path = Path();
    path.moveTo(x * 0, y * 0.894);
    path.lineTo(x, y * 0.575);
    path.lineTo(x, y * 0.8);
    path.lineTo(x * 0.31, y);
    path.lineTo(x * 0, y);
    path.close();
    canvas.drawPath(path, pathPaint);

    Path line = Path();
    line.moveTo(x, y * 0.8);
    line.lineTo(x * 0.31, y);
    line.close();
    canvas.drawPath(line, paint);

    Path path2 = Path();
    path2.moveTo(x, y * 0.8);
    path2.lineTo(x * 0.31, y);
    path2.lineTo(x * 0.5, y);
    path2.lineTo(x, y * 0.85);
    path2.close();
    canvas.drawPath(path2, pathPaint2);
  }
                                                 ///        Rabbit 2           \\\\

  fillBody2(Canvas canvas, Size size,Color color) {
    print("5");
    var x = size.width;
    var y = size.height;

    Paint pathPaint = new Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.5
      ..strokeJoin = StrokeJoin.bevel;

    Paint pathPaint2 = new Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = 1
      ..strokeJoin = StrokeJoin.bevel;

    wood(canvas, size);

    Path path = Path();

    /// Left Ear
    path.moveTo(x * 0.1, y * .28);
    path.quadraticBezierTo(x * 0.27, y * 0.235, x * 0.343, y * 0.26);
    path.lineTo(x * 0.42, y * .298);
    path.quadraticBezierTo(x * 0.425, y * .29, x * 0.469, y * 0.283);
    path.quadraticBezierTo(x * 0.425, y * .29, x * 0.469, y * 0.283);

    ///  Right ear
    path.quadraticBezierTo(x * 0.459, y * .22, x * 0.63, y * 0.14);
    path.quadraticBezierTo(x * 0.695, y * 0.11, x * 0.686, y * 0.15);
   // path.quadraticBezierTo(x * 0.67, y * 0.16, x * 0.67, y * 0.16);
   // path.quadraticBezierTo(x * 0.66, y * 0.17, x * 0.64, y * 0.19);
    path.quadraticBezierTo(x * 0.58, y * 0.26, x * 0.57, y * 0.295);

    ///   Right face start
    path.quadraticBezierTo(x * 0.67, y * 0.34, x * 0.67, y * 0.365);
    path.quadraticBezierTo(x * 0.67, y * 0.355, x * 0.75, y * 0.443);
    path.quadraticBezierTo(x * 0.774, y * 0.45, x * 0.772, y * 0.47);
    path.quadraticBezierTo(x * 0.785, y * 0.535, x * 0.7, y * 0.555);
    path.lineTo(x * 0.67, y * 0.563);
    path.quadraticBezierTo(x * 0.694, y * 0.564, x * 0.696, y * 0.59);
    path.lineTo(x * 0.696, y * 0.675);
    path.lineTo(x * 0.634, y * 0.694);
    path.lineTo(x * 0.634, y * 0.71);
    path.quadraticBezierTo(x * 0.634, y * 0.71, x * 0.634, y * 0.71);
    path.quadraticBezierTo(x * 0.639, y * 0.748, x * 0.621, y * 0.75);
    path.quadraticBezierTo(x * 0.639, y * 0.748, x * 0.593, y * 0.767);
    path.quadraticBezierTo(x * 0.61, y * 0.78, x * 0.523, y * 0.79);
    path.quadraticBezierTo(x * 0.61, y * 0.78, x * 0.523, y * 0.79);

    ///  Left feet
    path.quadraticBezierTo(x * 0.535, y * 0.81, x * 0.476, y * 0.81);
    path.quadraticBezierTo(x * 0.45, y * 0.83, x * 0.365, y * 0.78);
    path.lineTo(x * 0.19, y * 0.837);
    path.quadraticBezierTo(x * 0.17, y * 0.8, x * 0.18, y * 0.73);

    path.quadraticBezierTo(x * 0.13, y * 0.64, x * 0.248, y * 0.51);
    path.lineTo(x * 0.285, y * 0.485);
    path.quadraticBezierTo(x * 0.28, y * 0.46, x * 0.305, y * 0.43);
    path.quadraticBezierTo(x * 0.33, y * 0.415, x * 0.3, y * 0.38);
    path.quadraticBezierTo(x * 0.28, y * 0.37, x * 0.25, y * 0.366);
    path.quadraticBezierTo(x * 0.2, y * 0.36, x * 0.175, y * 0.35);
    path.quadraticBezierTo(x * 0.05, y * 0.3, x * 0.1, y * .28);



    canvas.drawPath(path, pathPaint2);
    outerLinePath2(canvas, size);
    innerEar2(canvas, size);
    eye2(canvas, size);
    canvas.drawCircle(Offset(x * 0.509, y * 0.433), 9.8, pathPaint);
  }

  eye2(Canvas canvas, Size size) {
    var x = size.width;
    var y = size.height;

    Paint pathPaint = new Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.5
      ..strokeJoin = StrokeJoin.bevel;
    Paint pathPaint2 = new Paint()
      ..color = Color(0xff886d62)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5
      ..strokeJoin = StrokeJoin.bevel;
    Paint nosePaint = new Paint()
      ..color = _earColor
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(x * 0.477, y * 0.426);
    path.quadraticBezierTo(x * 0.535, y * 0.395, x * 0.538, y * 0.444);
    path.quadraticBezierTo(x * 0.484, y * 0.469, x * 0.477, y * 0.426);
    path.close();
    canvas.drawPath(path, pathPaint2);

    Path eyeBrow = Path();
    eyeBrow.moveTo(x * 0.42, y * 0.42);
    eyeBrow.quadraticBezierTo(x * 0.455, y * 0.414, x * 0.49, y * 0.407);
    eyeBrow.quadraticBezierTo(x * 0.55, y * 0.399, x * 0.555, y * 0.446);
    eyeBrow.quadraticBezierTo(x * 0.573, y * 0.453, x * 0.55, y * 0.458);
    eyeBrow.quadraticBezierTo(x * 0.54, y * 0.457, x * 0.51, y * 0.462);
    eyeBrow.quadraticBezierTo(x * 0.478, y * 0.46, x * 0.42, y * 0.42);
    canvas.drawPath(eyeBrow, pathPaint);

    //  Path path2 = Path();
    //  path2.moveTo( x * 0.48, y * 0.426);
    ///      Nose
    Path pathNose = Path();
    pathNose.moveTo(x * 0.682, y * 0.49);
    pathNose.quadraticBezierTo(x * 0.73, y * 0.515, x * 0.735, y * 0.473);
    canvas.drawPath(pathNose, nosePaint);
  }

  innerEar2(Canvas canvas, Size size) {
    var x = size.width;
    var y = size.height;

    Paint pathPaint = new Paint()
      ..color = _earColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1
      ..strokeJoin = StrokeJoin.bevel;
    Path path = Path();
    path.moveTo(x * 0.12, y * .29);
    path.quadraticBezierTo(x * 0.27, y * 0.25, x * 0.33, y * 0.28);
    path.lineTo(x * 0.37, y * .305);
    path.quadraticBezierTo(x * 0.38, y * 0.35, x * 0.3, y * 0.36);
    path.quadraticBezierTo(x * 0.28, y * 0.36, x * 0.25, y * 0.358);
    path.quadraticBezierTo(x * 0.2, y * 0.35, x * 0.175, y * 0.34);
    path.quadraticBezierTo(x * 0.08, y * 0.3, x * 0.12, y * .29);
    canvas.drawPath(path, pathPaint);
  }

  outerLinePath2(Canvas canvas, Size size) {
    var x = size.width;
    var y = size.height;

    Paint pathPaint = new Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1
      ..strokeJoin = StrokeJoin.bevel;
    Path path = Path();

    /// Left Ear
    path.moveTo(x * 0.1, y * .28);
    path.quadraticBezierTo(x * 0.27, y * 0.235, x * 0.343, y * 0.26);
    path.lineTo(x * 0.42, y * .298);
    path.quadraticBezierTo(x * 0.425, y * .29, x * 0.469, y * 0.283);
    path.quadraticBezierTo(x * 0.425, y * .29, x * 0.469, y * 0.283);

    ///  Right ear
    path.quadraticBezierTo(x * 0.459, y * .22, x * 0.63, y * 0.14);
    path.quadraticBezierTo(x * 0.695, y * 0.11, x * 0.686, y * 0.15);
    // path.quadraticBezierTo(x * 0.67, y * 0.16, x * 0.67, y * 0.16);
    // path.quadraticBezierTo(x * 0.66, y * 0.17, x * 0.64, y * 0.19);
    path.quadraticBezierTo(x * 0.58, y * 0.26, x * 0.57, y * 0.295);

    ///   Right face start
    path.quadraticBezierTo(x * 0.67, y * 0.34, x * 0.67, y * 0.365);
    path.quadraticBezierTo(x * 0.67, y * 0.355, x * 0.75, y * 0.443);
    path.quadraticBezierTo(x * 0.774, y * 0.45, x * 0.772, y * 0.47);
    path.quadraticBezierTo(x * 0.785, y * 0.535, x * 0.7, y * 0.555);
    path.lineTo(x * 0.67, y * 0.563);
    path.quadraticBezierTo(x * 0.694, y * 0.564, x * 0.696, y * 0.59);
    path.lineTo(x * 0.696, y * 0.675);
    path.lineTo(x * 0.634, y * 0.694);
    path.lineTo(x * 0.634, y * 0.71);
    path.quadraticBezierTo(x * 0.634, y * 0.71, x * 0.634, y * 0.71);
    path.quadraticBezierTo(x * 0.639, y * 0.748, x * 0.621, y * 0.75);
    path.quadraticBezierTo(x * 0.639, y * 0.748, x * 0.593, y * 0.767);
    path.quadraticBezierTo(x * 0.61, y * 0.78, x * 0.523, y * 0.79);
    path.quadraticBezierTo(x * 0.61, y * 0.78, x * 0.523, y * 0.79);

    ///  Left feet
    path.quadraticBezierTo(x * 0.535, y * 0.81, x * 0.476, y * 0.81);
    path.quadraticBezierTo(x * 0.45, y * 0.83, x * 0.365, y * 0.78);
    path.lineTo(x * 0.19, y * 0.837);
    path.quadraticBezierTo(x * 0.17, y * 0.8, x * 0.18, y * 0.73);

    path.quadraticBezierTo(x * 0.13, y * 0.64, x * 0.248, y * 0.51);
    path.lineTo(x * 0.285, y * 0.485);
    path.quadraticBezierTo(x * 0.28, y * 0.46, x * 0.305, y * 0.43);
    path.quadraticBezierTo(x * 0.33, y * 0.415, x * 0.3, y * 0.38);
    path.quadraticBezierTo(x * 0.28, y * 0.37, x * 0.25, y * 0.366);
    path.quadraticBezierTo(x * 0.2, y * 0.36, x * 0.175, y * 0.35);
    path.quadraticBezierTo(x * 0.05, y * 0.3, x * 0.1, y * .28);

    ///      Nose
    path.moveTo(x * 0.685, y * 0.493);
    path.quadraticBezierTo(x * 0.73, y * 0.515, x * 0.735, y * 0.473);
    path.moveTo(x * 0.71, y * 0.5);
    path.quadraticBezierTo(x * 0.72, y * 0.55, x * 0.74, y * 0.54);
    path.moveTo(x * 0.71, y * 0.5);
    path.quadraticBezierTo(x * 0.738, y * 0.57, x * 0.57, y * 0.577);
    path.quadraticBezierTo(x * 0.39, y * 0.619, x * 0.285, y * 0.485);

    path.moveTo(x * 0.71, y * 0.5);
    path.quadraticBezierTo(x * 0.738, y * 0.57, x * 0.6, y * 0.568);
    path.quadraticBezierTo(x * 0.57, y * 0.56, x * 0.597, y * 0.5);

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

    path.quadraticBezierTo(x * 0.33, y * 0.729, x * 0.315, y * 0.8);

    /// right finger
    path.moveTo(x * 0.621, y * 0.75);
    path.lineTo(x * 0.619, y * 0.735);

    path.moveTo(x * 0.593, y * 0.767);
    path.quadraticBezierTo(x * 0.585, y * 0.76, x * 0.587, y * 0.745);
    path.moveTo(x * 0.535, y * 0.77);
    path.quadraticBezierTo(x * 0.564, y * 0.77, x * 0.54, y * 0.738);

    canvas.drawPath(path, pathPaint);

    ///  mustaches
    ///
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Path path1 = Path();
    path1.moveTo(x * 0.67, y * 0.365);
    path1.quadraticBezierTo(x * 0.7, y * 0.329, x * 0.76, y * 0.33);
    path1.moveTo(x * 0.66, y * 0.35);
    path1.quadraticBezierTo(x * 0.68, y * 0.279, x * 0.759, y * 0.22);
    path1.moveTo(x * 0.645, y * 0.337);
    path1.quadraticBezierTo(x * 0.65, y * 0.279, x * 0.68, y * 0.2);
    path1.moveTo(x * 0.665, y * 0.355);
    path1.quadraticBezierTo(x * 0.7, y * 0.29, x * 0.76, y * 0.278);

    //  path1.moveTo(x * 0.75, y * 0.449);
    //  path1.quadraticBezierTo(x * 0.8, y * 0.418, x * 0.93, y * 0.391);
    path1.moveTo(x * 0.75, y * 0.48);
    path1.quadraticBezierTo(x * 0.8, y * 0.45, x * 0.93, y * 0.47);
    path1.moveTo(x * 0.75, y * 0.49);
    path1.quadraticBezierTo(x * 0.8, y * 0.45, x * 0.94, y * 0.487);
    path1.moveTo(x * 0.75, y * 0.5);
    path1.quadraticBezierTo(x * 0.8, y * 0.48, x * 0.98, y * 0.53);
    path1.moveTo(x * 0.75, y * 0.51);
    path1.quadraticBezierTo(x * 0.8, y * 0.48, x * 0.99, y * 0.55);
    path1.moveTo(x * 0.74, y * 0.52);
    path1.quadraticBezierTo(x * 0.8, y * 0.5, x * 0.95, y * 0.59);
    path1.moveTo(x * 0.74, y * 0.52);
    path1.quadraticBezierTo(x * 0.8, y * 0.5, x * 0.92, y * 0.61);

    canvas.drawPath(path1, paint);

    Paint paint2 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.5;
    Path path2 = Path();

    path2.moveTo(x * 0.65, y * 0.51);
    path2.quadraticBezierTo(x * 0.54, y * 0.488, x * 0.46, y * 0.54);
    path2.moveTo(x * 0.65, y * 0.53);
    path2.quadraticBezierTo(x * 0.54, y * 0.52, x * 0.44, y * 0.58);
    path2.moveTo(x * 0.65, y * 0.55);
    path2.quadraticBezierTo(x * 0.54, y * 0.55, x * 0.44, y * 0.65);

    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) =>
      (oldDelegate as Rabbit).revers != revers;
// TODO: implement shouldRepaint

}
