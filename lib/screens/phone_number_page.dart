import 'package:bla_bla_app/constant/color_const.dart';
import 'package:bla_bla_app/constant/config_size.dart';
import 'package:bla_bla_app/main.dart';
import 'package:bla_bla_app/screens/widget/bottom_container.dart';
import 'package:bla_bla_app/screens/widget/second_bottom_container.dart';
import 'package:flutter/material.dart';

class PhoneNumberPage extends StatefulWidget {
  const PhoneNumberPage({Key? key}) : super(key: key);

  @override
  State<PhoneNumberPage> createState() => _PhoneNumberPageState();
}

class _PhoneNumberPageState extends State<PhoneNumberPage> {
  var _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.only(
                top: getHeight(110.0),
              ),
              child: Container(
                height: getHeight(232.2),
                width: getWidth(398.8),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/car.png'))),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: getWidth(25.0), top: getHeight(30.0)),
                  child: Text(
                    "Телефон",
                    style: TextStyle(
                      color: ColorConst.green,
                      fontSize: getWidth(33.23),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: getWidth(25.0),
                    top: getHeight(20.0),
                  ),
                  child: Text(
                    "Мы заботимся о вас, поэтому нам важно, чтобы каждый профиль был настоящим",
                    style: TextStyle(
                      color: ColorConst.grey,
                      fontSize: getWidth(15.0),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getWidth(20.0),
                    vertical: getHeight(31.92),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    key: _controller,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        hintText: "+7 *** *** ** **"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: getWidth(25.0),
                  ),
                  child: Text(
                    "Данный номер могут использовать пользователи приложения для связи с вами",
                    style: TextStyle(
                      color: ColorConst.grey,
                      fontSize: getWidth(15.0),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: getWidth(25.0),
                    top: getHeight(25.0),
                  ),
                  child: SecondBottomContainer(
                    index: 1,
                    name: "ОТПРАВИТЬ КОД",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
