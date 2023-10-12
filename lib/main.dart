import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tvremote/utils/color_palette.dart';
import 'package:flutter_tvremote/widgets/joystick_view.dart';
import 'package:flutter_tvremote/widgets/main_tv_button.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TVRemoteDemo(),
    );
  }
}

class TVRemoteDemo extends StatefulWidget {
  @override
  _TVRemoteDemoState createState() => _TVRemoteDemoState();
}

class _TVRemoteDemoState extends State<TVRemoteDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.black,
      appBar: AppBar(
        leading: MainTvButton(),
        title: Text('ANDROID TV REMOTE'),
        titleSpacing: 2.0,
        backgroundColor: Colors.white24,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: ClipOval(
                    child: Material(
                      child: InkWell(
                        splashColor: Colors.white24,
                        child:SizedBox(
                          height: 56,
                          width: 56,
                          child: Icon(Icons.dialpad),
                        ),
                        onTap: (){},
                      ),
                    ),
                  ),
                ),
                Container(
                  child: ClipOval(
                    child: Material(
                      color: Colors.red,
                      child: InkWell(
                        splashColor: Colors.white24,
                        child:SizedBox(
                          height: 56,
                          width: 56,
                          child: Icon(Icons.power_settings_new),
                        ),
                        onTap: (){},
                      ),
                    ),
                  ),
                ),
                Container(
                  child: ClipOval(
                    child: Material(
                      child: InkWell(
                        splashColor: Colors.white24,
                        child:SizedBox(
                          height: 56,
                          width: 56,
                          child: Icon(Icons.bubble_chart),
                        ),
                        onTap: (){},
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 156,
                  width: 56,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.arrow_drop_up),
                      Text('VOL',style: TextStyle(fontWeight: FontWeight.bold),),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
                JoystickView(
                  innerCircleColor: Colors.grey,
                  backgroundColor: Colors.grey.shade400,
                  iconsColor: Colors.white,
                  showArrows: true,
                  size: 200.0,
                ),
                Container(
                  height: 156,
                  width: 56,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.arrow_drop_up),
                      Text('CH',style: TextStyle(fontWeight: FontWeight.bold),),
                      Icon(Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(18.0),
                    color: Colors.white,
                  ),
                  child: Padding(padding: EdgeInsets.all(2.0),
                 child: Image.asset('assets/netflix.png'),
                  ),
                ),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(18.0),
                    color: Colors.white,
                  ),
                  child: Padding(padding: EdgeInsets.all(8.0),
                  child: Image.asset('assets/prime.png'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

















