import 'package:bla_bla_app/constant/color_const.dart';
import 'package:bla_bla_app/constant/config_size.dart';
import 'package:bla_bla_app/screens/second_home_page.dart';
import 'package:bla_bla_app/screens/widget/bottom_container.dart';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ColorConst.green,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(150.0),
              left: getWidth(30.0),
            ),
            child: Container(
              height: getHeight(287.46),
              width: getWidth(340.0),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/home.png'),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getWidth(25.0),
              top: getHeight(25.0),
            ),
            child: Column(
              children: [
                Text(
                  "Поиск попутчиков",
                  style: TextStyle(
                    color: ColorConst.white,
                    fontSize: getWidth(33.31),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getHeight(24.0),
          ),
          Padding(
            padding: EdgeInsets.only(left: getWidth(25.0)),
            child: Text(
              "Найдите подходящую поездку, попутчиков  или отправьте груз",
              style: TextStyle(
                color: ColorConst.white,
                fontSize: getWidth(14.57),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getWidth(25.0),
              top: getHeight(25.0),
            ),
            child: BottomContainer(
              index: 1,
              onTap: () {
                Navigator.pushNamed(context, '/second');
              },
              name: "ПРОДОЛЖИТЬ",
              color: Colors.white,
              color2: ColorConst.green,
            ),
          ),
        ],
      ),
    );
  }
}
