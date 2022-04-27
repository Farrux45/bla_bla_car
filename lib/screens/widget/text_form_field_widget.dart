import 'package:bla_bla_app/constant/color_const.dart';
import 'package:bla_bla_app/constant/config_size.dart';
import 'package:bla_bla_app/screens/search_treavel_page.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key,
    required DateTime now,
    required DateTime firstDate,
    required DateTime lastDate,
    required this.isTrue,
  })  : _now = now,
        _firstDate = firstDate,
        _lastDate = lastDate,
        super(key: key);

  final DateTime _now;
  final DateTime _firstDate;
  final DateTime _lastDate;
  final bool isTrue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getWidth(30.0),
            vertical: getHeight(5.0),
          ),
          child: TextFormField(
            decoration: InputDecoration(
                prefixIcon: Image.asset(
                  "assets/images/Vector (1).png",
                ),
                hintText: "Откуда"),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getWidth(30.0),
            vertical: getHeight(5.0),
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
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getWidth(30.0),
            vertical: getHeight(5.0),
          ),
          child: TextFormField(
            keyboardType: TextInputType.none,
            decoration: InputDecoration(
              prefixIcon: InkWell(
                child: Image.asset(
                  "assets/images/dateee.png",
                ),
              ),
              hintText: "Сегодня",
            ),
            onTap: () {
              showDatePicker(
                context: context,
                initialDate: _now,
                firstDate: _firstDate,
                lastDate: _lastDate,
              );
            },
          ),
        ),
        SizedBox(
          height: getHeight(5.0),
        ),
        InkWell(
            child: Container(
              height: getHeight(85.0),
              width: getWidth(285.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Image(
                    image: AssetImage("assets/images/travelCar.png"),
                  ),
                  Image(
                    image: AssetImage("assets/images/passenger.png"),
                  ),
                  Image(
                    image: AssetImage("assets/images/delivery.png"),
                  ),
                ],
              ),
            ),
            onTap: () {}),
        SizedBox(
          height: getHeight(12.1),
        ),
        InkWell(
          child: Container(
            width: getWidth(337.0),
            height: getHeight(46.0),
            decoration: BoxDecoration(
              color: ColorConst.green,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
            ),
            child: Center(
              child: InkWell(
                  child: Text(
                    "ПОИСК",
                    style: TextStyle(
                        color: ColorConst.white,
                        fontSize: getWidth(20.0),
                        fontWeight: FontWeight.w600),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return SearchTravelPage();
                    }));
                  }),
            ),
          ),
          onTap: () {
            isTrue == true;
          },
        ),
      ],
    );
  }
}
