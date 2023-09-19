import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter/material.dart';

import '../theme/colores.dart';
class SwitchWidget extends StatelessWidget {
  const SwitchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 7),
      child: Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          child: ToggleSwitch(
            minHeight: 30.0,
            minWidth: MediaQuery.of(context).size.width,
            initialLabelIndex: 0,
            totalSwitches: 2,
            activeBgColor: [backgroung],
            activeFgColor: Colors.white,
            inactiveBgColor: Colors.white,
            inactiveFgColor: Colors.grey[900],
            labels: ['Task List', 'Compleleted'],
            onToggle: (index) {
              print('switched to: $index');
            },
          ),
        ),
      ),
    );
  }
}