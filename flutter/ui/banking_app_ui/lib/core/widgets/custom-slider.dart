import 'dart:ui' as UI;

import 'package:banking_app_ui/core/utils/theme/theme.dart';
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
              trackHeight: 18.0,
              trackShape: CustomTrackShape(
                gradient: LinearGradient(
                  colors: [AppTheme().secondaryUI!, AppTheme().primaryUI!],
                ),
              ),
              overlayShape: SliderComponentShape.noOverlay,
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
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          AppTheme().secondaryText!,
          AppTheme().primaryUI!,
        ],
      ).createShader(Rect.fromCircle(
        center: center,
        radius: containerHeight / 2,
      ))
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

class CustomTrackShape extends RoundedRectSliderTrackShape {
  CustomTrackShape({
    required this.gradient,
  });

  final LinearGradient gradient;

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required TextDirection textDirection,
    required Offset thumbCenter,
    bool isDiscrete = false,
    bool isEnabled = false,
    double additionalActiveTrackHeight = 2,
  }) {
    // If the slider [SliderThemeData.trackHeight] is less than or equal to 0,
    // then it makes no difference whether the track is painted or not,
    // therefore the painting can be a no-op.
    if (sliderTheme.trackHeight! <= 0) {
      return;
    }

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );

    // Assign the track segment paints, which are left: active, right: inactive,
    // but reversed for right to left text.

    final Paint activePaint = Paint()
      ..shader = gradient.createShader(trackRect);
    // ..color = activeTrackColorTween.evaluate(enableAnimation)!;

    final Paint inactivePaint = Paint()..color = AppTheme().primaryBackground!;

    final Paint leftTrackPaint;
    final Paint rightTrackPaint;

    switch (textDirection) {
      case TextDirection.ltr:
        leftTrackPaint = activePaint;
        rightTrackPaint = inactivePaint;
        break;
      case TextDirection.rtl:
        leftTrackPaint = inactivePaint;
        rightTrackPaint = activePaint;
        break;
    }

    final Rect leftTrackSegment = Rect.fromLTRB(
      trackRect.left,
      trackRect.top,
      thumbCenter.dx,
      trackRect.bottom,
    );

    final lRect = RRect.fromRectAndRadius(
      leftTrackSegment,
      Radius.circular(10.0),
    );

    if (!leftTrackSegment.isEmpty)
      context.canvas.drawRRect(lRect, leftTrackPaint);

    final Rect rightTrackSegment = Rect.fromLTRB(
      thumbCenter.dx,
      trackRect.top,
      trackRect.right,
      trackRect.bottom,
    );

    final rRect = RRect.fromRectAndRadius(
      rightTrackSegment,
      Radius.circular(10.0),
    );

    if (!rightTrackSegment.isEmpty)
      context.canvas.drawRRect(rRect, rightTrackPaint);
  }
}
