import 'package:bil/Service/wrapper.dart';
import 'package:bil/constant/constants.dart';
import 'package:bil/screens/loginscreen.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 3500), () {});

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Wrapper()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(alignment: Alignment.center, children: <Widget>[
        Positioned(
          top: 100,
          right: 104,
          child: Image.asset(
            'assets/images/bil_T.png',
            height: 150,
          ),
        ),
        Stack(
          children: <Widget>[
            Positioned(
                top: 290,
                right: 10,
                child: Container(
                    child: Image.asset(
                  'assets/images/aotm.png',
                  width: 340,
                )))
          ],
        ),
        Stack(
          children: <Widget>[
            Positioned(
                top: 655,
                right: 130,
                child: Container(
                    child: Image.asset(
                  'assets/images/dev.png',
                  width: 100,
                )))
          ],
        ),
        Stack(
          children: <Widget>[
            Positioned(
                top: 675,
                right: 136,
                child: Container(
                    child: Image.asset(
                  'assets/images/ms.png',
                  width: 90,
                )))
          ],
        )
      ]),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0.0),
          gradient: LinearGradient(
              colors: [BIL_Color, Color.fromARGB(255, 32, 27, 82)],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft)),
      //gradient:
      // LinearGradient(colors: [
      //  Color.fromRGBO(32, 136, 177, 41),
      // Color.fromRGBO(200, 136, 160, 36),
    );
  }
}
