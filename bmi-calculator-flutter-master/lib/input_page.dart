import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/container_content.dart';
import 'components/gender_enum.dart';
import 'components/reusable_container.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  static const bottomContainerHeight = 80.0;
  static const inactiveContainerColor = Color(0xFF1D1E33);
  static const activeContainerColor = Color(0xFF111328);
  static const bottomContainerColor = Color(0xFFEB1555);
  Color maleCardColor = inactiveContainerColor;
  Color femaleCardColor = inactiveContainerColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(Gender.male);
                        });
                      },
                      child: ReusableContainer(
                          color: maleCardColor,
                          child: ContainerContent(
                              icon: FontAwesomeIcons.mars, text: 'Male')),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(Gender.female);
                        });
                      },
                      child: ReusableContainer(
                        color: femaleCardColor,
                        child: ContainerContent(
                            icon: FontAwesomeIcons.venus, text: 'Female'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableContainer(
                color: inactiveContainerColor,
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableContainer(
                      color: inactiveContainerColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableContainer(
                      color: inactiveContainerColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              height: bottomContainerHeight,
            )
          ],
        ));
  }

  void updateColor(Gender gender) {
    if (gender == Gender.male) {
      maleCardColor = activeContainerColor;
      if (femaleCardColor != inactiveContainerColor)
        femaleCardColor = inactiveContainerColor;
    } else if (gender == Gender.female) {
      femaleCardColor = activeContainerColor;
      if (maleCardColor != inactiveContainerColor)
        maleCardColor = inactiveContainerColor;
    }
  }
}
