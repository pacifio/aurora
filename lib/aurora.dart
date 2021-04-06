import 'dart:ui' as ui;
import 'package:flutter/material.dart';

/// Generates a gradient blob with blur effect
/// Size is calculated as the width , put 300+ for better effect
class Aurora extends StatelessWidget {
  final double size;
  final List<Color> colors;
  final double blur;
  const Aurora({Key key, this.size = 300, this.colors, this.blur = 200})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(
          size,
          (size * 0.7957610789980732)
              .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: _CustomBlobShape(gradientColors: colors, blur: blur),
    );
  }
}

/// Generated by flutter shape maker
class _CustomBlobShape extends CustomPainter {
  final double blur;
  final List<Color> gradientColors;

  _CustomBlobShape({this.gradientColors, this.blur});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8564547, size.height * 0.7130751);
    path_0.cubicTo(
        size.width * 0.8866416,
        size.height * 0.8058910,
        size.width * 0.8625568,
        size.height * 0.8595642,
        size.width * 0.7842004,
        size.height * 0.8740920);
    path_0.cubicTo(
        size.width * 0.7058439,
        size.height * 0.8886199,
        size.width * 0.6419403,
        size.height * 0.9047627,
        size.width * 0.5924855,
        size.height * 0.9225182);
    path_0.cubicTo(
        size.width * 0.5430308,
        size.height * 0.9402736,
        size.width * 0.4829807,
        size.height * 0.9636804,
        size.width * 0.4123314,
        size.height * 0.9927361);
    path_0.cubicTo(
        size.width * 0.3416821,
        size.height * 1.021792,
        size.width * 0.2976879,
        size.height * 0.9911211,
        size.width * 0.2803468,
        size.height * 0.9007264);
    path_0.cubicTo(
        size.width * 0.2630058,
        size.height * 0.8103317,
        size.width * 0.2206166,
        size.height * 0.7332518,
        size.width * 0.1531792,
        size.height * 0.6694915);
    path_0.cubicTo(
        size.width * 0.08574181,
        size.height * 0.6057312,
        size.width * 0.07899807,
        size.height * 0.5371259,
        size.width * 0.1329480,
        size.height * 0.4636804);
    path_0.cubicTo(
        size.width * 0.1868979,
        size.height * 0.3902349,
        size.width * 0.2296089,
        size.height * 0.3139637,
        size.width * 0.2610790,
        size.height * 0.2348668);
    path_0.cubicTo(
        size.width * 0.2925491,
        size.height * 0.1557707,
        size.width * 0.3432890,
        size.height * 0.1311542,
        size.width * 0.4132948,
        size.height * 0.1610169);
    path_0.cubicTo(
        size.width * 0.4833006,
        size.height * 0.1908797,
        size.width * 0.5430308,
        size.height * 0.2130751,
        size.width * 0.5924855,
        size.height * 0.2276029);
    path_0.cubicTo(
        size.width * 0.6419403,
        size.height * 0.2421308,
        size.width * 0.6958902,
        size.height * 0.2643269,
        size.width * 0.7543353,
        size.height * 0.2941889);
    path_0.cubicTo(
        size.width * 0.8127803,
        size.height * 0.3240508,
        size.width * 0.8368651,
        size.height * 0.3781283,
        size.width * 0.8265896,
        size.height * 0.4564165);
    path_0.cubicTo(
        size.width * 0.8163141,
        size.height * 0.5347046,
        size.width * 0.8262678,
        size.height * 0.6202591,
        size.width * 0.8564547,
        size.height * 0.7130751);
    path_0.close();

    Paint paint = Paint()..style = PaintingStyle.fill;
    paint.shader = ui.Gradient.linear(
        Offset(size.width * 0.09698131, size.height * 0.1487400),
        Offset(size.width * 0.09698131, size.height * 1.003337),
        gradientColors ??
            [
              Color(0xffc2e59c).withOpacity(1),
              Color(0xff64b3f4).withOpacity(1)
            ],
        [0, 1]);
    paint.maskFilter = MaskFilter.blur(BlurStyle.normal, blur);
    canvas.drawPath(path_0, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
