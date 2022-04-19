import 'package:bla_bla_app/constant/color_const.dart';
import 'package:bla_bla_app/constant/config_size.dart';
import 'package:bla_bla_app/screens/code_sms.dart';
import 'package:bla_bla_app/screens/second_home_page.dart';
import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  final int? index;
  final String? name;
  BottomContainer({Key? key, required this.index, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(
          top: getHeight(10.0),
          left: getWidth(3.0),
          bottom: getHeight(20.0),
        ),
        height: getHeight(60.0),
        width: getWidth(340.0),
        decoration: BoxDecoration(
          color: ColorConst.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Center(
          child: Text(
            name ?? "",
            style: TextStyle(
              color: ColorConst.green,
              fontSize: getWidth(16.66),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) {
          return SecondPageHome();
        }), (route) => false);
      },
    );
  }
}
