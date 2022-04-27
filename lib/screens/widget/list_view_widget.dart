import 'package:bla_bla_app/constant/color_const.dart';
import 'package:bla_bla_app/constant/config_size.dart';
import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (_, __) {
        return Container(
          margin: EdgeInsets.only(
            left: getWidth(25.0),
            right: getWidth(25.0),
            top: getHeight(10.0),
            bottom: getHeight(10.0),
          ),
          width: getWidth(340.0),
          height: getHeight(140.0),
          decoration: BoxDecoration(
            color: ColorConst.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(12.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 6.0,
                offset: const Offset(1.0, 1.0),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.only(
                left: getWidth(15.0),
                top: getHeight(15.0),
                right: getWidth(15.0)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/driver.png',
                      width: getWidth(23.26),
                      height: getHeight(19.0),
                    ),
                    const Icon(
                      Icons.cancel,
                    ),
                  ],
                ),
                SizedBox(
                  height: getHeight(18.0),
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/calendar.png',
                      width: getHeight(20.0),
                      height: getHeight(20.0),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: getWidth(12.0),
                        top: getHeight(2.0),
                      ),
                      child: Text(
                        "Сегодня",
                        style: TextStyle(
                          color: ColorConst.grey,
                          fontSize: getWidth(14.0),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: getHeight(18.0),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/locat.png',
                      width: getWidth(20.0),
                      height: getHeight(20.0),
                    ),
                    Text(
                      "Москва",
                      style: TextStyle(
                        color: ColorConst.grey,
                        fontSize: getWidth(14.0),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                   const Text("_ _ _ _ _ _ _ _ _ _ _ _"),
                    Image.asset(
                      'assets/images/locat2.png',
                      width: getWidth(20.0),
                      height: getHeight(20.0),
                    ),
                    Text(
                      "Выкса",
                      style: TextStyle(
                        color: ColorConst.grey,
                        fontSize: getWidth(14.0),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

