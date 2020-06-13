import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/container_content.dart';
import 'components/gender_enum.dart';
import 'components/reusable_container.dart';
import 'components/constants.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveContainerColor;
  Color femaleCardColor = inactiveContainerColor;
  int height = 160;
  int weight = 60;
  int age = 20;

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
                    child: ReusableContainer(
                        onTap: () {
                          setState(() {
                            updateColor(Gender.male);
                          });
                        },
                        color: maleCardColor,
                        child: ContainerContent(
                            icon: FontAwesomeIcons.mars, text: 'Male')),
                  ),
                  Expanded(
                    child: ReusableContainer(
                      onTap: () {
                        setState(() {
                          updateColor(Gender.female);
                        });
                      },
                      color: femaleCardColor,
                      child: ContainerContent(
                          icon: FontAwesomeIcons.venus, text: 'Female'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableContainer(
                color: inactiveContainerColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: labelTextStyle,
                    ),
                    Text(
                      height.toString(),
                      style: numberTextStyle,
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0xFFEB1555),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 25.0)),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double value) {
                          setState(() {
                            height = value.toInt();
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableContainer(
                      color: inactiveContainerColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'WEIGHT',
                            style: labelTextStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: numberTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableContainer(
                      color: inactiveContainerColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: labelTextStyle,
                          ),
                          Text(
                            age.toString(),
                            style: numberTextStyle,
                          )
                        ],
                      ),
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
