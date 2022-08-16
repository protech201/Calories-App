import 'package:calories/Custom/Button_Custom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/src/size_extension.dart';

import 'Custom/Lable_Custom.dart';
import 'Custom/TextField_Custom.dart';
import 'OutPutUi.dart';
import 'colorText.dart';

class InPutUi extends StatefulWidget {
  static double BMR=0.0;
  static double result=0.0;
  const InPutUi({ Key? key }) : super(key: key);



  @override
  State<InPutUi> createState() => _InPutUiState();
}
enum Gender {male,female}
class _InPutUiState extends State<InPutUi> {
  Gender? _gender = Gender.male;
  final age = TextEditingController();
  final height = TextEditingController();
  final weight = TextEditingController();
  final activity1 = TextEditingController();
  final activity2 = TextEditingController();

  ButtonCalculate(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>OutPutUi()  ),
    );

    int g ;
    if (_gender == Gender.male)
      g = 5;
    else
      g = -161;

    InPutUi.BMR  = (int.parse(weight.text)*10)+(int.parse(height.text)*6.25)-
        (int.parse(age.text)*5)+g;
    int act2 = int.parse(activity2.text);
    double act;
    if(act2==0)
      act = 1.2;
    else if( act2==1 || act2==2 || act2==3)
      act = 1.375;
    else if( act2==4 || act2==5)
      act = 1.55;
    else if( act2==6 || act2==7)
      act = 1.725;
    else
      act = 1.9;
    InPutUi.result = InPutUi.BMR * act;
    print(InPutUi.BMR);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f7),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width/1.2,
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              clipBehavior: Clip.none,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child: GradientText(
                      'Calorie Counter',
                      style: TextStyle(fontSize: 40),
                      gradient: LinearGradient(colors: [
                        Color(0xff8F3CC3),
                        Color(0xff6A7CD8),
                      ]),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  //---------------age
                  Lable_Custom('Age'),
                  const SizedBox(height: 10,),
                  TextField_Custom(controller: age,hintText: '24',),
                  //-----------------height
                  const SizedBox(height: 15,),
                  Lable_Custom('Height'),
                  const SizedBox(height: 10,),
                  TextField_Custom(controller: height,hintText: '176',suffix: Text('CM'),),
                  //---------------weight
                  const SizedBox(height: 15,),
                  Lable_Custom('Weight'),
                  const SizedBox(height: 10,),
                  TextField_Custom(controller: weight,hintText: '24',suffix: Text('KG'),),
                  //---------------Activity
                  const SizedBox(height: 15,),
                  Lable_Custom('Activity'),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width/8,
                          child: TextField_Custom(controller: activity1,hintText: '1',),
                      ),
                      const SizedBox(width: 10,),
                      const Text("-",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 25
                        ),),
                      const SizedBox(width: 10,),
                      SizedBox(
                          width: MediaQuery.of(context).size.width/8,
                          child: TextField_Custom(controller: activity2,hintText: '3',),
                      ),
                      const SizedBox(width: 10,),
                      const Text("Exercies 1-3 times/week",
                        style: TextStyle(
                            color: Colors.grey ,
                            fontSize: 20
                        ),),
                    ],),
                  //---------------Gender
                  const SizedBox(height: 15,),
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width/2.5,
                        child: ListTile(
                          title: const Text('Male',style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey,
                          ),),
                          leading: Radio<Gender>(
                            value: Gender.male,
                            groupValue: _gender,
                            activeColor: Color(0xff8F3CC3),
                            onChanged: (Gender? value) {
                              setState(() {
                                _gender = value;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/2.5,
                        child: ListTile(
                          title: const Text('Female',style: TextStyle(
                              fontSize: 25,
                            color: Colors.grey,
                          ),),
                          leading: Radio<Gender>(
                            value: Gender.female,
                            groupValue: _gender,
                            activeColor: Color(0xff8F3CC3),
                            onChanged: (Gender? value) {
                              setState(() {
                                _gender = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],

                  ),
                  //----------button
                  const SizedBox(height: 30,),
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Button_Custom(title:'Calculate',function: ButtonCalculate,)
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        flex: 2,
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              age.clear();
                              height.clear();
                              weight.clear();
                              activity1.clear();
                              activity2.clear();
                              InPutUi.result = 0.0;
                              InPutUi.BMR= 0.0;

                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 55.h,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Color(0xffF5F5F7),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x29000000),
                                  offset: Offset(-2, -2),
                                  blurRadius: 2,
                                ),
                                BoxShadow(
                                  color: Color(0xffffffff),
                                  offset: Offset(2, 2),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Text("Clear",style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey
                            ),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],),
            ),
          ),
        )
      ),
    );
  }

}
//width: MediaQuery.of(context).size.width/2.5,