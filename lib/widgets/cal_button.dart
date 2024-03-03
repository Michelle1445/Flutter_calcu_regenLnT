import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regen_lnt/constant/colors.dart';
import 'package:regen_lnt/provider/cal_provider.dart';

class CalculatedButton extends StatelessWidget {
  const CalculatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>
        Provider.of<CalculatorProvider>(context, listen: false).setValue("="),
      child: Container(
        height: 128,
        width: 64,
        decoration: BoxDecoration(
          color: Appcolors.thirdarycolor,
          borderRadius: BorderRadius.circular(40)
        ),
        child: Center(child: Text("=", style: TextStyle(color: Colors.white,fontSize:32)),),
      ),
    );
  }
}