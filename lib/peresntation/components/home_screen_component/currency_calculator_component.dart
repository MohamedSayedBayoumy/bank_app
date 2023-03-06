import 'package:bank_app/peresntation/components/drop_list_component.dart';
import 'package:bank_app/peresntation/components/space_component.dart';
import 'package:bank_app/peresntation/components/text_component.dart';
import 'package:flutter/material.dart';

class CurrencyCalculatorComponent extends StatefulWidget {
  const CurrencyCalculatorComponent({Key? key}) : super(key: key);

  @override
  State<CurrencyCalculatorComponent> createState() => _CurrencyCalculatorComponentState();
}

class _CurrencyCalculatorComponentState extends State<CurrencyCalculatorComponent> {
  static List<String> country = [
    "مصر",
    "السعوديه",
    "الامارات",
    "تركيا",
    "امريكا",
    "لبنان",
  ];
  dynamic selectChoiceId = country[1];

  bool isChecked = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.indigo.shade900;
    }
    return Colors.blue;
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return   Row(
        children: [
          Expanded(
              flex: 2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SpaceComponent(height: media.height * .05),
                  Container(
                    width: media.width,
                    height: media.height * .05,
                    padding: EdgeInsets.only(right: media.width * .05),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DropList(
                          iconColor: Colors.white,
                          textColor: Colors.white,
                          styleBorder: 18.0,
                          colorBorder: Colors.blueAccent,
                          color: Colors.blueAccent,
                          list: country,
                          value: selectChoiceId,
                          width: media.width * .4,
                          height: media.height * .05,
                        ),
                        TextComponent(
                          text: "1.264",
                          colorText: Colors.black87,
                          fontSize: 15.0,
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      TextComponent(
                        text: "نقدي",
                        fontSize: 18.0,
                        colorText: Colors.white,
                      ),
                      Checkbox(
                        shape: const CircleBorder(),
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      const Spacer(),
                      TextComponent(
                        text: "بنك",
                        fontSize: 18.0,
                        colorText: Colors.white,
                      ),
                      Checkbox(
                        shape: const CircleBorder(),
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  SpaceComponent(
                    height: media.height * .04,
                  ),
                  Container(
                    width: media.width,
                    height: media.height * .05,
                    padding: EdgeInsets.only(right: media.width * .05),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DropList(
                          iconColor: Colors.white,
                          textColor: Colors.white,
                          styleBorder: 18.0,
                          colorBorder: Colors.blueAccent,
                          color: Colors.blueAccent,
                          list: country,
                          value: selectChoiceId,
                          width: media.width * .4,
                          height: media.height * .05,
                        ),
                        TextComponent(
                          text: "1.264",
                          colorText: Colors.black87,
                          fontSize: 15.0,
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      TextComponent(
                        text: "نقدي",
                        fontSize: 18.0,
                        colorText: Colors.white,
                      ),
                      Checkbox(
                        shape: const CircleBorder(),
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      const Spacer(),
                      TextComponent(
                        text: "بنك",
                        fontSize: 18.0,
                        colorText: Colors.white,
                      ),
                      Checkbox(
                        shape: const CircleBorder(),
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              )),
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextComponent(
                      text: "العمله من",
                      colorText: Colors.white,
                      fontSize: 20.0),
                  SpaceComponent(
                    height: media.height * .02,
                  ),
                  Image.asset(
                    "assets/row_up_down.png",
                    height: media.height * .06,
                  ),
                  SpaceComponent(
                    height: media.height * .03,
                  ),
                  TextComponent(
                      text: "العمله من",
                      colorText: Colors.white,
                      fontSize: 20.0),
                ],
              )),
        ],
      ) ;

  }
}

