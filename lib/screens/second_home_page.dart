import 'package:bla_bla_app/constant/color_const.dart';
import 'package:bla_bla_app/constant/config_size.dart';
import 'package:bla_bla_app/screens/widget/second_bottom_container.dart';
import 'package:flutter/material.dart';

class SecondPageHome extends StatefulWidget {
  const SecondPageHome({Key? key}) : super(key: key);

  @override
  State<SecondPageHome> createState() => _SecondPageHomeState();
}

class _SecondPageHomeState extends State<SecondPageHome> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ColorConst.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(148.0),
              left: getWidth(30.0),
            ),
            child: Container(
              height: getHeight(287.16),
              width: getWidth(340.0),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/2home.png"),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: getWidth(25.0),
                  top: getHeight(25.0),
                ),
                child: Text(
                  "Поиск попутчиков",
                  style: TextStyle(
                    color: ColorConst.green,
                    fontSize: getWidth(33.31),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getWidth(25.0),
                  top: getHeight(15.0),
                ),
                child: Text(
                  "Найдите подходящую поездку, попутчиков  или отправьте груз",
                  style: TextStyle(
                    color: ColorConst.grey,
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
                child: SecondBottomContainer(index: 1, name: "ПРОДОЛЖИТЬ",),
              ),
            ],
          )
        ],
      ),
    );
  }
}
