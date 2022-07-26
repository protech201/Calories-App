import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
                        Color(0xffAEBAF8),
                        Color(0xffC973FF),
                      ]),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  //---------------age
                  const Text("Age",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25
                  ),),
                  const SizedBox(height: 10,),
                  Row(
                    // mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                     SizedBox(
                      width: MediaQuery.of(context).size.width/2.2,
                      height: MediaQuery.of(context).size.height/15,
                      child: Container(
                        padding: EdgeInsets.only(left: 8),
                        alignment: Alignment.centerLeft,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xffF5F5F7),
                          // gradient: LinearGradient(colors: [
                          //     Color(0xffC973FF),
                          //     Color(0xffAEBAF8),
                          //   ]),
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
                        child:  TextField(
                          controller: age,
                          keyboardType: TextInputType.number,
                          style: TextStyle(fontSize: 25,color: Color(0xffAEBAF8)), //#AEBAF8
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "24",
                            hintStyle: TextStyle(fontSize: 25,color: Color(0xffC0CAD7)),
                          ),
                        ),
                      ),

                    ),
                    SizedBox(width: 10,),
                    const Text("Ages 15-80",
                      style: TextStyle(
                          color: Colors.grey,
                          // color: Color(0xffC0CAD7),
                          fontSize: 20
                      ),),

                  ],),
                  //-----------------height
                  const SizedBox(height: 15,),
                  const Text("Height",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 25
                    ),),
                  const SizedBox(height: 10,),
                  SizedBox(
                      // width: MediaQuery.of(context).size.width/1.3,
                      height: MediaQuery.of(context).size.height/15,
                      child: Container(
                        padding: EdgeInsets.only(left: 8,right: 8),
                        alignment: Alignment.centerLeft,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xffF5F5F7),
                          // gradient: LinearGradient(colors: [
                          //     Color(0xffC973FF),
                          //     Color(0xffAEBAF8),
                          //   ]),
                          boxShadow: const [
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
                        child:  TextField(
                          controller: height,
                          keyboardType: TextInputType.number,
                          style: TextStyle(fontSize: 25,color: Color(0xffAEBAF8)), //#AEBAF8
                          decoration: InputDecoration(
                            suffix: Text("CM"),
                            border: InputBorder.none,
                            hintText: "176",
                            hintStyle: TextStyle(fontSize: 25,color: Color(0xffC0CAD7)),
                          ),
                        ),
                      ),
                  ),
                  //---------------weight
                  const SizedBox(height: 15,),
                  const Text("Weight",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 25
                    ),),
                  const SizedBox(height: 10,),
                  SizedBox(
                      // width: MediaQuery.of(context).size.width/1.3,
                      height: MediaQuery.of(context).size.height/15,
                      child: Container(
                        padding: EdgeInsets.only(left: 8,right: 8),
                        alignment: Alignment.centerLeft,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xffF5F5F7),
                          // gradient: LinearGradient(colors: [
                          //     Color(0xffC973FF),
                          //     Color(0xffAEBAF8),
                          //   ]),
                          boxShadow: const [
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
                        child:  TextField(
                          controller: weight,
                          keyboardType: TextInputType.number,
                          style: TextStyle(fontSize: 25,color: Color(0xffAEBAF8)), //#AEBAF8
                          decoration: InputDecoration(
                            suffix: Text("KG"),
                            border: InputBorder.none,
                            hintText: "78",
                            hintStyle: TextStyle(fontSize: 25,color: Color(0xffC0CAD7)),
                          ),
                        ),
                      ),
                  ),
                  //---------------Activity
                  const SizedBox(height: 15,),
                  const Text("Activity",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 25
                    ),),
                  const SizedBox(height: 10,),
                  Row(
                    // mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: MediaQuery.of(context).size.width/8,
                          height: MediaQuery.of(context).size.height/15,
                          child: Container(
                            // padding: EdgeInsets.symmetric(horizontal: 8),
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Color(0xffF5F5F7),
                              // gradient: LinearGradient(colors: [
                              //     Color(0xffC973FF),
                              //     Color(0xffAEBAF8),
                              //   ]),
                              boxShadow: const [
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
                            child:  SizedBox(
                              width: 15,
                              child: TextField(
                                controller: activity1,
                                keyboardType: TextInputType.number,
                                style: TextStyle(fontSize: 25,color: Color(0xffAEBAF8)), //#AEBAF8
                                decoration: InputDecoration(

                                  border: InputBorder.none,
                                  hintText: "1",
                                  hintStyle: TextStyle(fontSize: 25,color: Color(0xffC0CAD7)),
                                ),
                              ),
                            ),
                          ),
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
                          height: MediaQuery.of(context).size.height/15,
                          child: Container(
                            // padding: EdgeInsets.symmetric(horizontal: 8),
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Color(0xffF5F5F7),
                              // gradient: LinearGradient(colors: [
                              //     Color(0xffC973FF),
                              //     Color(0xffAEBAF8),
                              //   ]),
                              boxShadow: const [
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
                            child:  SizedBox(
                              width: 15,
                              child: TextField(
                                controller: activity2,
                                keyboardType: TextInputType.number,
                                style: TextStyle(fontSize: 25,color: Color(0xffAEBAF8)), //#AEBAF8
                                decoration: InputDecoration(

                                  border: InputBorder.none,
                                  hintText: "3",
                                  hintStyle: TextStyle(fontSize: 25,color: Color(0xffC0CAD7)),
                                ),
                              ),
                            ),
                          ),
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
                            activeColor: Color(0xffC973FF),
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
                            activeColor: Color(0xffC973FF),
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
                        child: InkWell(
                          onTap: (){
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

                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width/2.5,
                            height: MediaQuery.of(context).size.height/14,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              gradient: LinearGradient(colors: [
                                Color(0xffC973FF),
                                Color(0xffAEBAF8),
                              ]),
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
                            child: Text("Calcuate",style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                        ),
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

                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width/2.5,
                            height: MediaQuery.of(context).size.height/14,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: Color(0xffF5F5F7),
                              // gradient: LinearGradient(colors: [
                              //     Color(0xffC973FF),
                              //     Color(0xffAEBAF8),
                              //   ]),
                              boxShadow: const [
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