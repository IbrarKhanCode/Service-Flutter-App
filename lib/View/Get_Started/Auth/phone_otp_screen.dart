import 'package:flutter/material.dart';
import 'package:service_app/View/Get_Started/Auth/signup_screen.dart';
import 'package:service_app/View/Screens/profile_screen.dart';

class PhoneOtpScreen extends StatefulWidget {
  const PhoneOtpScreen({super.key});

  @override
  State<PhoneOtpScreen> createState() => _PhoneOtpScreenState();
}

class _PhoneOtpScreenState extends State<PhoneOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 0.8,
      ),
      body: Column(
        children: [
          SizedBox(height: 40,),
          Row(
            children: [
              SizedBox(width: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                  child: Icon(Icons.arrow_back,color: Colors.black,size: 30,)),
            ],
          ),
          SizedBox(height: 50,),
          Text('Enter OTP',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 28),),
          SizedBox(height: 100,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 2,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                ),
              ),
              SizedBox(width: 20,),
              Container(
                height: 2,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                ),
              ),
              SizedBox(width: 20,),
              Container(
                height: 2,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                ),
              ),
              SizedBox(width: 20,),
              Container(
                height: 2,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                ),
              ),
            ],
          ),
          SizedBox(height: 40,),
          Text('RESEND',style: TextStyle(color: Colors.grey),),

          SizedBox(height: 40,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
            },
            child: Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                  color:    Color(0xffAC1BF5),
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Center(
                child: Text(
                  "Continue",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
