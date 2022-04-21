import 'package:bla_bla_app/constant/color_const.dart';
import 'package:bla_bla_app/constant/config_size.dart';
import 'package:flutter/material.dart';

class SearchTravel extends StatefulWidget {
  const SearchTravel({Key? key}) : super(key: key);

  @override
  State<SearchTravel> createState() => _SearchTravelState();
}

class _SearchTravelState extends State<SearchTravel> {
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
              elevation: 3,
              shadowColor: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(15.0),
              child: Container(
                width: getWidth(337.0),
                height: getHeight(300.0),
                child: SizedBox(
                  width: getWidth(45),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: getWidth(30.0),
                          vertical: getHeight(10.0),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Image.asset(
                                "assets/images/Vector (1).png",
                              ),
                              hintText: "Откуда"),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: getWidth(30.0),
                              vertical: getHeight(8.0),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Image.asset(
                                  "assets/images/Vector (1).png",
                                ),
                                hintText: "Куда",
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: getWidth(30.0),
                                  vertical: getHeight(8.0),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    prefixIcon: InkWell(
                                      child: Image.asset(
                                        "assets/images/dateee.png",
                                      ),
                                    ),
                                    hintText: "Сегодня",
                                  ),
                                  onTap: (){

                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
