import 'package:banking_app_ui/core/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math' as math;

class ProgressIndicatorButton extends StatelessWidget {
  const ProgressIndicatorButton({
    Key? key,
    required this.progress,
    required this.startAngle,
    required this.onTap,
  }) : super(key: key);

  final double progress;
  final double startAngle;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    const BUTTON_SIZE = 80.0;
    const BUTTON_WIDTH = 2.0;

    return Stack(
      children: [
        Container(
          width: BUTTON_SIZE,
          height: BUTTON_SIZE,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppTheme().primaryUI!,
              width: BUTTON_WIDTH,
            ),
          ),
        ),
        SizedBox(
          width: BUTTON_SIZE,
          height: BUTTON_SIZE,
          child: CustomPaint(
            painter: GradientArcPainter(
              progress: 0.4,
              width: BUTTON_WIDTH,
              startAngle: startAngle,
            ),
            child: Center(
              child: Stack(
                children: [
                  Container(
                    width: BUTTON_SIZE - 20.0,
                    height: BUTTON_SIZE - 20.0,
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        colors: [
                          AppTheme().secondaryUI!,
                          AppTheme().primaryUI!,
                        ],
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                        child:
                            SvgPicture.asset('assets/images/arrow_right.svg')),
                  ),
                  Positioned.fill(
                    child: Material(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          50.0,
                        ),
                      ),
                      clipBehavior: Clip.hardEdge,
                      color: Colors.transparent,
                      child: InkWell(onTap: onTap),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class GradientArcPainter extends CustomPainter {
  const GradientArcPainter({
    required this.progress,
    required this.width,
    required this.startAngle,
  }) : super();

  final double progress;
  final double width;
  final double startAngle;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = new Rect.fromLTWH(0.0, 0.0, size.width, size.height);
    final gradient = new SweepGradient(
      startAngle: 3 * math.pi / 2,
      endAngle: 7 * math.pi / 2,
      colors: [AppTheme().secondaryUI!, AppTheme().secondaryUI!],
    );

    final paint = new Paint()
      ..shader = gradient.createShader(rect)
      ..strokeCap = StrokeCap.butt
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;
    final center = new Offset(size.width / 2, size.height / 2);
    final radius = math.min(size.width / 2, size.height / 2) - (width / 2);
    final sweepAngle = 2 * math.pi * progress;
    canvas.drawArc(new Rect.fromCircle(center: center, radius: radius),
        startAngle, sweepAngle, false, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}


// screen 1
// startAngle = -2 * math.pi / 3;
// sweepAngle = 2 * math.pi * progress;

// screen 2
// startAngle = 0.0;
// sweepAngle = 2 * math.pi * progress;

// screen 3
// startAngle = 2 * math.pi / 3;
// sweepAngle = 2 * math.pi * progress;