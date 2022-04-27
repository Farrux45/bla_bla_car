import 'package:bla_bla_app/constant/color_const.dart';
import 'package:bla_bla_app/constant/config_size.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final String? icon;
  final String? lable;
  final Function()? onTap;

  const BottomNavBar({
    Key? key,
    required this.icon,
    required this.lable,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        height: getHeight(70.0),
        width: getWidth(74.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon!,
              height: getHeight(35.0),
            ),
            SizedBox(
              height: getHeight(5.0),
            ),
            Text(
              lable!,
              style: TextStyle(
                color: ColorConst.grey,
                fontSize: getWidth(10.0),
              ),
            ),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
