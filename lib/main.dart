import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:regen_lnt/constant/colors.dart';
import 'package:regen_lnt/provider/cal_provider.dart';
import 'package:regen_lnt/widgets/cal_button.dart';

import 'widgets/button.dart';

void main(){
  runApp(calcu());
}
class calcu extends StatelessWidget {
  const calcu({super.key});

  @override
  Widget build(BuildContext context) {
    final padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    return  ChangeNotifierProvider(
      create: (context) => CalculatorProvider(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: Consumer<CalculatorProvider>(
          builder: (context, provider, _) {
            return Scaffold(
              backgroundColor: Colors.black,
              appBar: AppBar(title: Center(
                child: Text("Calculator hehe", 
                style: TextStyle(color: Colors.white)), ),
                backgroundColor: Colors.black
              ,),
              body: Column(children: [
                CustomTextField(controller: provider.compController,), 
                // Spacer(),
                Container(height: 407,
                width: double.infinity,
                padding: padding,
                decoration: BoxDecoration(color: Appcolors.primarycolor, borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4, (index) => buttonList[index])
                  ,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4, (index) => buttonList[index +4])
                  ,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4, (index) => buttonList[index +8])
                  ,),
                  Row(
                    children: [
                      Expanded(
                        child: Column(children: [
                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(3, (index) => buttonList[index +12])
                        ,),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(3, (index) => buttonList[index +15])
                        ,)
                        ],),
                      ),
                      SizedBox(
                        width: 64,
                      ),
                      CalculatedButton()
                    ],
                  )
                ],),
                )
                ],)
            );
          }
        ),
      ),
    );
  }
}



List<Widget> buttonList = [
  Button1(label:"C", textColor: Appcolors.thirdarycolor,), 
  Button1(label:"/", textColor: Appcolors.thirdarycolor,),
  Button1(label:"X", textColor: Appcolors.thirdarycolor,), 
  Button1(label:"AC", textColor: Appcolors.thirdarycolor,),
  Button1(label:"7"), 
  Button1(label:"8"),
  Button1(label:"9"), 
  Button1(label:"-", textColor: Appcolors.thirdarycolor,),
  Button1(label:"4"), 
  Button1(label:"5"),
  Button1(label:"6"), 
  Button1(label:"+", textColor: Appcolors.thirdarycolor,),
  Button1(label:"1"), 
  Button1(label:"2"),
  Button1(label:"3"), 
  Button1(label:"%"), 
  Button1(label:"0"),
  Button1(label:"."), 
  
];

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.controller
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none, 
          fillColor: Appcolors.primarycolor, filled: true
        ),
        style: TextStyle(fontSize: 50), 
        readOnly: true,
        autofocus: true,
        showCursor: true,
      ),
    );
  }
}