import "package:flutter/material.dart";
import 'package:iot_app/res/colors.dart';
import 'package:iot_app/res/constants.dart';


class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    print(logo);
    // TODO: implement createState
    return LoginPageState();
  }

}


class LoginPageState extends State<LoginPage>{

  bool isPassword;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isPassword = true;
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: mainBg,
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 10, left: 16.0,right: 16.0, bottom: 10.0),
        child: Stack(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 70),
              padding: const EdgeInsets.only(top: 80.0,left: 16.0,right: 16.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.0),
                  color: Colors.white
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.perm_contact_calendar),
                        const SizedBox(width: 10.0),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Email"
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      children: <Widget>[
                        Icon(Icons.lock),
                        const SizedBox(width: 10.0),
                        Expanded(
                          child: TextField(
                            obscureText: isPassword,
                            decoration: InputDecoration(
                                hintText: "Password",
                                suffixIcon: GestureDetector(
                                  child: Icon(Icons.remove_red_eye),
                                  onTap: (){
                                    print(isPassword);

                                    setState(() {
                                      isPassword = isPassword ? false : true;
                                    });
                                  },
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30.0),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16.0),
                        width:double.infinity,
                        child: RaisedButton(
                          color: Theme.of(context).primaryColor,
                          textColor: Colors.white,
                          child: Text("Login".toUpperCase()),
                          onPressed: () => Navigator.pushReplacementNamed(context, '/home'),
                        )
                    ),
                    const SizedBox(height: 20.0),
//                    GestureDetector(
//                      child: Text("Forgot Password".toUpperCase(), style: TextStyle(
//                          color: Theme.of(context).primaryColor,
//                          fontWeight: FontWeight.w600
//                      ),),
//                      onTap: (){
//                        Navigator.pushNamed(context, 'recover');
//                      },
//                    ),
//                    const SizedBox(height: 20.0),
//                    Row(
//                      children: <Widget>[
//                        Expanded(child: Divider(color: Colors.grey.shade600,)),
//                        const SizedBox(width: 10.0),
//                        Text("Not a member?",style: smallText,),
//                        const SizedBox(width: 10.0),
//                        Expanded(child: Divider(color: Colors.grey.shade600,)),
//                      ],
//                    ),
//                    const SizedBox(height: 20.0),
//                    GestureDetector(
//                      child: Text("Create Account".toUpperCase(), style: TextStyle(
//                          color: Theme.of(context).primaryColor,
//                          fontWeight: FontWeight.w600
//                      ),),
//                      onTap: (){
//                        Navigator.pushNamed(context, 'register');
//                      },
//                    ),
//                    const SizedBox(height: 20.0),
                  ],
                ),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 20.0),
                alignment: Alignment.center,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset(logo, fit: BoxFit.contain,)),
                ),
          ],
        ),
      ),
    );
  }

}