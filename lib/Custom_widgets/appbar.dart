import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/app_theme.dart';
import '../theme/colores.dart';

class Custom_Appbar extends StatelessWidget {
  const Custom_Appbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: backgroung,
      title: Center(
          child: Text(
            'Schedule',
            style: inoTheme.headerstyle,
          )),
    );
  }
}