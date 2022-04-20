import 'package:bla_bla_app/constant/color_const.dart';
import 'package:bla_bla_app/constant/config_size.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: getWidth(25.0),
              top: getHeight(58.0),
            ),
            child: Text(
              "Данные профиля",
              style: TextStyle(
                color: ColorConst.green,
                fontSize: getWidth(33.31),
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: getHeight(25.0),
          ),
          Center(
            child: Stack(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.purple.shade50,
                      radius: getHeight(70.0),
                    ),
                  ],
                ),
                Positioned(
                  left: 95.0,
                  top: 95.0,
                  child: CircleAvatar(
                    radius: 22.0,
                    backgroundColor: ColorConst.green,
                    child: Icon(
                      Icons.add,
                      size: getWidth(38.0),
                      color: ColorConst.white,
                    ),
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
