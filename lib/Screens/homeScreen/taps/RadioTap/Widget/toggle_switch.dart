import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class MyToggleSwitch extends StatefulWidget {
  MyToggleSwitch({
    super.key,
    required this.selectedIndex,
    required this.onChanged,

  });

  final int selectedIndex;
  final Function(int) onChanged;


  @override
  State<MyToggleSwitch> createState() => _MyToggleSwitchState();
}

class _MyToggleSwitchState extends State<MyToggleSwitch> {
  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      minWidth: 390,
      minHeight: 40,
      initialLabelIndex: widget.selectedIndex,
      cornerRadius: 25,
      activeBgColor: [Color(0xFFD4B57A)],
      inactiveBgColor: Colors.black,
      activeFgColor: Colors.black,
      inactiveFgColor: Colors.white,
      totalSwitches: 2,
      labels: ['Radio', 'Reciters'],
      onToggle: (index) {
        widget.onChanged(index!);
      },
    );
  }
}
