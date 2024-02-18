import 'package:flutter/material.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});
  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  bool checkedValue = false;
  bool checkedValue1 = true;
  bool isChecked = true;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  double height1 = 240;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 4.0,
        centerTitle: true,
        /*title: Add Payment method(
          text: 'Wallet',
          isBack: false,
        ),*/
      ),
      body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      width: 360,
                      height: 80,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffcfcfcf),
                            blurRadius: 1,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        color: Color(0xffffffff),
                        //borderRadius: BorderRadius.circular(3)
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.blue,
                                width: 1.0,
                              ),
                            ),
                            child: Checkbox(
                              value: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
                                  isChecked1 = false;
                                  isChecked2 = false;
                                  isChecked3 = false;
                                  //height1 = 80;
                                });
                              },
                              shape: CircleBorder(),
                            ),
                          ),
                          Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 325,
                                child: Text(
                                  '  Pay with wallet',
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              SizedBox(
                                width: 325,
                                child: Text(
                                  '  complete the payment using your a wallet',
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 360,
                      height: height1,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffcfcfcf),
                            blurRadius: 1,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        color: Color(0xffffffff),
                        //borderRadius: BorderRadius.circular(3)
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    width: 45,
                                  ),
                                  Container(
                                    width: 25,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      border: Border.all(
                                        color: Colors.blue,
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Checkbox(
                                      value: isChecked1,
                                      onChanged: (value) {
                                        setState(() {
                                          isChecked1 = value!;
                                          isChecked2 = value;
                                          isChecked3 = false;
                                          isChecked = false;
                                          //height1 = 240;
                                        });
                                      },
                                      shape: CircleBorder(),
                                    ),
                                  ),
                                ],
                              ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  width: 315,
                                  child: Text(
                                    'Credit / debit card',
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(
                                  width: 315,
                                  child: Text(
                                    'complete the payment using your debit card',
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                          /*SizedBox(
                            height: 50,
                            width: 280,
                            child: DropdownButton<String>(
                              itemHeight: 60.0,
                              items: <String>['A', 'B'].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (_) {},
                            ),
                          ),*/
                            ],
                          ),
                          Container(
                            width: 340,
                            height: 60,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffcfcfcf),
                                  blurRadius: 1,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              color: Color(0xffffffff),
                              //borderRadius: BorderRadius.circular(3)
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.blue,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Checkbox(
                                        value: isChecked2,
                                        onChanged: (value) {
                                          setState(() {
                                            isChecked2 = value!;
                                            isChecked1 = value;
                                            isChecked = false;
                                            isChecked3 = false;
                                            //height1 = 80;
                                          });
                                        },
                                        shape: CircleBorder(),
                                      ),
                                    ),
                                    Text(
                                        ' **** **** 3323',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 340,
                            height: 60,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffcfcfcf),
                                  blurRadius: 1,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                              color: Color(0xffffffff),
                              //borderRadius: BorderRadius.circular(3)
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 25,
                                      height: 25,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border: Border.all(
                                          color: Colors.blue,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Checkbox(
                                        value: isChecked3,
                                        onChanged: (value) {
                                          setState(() {
                                            isChecked3 = value!;
                                            isChecked1 = value;
                                            isChecked = false;
                                            isChecked2 = false;
                                            //height1 = 80;
                                          });
                                        },
                                        shape: CircleBorder(),
                                      ),
                                    ),
                                    Text(
                                      ' **** **** 1547',
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
      ),
    );
  }
}
