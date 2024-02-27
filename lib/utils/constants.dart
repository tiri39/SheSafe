import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Color primaryColor = Color.fromARGB(214, 150, 9, 182);


void goTo(BuildContext context, Widget nextScreen) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => nextScreen));
}