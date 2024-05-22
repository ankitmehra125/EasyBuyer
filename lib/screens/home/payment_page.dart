import 'package:easybuyer/screens/home/botnav.dart';
import 'package:easybuyer/screens/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

  int selectedPaymentMethod = -1;

  @override
  Widget build(BuildContext context) {
    var mQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Color(0xfff4f2ee),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: mQuery.size.width*0.045
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: kToolbarHeight,),
            Row(
              children: [
                GestureDetector(
                    onTap: ()
                    {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios)),
                SizedBox(width: mQuery.size.width*0.032,),
                Text(
                  "Payment",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'SatoshiBold',
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: mQuery.size.height*0.045,),
            Padding(
              padding:  EdgeInsets.symmetric(
                horizontal: mQuery.size.width*0.02
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    width: double.infinity,
                    height: mQuery.size.height * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/money.png",
                          width: 26,
                        ),
                        SizedBox(width: mQuery.size.width * 0.03),
                        Text(
                          "Cash",
                          style: TextStyle(
                              fontSize: mQuery.size.height * 0.019,
                              fontFamily: 'SatoshiMedium'),
                        ),
                        Expanded(child: SizedBox()),
                        Radio(
                          value: 0,
                          groupValue: selectedPaymentMethod,
                          onChanged: (int? value) {
                            setState(() {
                              selectedPaymentMethod = value!;
                            });
                          },
                          activeColor: Color(0xffd4af37),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: mQuery.size.height * 0.028),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: mQuery.size.width*0.045,
                      vertical: mQuery.size.height*0.023
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 7,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Other Wallets/UPI",
                                style: TextStyle(
                                    fontSize: mQuery.size.height * 0.0195,
                                    fontFamily: 'SatoshiMedium'),
                              ),
                              Expanded(child: SizedBox()),
                              Container(
                                width: mQuery.size.width * 0.04,
                                height: mQuery.size.height * 0.05,
                                decoration: BoxDecoration(
                                    color: Color(0xffd4af37),
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Icon(Icons.add,
                                      color: Colors.white, size: 15),
                                ),
                              ),
                              SizedBox(width: mQuery.size.width * 0.026),
                              Text("Add New",
                                style: TextStyle(
                                    fontSize: mQuery.size.height * 0.018,
                                    color: Color(0xffd4af37),
                                    fontFamily: 'SatoshiMedium'),
                              )
                            ],
                          ),
                          Divider(),
                          SizedBox(height: mQuery.size.height*0.01,),
                          Row(
                            children: [
                              Image.asset(
                                "assets/images/phonepe.png",
                                width: 30,
                              ),
                              SizedBox(width: mQuery.size.width * 0.07),
                              Text(
                                "PhonePe",
                                style: TextStyle(
                                    fontSize: mQuery.size.height * 0.019,
                                    fontFamily: 'SatoshiMedium'),
                              ),
                              Expanded(child: SizedBox()),
                              Radio(
                                value: 2,
                                groupValue: selectedPaymentMethod,
                                onChanged: (int? value) {
                                  setState(() {
                                    selectedPaymentMethod = value!;
                                  });
                                },
                                activeColor: Color(0xffd4af37),
                              ),
                            ],
                          ),
                          SizedBox(height: mQuery.size.height*0.016,),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/images/google-pay.svg",
                                width: 30,
                              ),
                              SizedBox(width: mQuery.size.width * 0.07),
                              Text(
                                "GPay",
                                style: TextStyle(
                                    fontSize: mQuery.size.height * 0.019,
                                    fontFamily: 'SatoshiMedium'),
                              ),
                              Expanded(child: SizedBox()),
                              Radio(
                                value: 3,
                                groupValue: selectedPaymentMethod,
                                onChanged: (int? value) {
                                  setState(() {
                                    selectedPaymentMethod = value!;
                                  });
                                },
                                activeColor: Color(0xffd4af37),
                              ),
                            ],
                          ),
                          SizedBox(height: mQuery.size.height*0.016,),
                          Row(
                            children: [
                              Container(
                                width: mQuery.size.width * 0.13,
                                height: mQuery.size.height * 0.04,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(6)),
                                child: SvgPicture.asset(
                                  "assets/images/paytm.svg",
                                  width: 30,
                                ),
                              ),
                              SizedBox(width: mQuery.size.width * 0.03),
                              Text(
                                "Paytm",
                                style: TextStyle(
                                    fontSize: mQuery.size.height * 0.019,
                                    fontFamily: 'SatoshiMedium'),
                              ),
                              Expanded(child: SizedBox()),
                              Radio(
                                value: 4,
                                groupValue: selectedPaymentMethod,
                                onChanged: (int? value) {
                                  setState(() {
                                    selectedPaymentMethod = value!;
                                  });
                                },
                                activeColor: Color(0xffd4af37),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: mQuery.size.height * 0.028),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                        horizontal: mQuery.size.width*0.045,
                        vertical: mQuery.size.height*0.023
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Credit/ Debit Cards",
                                style: TextStyle(
                                    fontSize: mQuery.size.height * 0.02,
                                    fontFamily: 'SatoshiMedium'),
                              ),
                              Expanded(child: SizedBox()),
                              Container(
                                width: mQuery.size.width * 0.04,
                                height: mQuery.size.height * 0.05,
                                decoration: BoxDecoration(
                                    color: Color(0xffd4af37),
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Icon(Icons.add,
                                      color: Colors.white, size: 15),
                                ),
                              ),
                              SizedBox(width: mQuery.size.width * 0.026),
                              Text(
                                "Add New",
                                style: TextStyle(
                                    fontSize: mQuery.size.height * 0.018,
                                    color: Color(0xffd4af37),
                                    fontFamily: 'SatoshiMedium'),
                              )
                            ],
                          ),
                          Divider(),
                          SizedBox(height: mQuery.size.height*0.01,),
                          Row(
                            children: [
                              Container(
                                width: mQuery.size.width * 0.13,
                                height: mQuery.size.height * 0.04,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(6)),
                                child: SvgPicture.asset(
                                    "assets/images/visa_card.svg"),
                              ),
                              SizedBox(width: mQuery.size.width * 0.03),
                              Text(
                                "6220 XXXX XXXX 4452",
                                style: TextStyle(
                                    fontSize: mQuery.size.height * 0.019,
                                    fontFamily: 'SatoshiMedium'),
                              ),
                              Expanded(child: SizedBox()),
                              Radio(
                                value: 5,
                                groupValue: selectedPaymentMethod,
                                onChanged: (int? value) {
                                  setState(() {
                                    selectedPaymentMethod = value!;
                                  });
                                },
                                activeColor: Color(0xffd4af37),
                              ),
                            ],
                          ),
                          SizedBox(height: mQuery.size.height*0.016,),
                          Row(
                            children: [
                              Container(
                                width: mQuery.size.width * 0.13,
                                height: mQuery.size.height * 0.04,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(6)),
                                child: SvgPicture.asset(
                                    "assets/images/mastercard.svg"),
                              ),
                              SizedBox(width: mQuery.size.width * 0.033),
                              Text(
                                "5555 XXXX XXXX 8888",
                                style: TextStyle(
                                    fontSize: mQuery.size.height * 0.019,
                                    fontFamily: 'SatoshiMedium'),
                              ),
                              Expanded(child: SizedBox()),
                              Radio(
                                value: 6,
                                groupValue: selectedPaymentMethod,
                                onChanged: (int? value) {
                                  setState(() {
                                    selectedPaymentMethod = value!;
                                  });
                                },
                                activeColor: Color(0xffd4af37),
                              ),
                            ],
                          ),
                          SizedBox(height: mQuery.size.height*0.016,),
                          Row(
                            children: [
                              Container(
                                width: mQuery.size.width * 0.13,
                                height: mQuery.size.height * 0.04,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(6)),
                                child: SvgPicture.asset(
                                    "assets/images/amex.svg"),
                              ),
                              SizedBox(width: mQuery.size.width * 0.035),
                              Text(
                                "4111 XXXX XXXX 7777",
                                style: TextStyle(
                                    fontSize: mQuery.size.height * 0.019,
                                    fontFamily: 'SatoshiMedium'),
                              ),
                              Expanded(child: SizedBox()),
                              Radio(
                                value: 7,
                                groupValue: selectedPaymentMethod,
                                onChanged: (int? value) {
                                  setState(() {
                                    selectedPaymentMethod = value!;
                                  });
                                },
                                activeColor: Color(0xffd4af37),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: mQuery.size.height * 0.025,),
                ],
              ),
            ),
            Expanded(child: SizedBox()),
            GestureDetector(
              onTap: ()
              {
                if(selectedPaymentMethod == -1)
                  {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Color(0xffFF3131),
                        content: Text("Please Choose any Payment Method",
                          style: TextStyle(
                            fontFamily: 'SatoshiMedium',
                            color: Color(0xffffffff)
                          ),),
                      ),
                    );
                  }
                else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Theme(
                        // Create a Theme widget to set the background color
                        data: ThemeData(
                          // Set the background color to white
                          backgroundColor: Colors.white,
                        ),
                        child: AlertDialog(
                          title: Column(
                            children: [
                              Image.asset("assets/images/paymentS.png"),
                              SizedBox(height: mQuery.size.height*0.032,),
                              Text(
                                "Payment Successful",
                                style: TextStyle(
                                    fontFamily: 'SatoshiBold',
                                    fontSize: 14,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          content: Text(
                            "Thank you for your payment!",
                            style: TextStyle(fontFamily: 'SatoshiMedium'),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
                                  return BotNav();
                                }),
                                        (route) => false);
                              },
                              child: Text(
                                "Ok",
                                style: TextStyle(
                                    color: Color(0xffB68D40), fontFamily: 'SatoshiMedium'),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }
              },
              child: Container(
                width: double.infinity,
                height: mQuery.size.height*0.055,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                        colors: [
                          Color(0xff966f33),
                          Color(0xffac7a48)
                        ]
                    )
                ),
                child: Center(
                  child: Text("Make Payment",style: TextStyle(
                      fontFamily: 'SatoshiBold',
                      fontSize: 16,
                      color: Colors.white
                  ),),
                ),
              ),
            ),
            SizedBox(height: mQuery.size.height*0.032,)
          ],
        )
        ),
    );
  }
}
