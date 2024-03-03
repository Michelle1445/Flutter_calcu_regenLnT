import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regen_lnt/provider/cal_provider.dart';

import '../constant/colors.dart';

class Button1 extends StatelessWidget {
  const Button1({
    super.key, required this.label, this.textColor = Colors.white
  });

final String label;
final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
        Provider.of<CalculatorProvider>(context, listen: false).setValue(label),
      child: Material(
        elevation: 3,
        color: Appcolors.primarycolor,
        borderRadius: BorderRadius.circular(80),
        child: CircleAvatar(
          backgroundColor: Appcolors.secondarycolor,
          radius: 32, child: Text
          (label, style: TextStyle(fontSize: 32, color: textColor)
          ,)
          ,),
      ),
    );
  }
}