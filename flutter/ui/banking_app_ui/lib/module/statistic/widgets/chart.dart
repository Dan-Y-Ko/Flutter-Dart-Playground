import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 230.0,
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 45.0),
                child: Divider(
                  color: Color.fromRGBO(96, 89, 189, 0.1),
                  thickness: 2.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 45.0),
                child: Divider(
                  color: Color.fromRGBO(96, 89, 189, 0.1),
                  thickness: 2.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 45.0),
                child: Divider(
                  color: Color.fromRGBO(96, 89, 189, 0.1),
                  thickness: 2.0,
                ),
              ),
              Divider(
                color: Color.fromRGBO(96, 89, 189, 0.1),
                thickness: 2.0,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              children: [
                ChartBars(
                  height: 172.0,
                  padding: const EdgeInsets.only(right: 48.0),
                ),
                ChartBars(
                  height: 101.0,
                  padding: const EdgeInsets.only(right: 48.0),
                ),
                ChartBars(
                  height: 229.0,
                  padding: const EdgeInsets.only(right: 48.0),
                ),
                ChartBars(
                  height: 193.0,
                  padding: const EdgeInsets.only(right: 48.0),
                ),
                ChartBars(
                  height: 166.0,
                  padding: const EdgeInsets.only(right: 48.0),
                ),
                ChartBars(
                  height: 255.0,
                  padding: const EdgeInsets.only(right: 0.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChartBars extends StatelessWidget {
  const ChartBars({
    Key? key,
    required this.height,
    required this.padding,
  }) : super(key: key);

  final double height;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 14.0,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(96, 89, 189, 1.0),
                Color.fromRGBO(96, 89, 189, 0.01),
              ],
              stops: [0.0, 1.0],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
            ),
          ),
        ),
      ),
    );
  }
}
