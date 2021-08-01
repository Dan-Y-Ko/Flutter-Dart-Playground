import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.08),
            blurRadius: 53.0,
            offset: Offset(0, 14.0),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            left: 24.0,
            top: 21.0,
            bottom: 21.0,
          ),
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search your trip...',
          hintStyle: TextStyle(
            color: Color(0xFFD3D8E7),
            fontFamily: 'DMSans500',
            fontSize: 18.0,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(18.0),
            ),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
