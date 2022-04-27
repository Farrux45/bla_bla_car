import 'package:bla_bla_app/constant/color_const.dart';
import 'package:bla_bla_app/constant/config_size.dart';
import 'package:bla_bla_app/screens/search_treavel_page.dart';
import 'package:bla_bla_app/screens/widget/bottom_nav_bar.dart';
import 'package:bla_bla_app/screens/widget/list_view_widget.dart';
import 'package:bla_bla_app/screens/widget/text_form_field_widget.dart';
import 'package:bla_bla_app/screens/widget/text_style_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchTravel extends StatefulWidget {
  SearchTravel({Key? key}) : super(key: key);

  @override
  State<SearchTravel> createState() => _SearchTravelState();
}

class _SearchTravelState extends State<SearchTravel> {
  final DateTime _now = DateTime.now();
  final DateTime _firstDate = DateTime(2022);
  final DateTime _lastDate = DateTime(2050);

  bool isTrue = false;

  var index;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: ColorConst.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: getHeight(25.0),
                left: getWidth(30.0),
              ),
              child: Container(
                height: getHeight(235.0),
                width: getWidth(390.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/travel.png'),
                  ),
                ),
              ),
            ),
            PhysicalModel(
              color: Colors.white,
              elevation: 10.0,
              shadowColor: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                width: getWidth(337.0),
                height: getHeight(320.0),
                child: SizedBox(
                  width: getWidth(45),
                  child: TextFormFieldWidget(
                      now: _now,
                      firstDate: _firstDate,
                      lastDate: _lastDate,
                      isTrue: isTrue),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Активные поиски",
                    style: TextStyleComp.boldStyleGrey(20.0),
                  ),
                  Text(
                    "ЗАКРЫТЬ ВСЕ",
                    style: TextStyle(
                        color: ColorConst.red,
                        fontSize: getWidth(14.0),
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            SizedBox(
              height: getHeight(190.0),
              child: const ListViewWidget(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: getHeight(70),
        width: getWidth(375),
        decoration: BoxDecoration(
          color: ColorConst.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 6.0,
              offset: Offset(1.0, 1.0),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            BottomNavBar(
              icon: "assets/images/chat.png",
              lable: "Активнные",
            ),
            BottomNavBar(
              icon: "assets/images/glavniy.png",
              lable: "Главная",
            ),
            BottomNavBar(
              icon: "assets/images/profile.png",
              lable: "Профиль",
            ),
          ],
        ),
      ),
    );
  }
}

