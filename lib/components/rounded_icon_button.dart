import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({@required this.icon, @required this.onPress});

  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: kRoundedIconButtonCollor,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      onPressed: onPress,
    );
  }
}
