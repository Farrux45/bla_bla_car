import 'package:bla_bla_app/constant/color_const.dart';
import 'package:bla_bla_app/constant/config_size.dart';
import 'package:bla_bla_app/screens/profile_page.dart';
import 'package:bla_bla_app/screens/widget/bottom_container.dart';

import 'package:flutter/material.dart';

class CodeFromSmsPage extends StatefulWidget {
  const CodeFromSmsPage({Key? key}) : super(key: key);

  @override
  State<CodeFromSmsPage> createState() => _CodeFromSmsPageState();
}

class _CodeFromSmsPageState extends State<CodeFromSmsPage> {
  var _controller;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: getHeight(119.33),
              left: getWidth(20.0),
            ),
            child: Container(
              height: getHeight(253.63),
              width: getWidth(354.49),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/car2.png'),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: getWidth(25.0),
                  top: getHeight(35.0),
                ),
                child: Text(
                  "Код подтверждения",
                  style: TextStyle(
                    color: ColorConst.green,
                    fontSize: getWidth(35.0),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(20.0),
                  left: getWidth(25.0),
                ),
                child: Text(
                  "Введите код, отправленный по SMS ",
                  style: TextStyle(
                    color: ColorConst.grey,
                    fontSize: getWidth(14.57),
                    fontWeight: FontWeight.w400,
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
                      hintText: "КОД"),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getWidth(25.0),
                ),
                child: BottomContainer(
                  index: 1,
                  onTap: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                  name: "ПОДТВЕРДИТЬ",
                  color: ColorConst.green,
                  color2: ColorConst.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: getHeight(5.0),
                  left: getWidth(140.0),
                ),
                child: Text(
                  "Код не пришёл",
                  style: TextStyle(
                    color: ColorConst.grey,
                    fontSize: getWidth(14.57),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
