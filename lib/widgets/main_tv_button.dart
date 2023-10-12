import 'package:flutter/material.dart';

class MainTvButton extends StatelessWidget {
  const MainTvButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => {
          print("Main TV pressed")
        },
        child:Icon(Icons.tv)
    );
  }
}
