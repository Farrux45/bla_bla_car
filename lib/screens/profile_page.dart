import 'package:bla_bla_app/constant/color_const.dart';
import 'package:bla_bla_app/constant/config_size.dart';
import 'package:bla_bla_app/screens/home_page.dart';
import 'package:bla_bla_app/screens/widget/bottom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: getWidth(50.0),
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
              child: addPhoto(),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: getWidth(25.0),
                    top: getHeight(10.0),
                  ),
                  child: Text(
                    "Имя",
                    style: TextStyle(
                      color: ColorConst.grey,
                      fontSize: getWidth(14.0),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getWidth(20.0),
                vertical: getHeight(5.0),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  hintText: "Имя",
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: getWidth(25.0),
                    top: getHeight(15.0),
                  ),
                  child: Text(
                    "Телефон",
                    style: TextStyle(
                      color: ColorConst.grey,
                      fontSize: getWidth(14.0),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getWidth(20.0),
                vertical: getHeight(5.0),
              ),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  hintText: "+7 910 874 13 40",
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: getWidth(25.0),
                    top: getHeight(15.0),
                  ),
                  child: Text(
                    "Социальные сети социальные сети",
                    style: TextStyle(
                      color: ColorConst.grey,
                      fontSize: getWidth(14.0),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: getWidth(320.0),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getHeight(20.0),
                      top: getHeight(10.0),
                    ),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        hintText: "vk.com/******",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: getWidth(12.0),
                    top: getHeight(5.0),
                  ),
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundColor: ColorConst.green,
                    child: Icon(
                      Icons.add,
                      size: getHeight(25.0),
                      color: ColorConst.white,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: getWidth(25.0),
                    top: getHeight(15.0),
                  ),
                  child: Text(
                    "О себе",
                    style: TextStyle(
                      color: ColorConst.grey,
                      fontSize: getWidth(14.0),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    bottom: getHeight(120.0),
                    left: getWidth(15.0),
                  ),
                  margin: EdgeInsets.only(
                    left: getWidth(18.0),
                    top: getHeight(5.0),
                    right: getWidth(20.0),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey.shade400),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat'),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Текст о себе',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
                          fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: getWidth(13.0),
                    top: getHeight(25.0),
                  ),
                  child: BottomContainer(
                    index: 1,
                    onTap: () {
                      Navigator.pushNamed(context, '/second');
                    },
                    name: "ПОДТВЕРДИТЬ",
                    color: Colors.green,
                    color2: ColorConst.white,
                  ),
                ),
                InkWell(
                  child: Center(
                    child: Text(
                      "Выход",
                      style: TextStyle(
                          color: ColorConst.grey,
                          fontSize: getWidth(12.49),
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => MyHomePage()),
                        (route) => false);
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Stack addPhoto() {
    return Stack(
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
    );
  }
}
