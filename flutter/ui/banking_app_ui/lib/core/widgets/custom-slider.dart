import 'dart:developer';
import 'dart:ui' as UI;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  var sliderValue = 0.0;

  Future<UI.Image> load(String asset) async {
    ByteData data = await rootBundle.load(asset);
    UI.Codec codec = await UI.instantiateImageCodec(data.buffer.asUint8List());
    UI.FrameInfo fi = await codec.getNextFrame();
    return fi.image;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: load('assets/images/slider_thumb_icon.png'),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.data != null) {
          return SliderTheme(
            data: SliderTheme.of(context).copyWith(
              thumbShape: SliderThumbImage(snapshot.data),
            ),
            child: Slider(
              value: sliderValue,
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
          );
        }

        return Text('');
      },
    );
  }
}

class SliderThumbImage extends SliderComponentShape {
  final UI.Image image;

  SliderThumbImage(this.image);

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(0, 0);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final canvas = context.canvas;
    const containerWidth = 31.0;
    const containerHeight = 31.0;
    const imageWidth = 15.0;
    const imageHeight = 9.0;

    final rRect = RRect.fromRectAndRadius(
      Rect.fromCenter(
          center: center, width: containerWidth, height: containerHeight),
      Radius.circular(10.0),
    );

    final paintContainer = Paint()
      ..color = Colors.purple //Thumb Background Color
      ..style = PaintingStyle.fill;

    canvas.drawRRect(rRect, paintContainer);

    Offset imageOffset = Offset(
      center.dx - (imageWidth / 2),
      center.dy - (imageHeight / 2),
    );

    Paint paint = Paint()
      ..filterQuality = FilterQuality.high
      ..color = Colors.white;

    canvas.drawImage(image, imageOffset, paint);
  }
}
