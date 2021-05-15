import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:flutter_linkify/flutter_linkify.dart';
//import 'package:otp_text_field/otp_field.dart';
//import 'package:otp_text_field/style.dart';
//import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';


 
void main() {
  runApp(MaterialApp(
    title: 'Flutter Navigate to Another Activity Screen',
    home: HomeScreen(),
    //home: OTPverification(),
  ));
}
 
class HomeScreen extends StatelessWidget {
 
  gotoSecondActivity(BuildContext context){
    
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SecondScreen()),
    );
    
  }
 
  @override
  Widget build(BuildContext context) {
    var screen_height=MediaQuery.of(context).size.height;
    var screen_width=MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Home Activity Screen'),
      // ),
      body: 
      //Center(child:
      SingleChildScrollView(
                    //scrollDirection: Axis.vertical,
                    //padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(
          children: <Widget>[
            Container(
              //color: Colors.blue,
              child:Image(image: AssetImage('assets/share2carelogo.png')),
              padding: EdgeInsets.fromLTRB(10, 100, 10, 100),
            ),
            Container(
              //color: Colors.blue,
              padding: EdgeInsets.fromLTRB(10, 10, 10, 100),
              child: Column(
                children: <Widget>[
                  Text("Welcome To",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,)),
                  Text("Time Share",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,)),
                ]
              ),
            ),

//...
          Container(
            //color: Colors.red,
            margin: EdgeInsets.fromLTRB(screen_width/6, 10, screen_width/6, 10),
            width: double.infinity,
            child: Column(
              children: <Widget>[
            RaisedButton(
              child:SizedBox(
                width: double.infinity,  
                child:Text('LOGIN',textAlign: TextAlign.center),
              ),
              color: Colors.blue,
              textColor: Colors.white,
              //padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
                side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))
              ),
              onPressed: () {
                gotoSecondActivity(context);
              },
            ),

            RaisedButton(
              child:SizedBox(
                width: double.infinity,  
                child: Text('REGISTER',textAlign: TextAlign.center),
              ),
              color: Colors.white,
              textColor: Colors.blue,
              //padding: EdgeInsets.fromLTRB(85, 10, 85, 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))
              ),
              onPressed: () {
                //gotoSecondActivity(context);
              }
            ),
              ]))
//..]))
        ])
      ),
      //),
    );
  }
}

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%/ 
class SecondScreen extends StatelessWidget {
 
  goBackToPreviousScreen(BuildContext context){
    Navigator.pop(context);
  }
  gotoSecondActivity(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }
 
  @override
  Widget build(BuildContext context) {
    var screen_height=MediaQuery.of(context).size.height;
    var screen_width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        //foregroundColor: Colors.black,
        title: Text("Terms & conditions", style: TextStyle(color: Colors.black)),
      ),
      body: 
      //Center(child:
      SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(10, 15, 10, 7),
              child:Text("Review Terms & conditions",style: TextStyle(fontSize: 17,)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
              
              child: Column(children: [
                Text("Terms and Conditions agreements act as a legal contract between you (the company) who has the website or mobile app and the user who access your website and mobile app.\n",textAlign: TextAlign.center,),
                  
                Text("Having a Terms and Conditions agreement is completely optional. No laws require you to have one. Not even the super-strict and wide-reaching General Data Protection Regulation (GDPR). It's up to you to set the rules and guidelines that the user must agree to.\n",textAlign: TextAlign.center, ),
                  
                Text("You can think of your Terms and Conditions agreement as the legal agreement where you maintain your rights to exclude users from your app in the event that they abuse your app, where you maintain your legal rights against potential app abusers, and so on.",textAlign: TextAlign.center,),
                  
              ],)
              

            ),

            Container(
              child: InkWell(
                child: Text("Terms & conditions",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,)),
                onTap: () async {
                  if (await canLaunch("https://google.com")) {
                    await launch("https://google.com");
                  }
                }
              )
            ),
            
            Container(//Link 2
              child: InkWell(
                child: Text("Privacy policy",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,)),
                onTap: () async {
                  if (await canLaunch("https://yahoo.com")) {
                    await launch("https://yahoo.com");
                  }
                }
              )
            ),

          Container(
            //color: Colors.red,
            margin: EdgeInsets.fromLTRB(screen_width/6, 10, screen_width/6, 10),
            width: double.infinity,
            child: Column(
              children: <Widget>[
                RaisedButton(
                  
                child: 
                  SizedBox(
                    width: double.infinity, 
                    child:Text('I agree with this',textAlign: TextAlign.center,),
                  ),
                color: Colors.blue,
                textColor: Colors.white,
                //padding: EdgeInsets.fromLTRB(69, 10, 69, 10),
                //padding: EdgeInsets.fromLTRB(double.infinity, 10, double.infinity, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                  side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))
                ),
                onPressed: () {
                  gotoSecondActivity(context);
                },
                ),
                
                RaisedButton(
                child: 
                  SizedBox(
                    width: double.infinity,
                    child:Text('Decline',textAlign: TextAlign.center,),
                  ),
                color: Colors.white,
                textColor: Colors.blue,
                //padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                //padding: EdgeInsets.fromLTRB(screen_width/10, 10, screen_width/10, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))
                ),
                onPressed: () {
                  goBackToPreviousScreen(context);
                }
              ),
            ])
          ),

          ]
        )
      ),      
      //),
    );
  }
}

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

class LoginScreen extends StatelessWidget {
 
  goBackToPreviousScreen(BuildContext context){
    Navigator.pop(context);
  }

  gotoSecondActivity(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OTPverification()),
    );
  }

  @override
  Widget build(BuildContext context) {
    var screen_height=MediaQuery.of(context).size.height;
    var screen_width=MediaQuery.of(context).size.width;

    return Scaffold(

      body: 
      //Center(child:
        SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              //color:Colors.orange,
              margin: EdgeInsets.fromLTRB(10,screen_width/6, 10, screen_width/8),
              child:Text("Login & get started",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,)),
            ),

            Container(
              //color: Colors.red,
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(screen_width/10, 0, screen_width/10,0),
              child:Text("Enter your phone number to get OTP,\nThanks.\n",textAlign: TextAlign.left,style: TextStyle(fontSize: 15)),
            ),

            Container(
              //color: Colors.red,
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(screen_width/10, 0, screen_width/10,0),
              child:Text("Mobile Phone",textAlign: TextAlign.left,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(screen_width/10, 5, screen_width/10,0),
              padding: EdgeInsets.fromLTRB(10,2,10,2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.red)
              ),
              child:TextField(
                keyboardType: TextInputType.number, 
                decoration: InputDecoration(
                  border: InputBorder.none,
                  //labelText: "Phone number",
                  hintText: "Enter your phone number",
                ),
                //validator: numberValidator,
                textAlign: TextAlign.left,
              ),
            ),

            Container(
              //color: Colors.red,
              margin: EdgeInsets.fromLTRB(screen_width/6, 10, screen_width/6, 10),
              width: double.infinity,
              child: Column(
                children: <Widget>[
              RaisedButton(
                child:SizedBox(
                  width: double.infinity,  
                  child:Text('Send OTP',textAlign: TextAlign.center),
                ),
                color: Colors.blue,
                textColor: Colors.white,
                //padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                  side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))
                ),
                onPressed: () {
                  gotoSecondActivity(context);
                },
              ),

              ])
            )


          ]
        )
      ),
    //),

    );
  }
}

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

class OTPverification extends StatelessWidget {
 
  goBackToPreviousScreen(BuildContext context){
    Navigator.pop(context);
  }
  gotoSecondActivity(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OTPverification()),
    );
  }

  @override
  Widget build(BuildContext context) {
    var screen_height=MediaQuery.of(context).size.height;
    var screen_width=MediaQuery.of(context).size.width;

    return Scaffold(

      body: SingleChildScrollView(
          //scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              //color: Colors.red,
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(screen_width/10, 50, screen_width/10,0),
              child:Text("Enter 4 digit OTP code sent to\n9723572433\n",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
            ),
//###

            Container(
              margin: EdgeInsets.fromLTRB(screen_width/2.5, 5, screen_width/2.5,0),
              padding: EdgeInsets.fromLTRB(10,2,10,0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.red)
              ),
              child:TextField(
                maxLength: 4,
                keyboardType: TextInputType.number, 
                decoration: InputDecoration(
                  border: InputBorder.none,
                  counterText: "",
                ),
                textAlign: TextAlign.left,
              ),
            ),

        // OtpTextField(
          
        //      numberOfFields: 5,
        //      borderColor: Colors.grey[150],
            
        //     showFieldAsBox: true, //set to true to show as box or false to show as dash
        //     onCodeChanged: (String code) {
        //         //handle validation or checks here           
        //     },
        //     onSubmit: (String verificationCode){
        //       showDialog(
        //           context: context,
        //           builder: (context){
        //             return AlertDialog(
        //               title: Text("Verification Code"),
        //               content: Text('Code entered is $verificationCode'),
        //             );
        //           }
        //       );
        //     }, // end onSubmit
        //   ),



//###
            Row(
              children: <Widget>[
                Container(
                  //color: Colors.red,
                  //width: double.infinity,
                  padding: EdgeInsets.fromLTRB(screen_width/10, 10, 0,5),
                  child:Text("Didn't receive OTP yet? ",textAlign: TextAlign.center),
                ),

                Container(//Link 2
                //color: Colors.green,
                  padding: EdgeInsets.fromLTRB(5, 10, screen_width/10,5),
                  child: InkWell(
                    child: Text("Resend",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,)),
                    onTap: () async {
                      if (await canLaunch("https://yahoo.com")) {
                        await launch("https://yahoo.com");
                      }
                    }
                  )
                ),
              ],
            ),

            Container(
              child: InkWell(
                child: Text("Change your phone number",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,)),
                onTap: () async {
                  if (await canLaunch("https://google.com")) {
                    await launch("https://google.com");
                  }
                }
              )
            ),
            
            Container(//Link 2
              child: InkWell(
                child: Text("Register for an account",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,)),
                onTap: () async {
                  if (await canLaunch("https://yahoo.com")) {
                    await launch("https://yahoo.com");
                  }
                }
              )
            ),

            Container(
              //color: Colors.red,
              margin: EdgeInsets.fromLTRB(screen_width/6, 10, screen_width/6, 10),
              width: double.infinity,
              child: Column(
                children: <Widget>[
              RaisedButton(
                child:SizedBox(
                  width: double.infinity,  
                  child:Text('Submit OTP',textAlign: TextAlign.center),
                ),
                color: Colors.blue,
                textColor: Colors.white,
                //padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                  side: BorderSide(color: Color.fromRGBO(0, 160, 227, 1))
                ),
                onPressed: () {
                  //gotoSecondActivity(context);
                },
              ),

              ])
            )

            //PinEntryTe

          ],
        )
      ),
    //),
    
    
    //Here
    );
  }
}