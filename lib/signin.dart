import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  Signin({super.key});
  @override
  State<Signin> createState() => _MySignin();
}

class _MySignin extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              //خاصية التعامل مع الالوان داخل الشاشة عن طريق اضافة مجموعة الوان مع بعض
              gradient: LinearGradient(
                begin: Alignment(1.0, -1.0), //بداية اللون
                end: Alignment(-1.0, 1.1), //نهاية اللون
           
                stops: [
                  .5,
                  .99,
                ],
              

                colors: [
                  Color(0xB81684EB), //1
                //  Color.fromRGBO(222, 191, 37, 0.604), //2
                  Color.fromRGBO(97, 93, 69, 0.604), //2
                ],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 60, left: 20),
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontFamily: "MiltonianTattoo",
                  fontSize: 60,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(225, 232, 239, 0.7),
                  // color: Color.fromRGBO(108, 92, 12, 0.873),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200, bottom: 20),
            child: Container(
              //margin: const EdgeInsets.only(left: 20, right: 20),
              margin: const EdgeInsets.all(20),
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
             
                color: Color.fromRGBO(225, 232, 239, 0.7), //3

                borderRadius: BorderRadius.only(
                  // topLeft: Radius.circular(60),
                  // topRight: Radius.circular(60),
                  topLeft: Radius.elliptical(200, 50),
                  topRight: Radius.elliptical(200, 50),
                  bottomLeft: Radius.elliptical(200, 50),
                  bottomRight: Radius.elliptical(200, 50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: ListView(children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          label: Text(
                            'Full Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              // color: Color.fromARGB(255, 4, 125, 162),
                              color: Color.fromRGBO(135, 113, 1, 1),
                            ),
                          ),
                          //  hintText: "@gmail.com",
                          //  hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                        TextField(
                        decoration: InputDecoration(
                          label: Text(
                            'Gmail',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              // color: Color.fromARGB(255, 4, 125, 162),
                              color: Color.fromRGBO(135, 113, 1, 1),
                            ),
                          ),
                          //  hintText: "@gmail.com",
                          //  hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                        TextField(
                        decoration: InputDecoration(
                          //  suffixIcon: IconButton.outlined(
                          //     onPressed: () {},
                          //     icon: Icon(Icons.visibility),
                          //     iconSize: 15,
                              
                          //    ),
                          label: Text(
                            'Password',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              // color: Color.fromARGB(255, 4, 125, 162),
                              color: Color.fromRGBO(135, 113, 1, 1),
                            ),
                          ),
                          //  hintText: "@gmail.com",
                          //  hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            // suffixIcon: IconButton.outlined(
                            //   onPressed: () {},
                            //   icon: Icon(Icons.visibility),
                            //   iconSize: 20,
                            // ),
                            label: Text(
                              'Confirm Password',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(135, 113, 1, 1),
                              ),
                            )),
                      ),
                      // Align(
                      //   alignment: Alignment.centerRight,
                      //   child: TextButton(
                      //     onPressed: () {},
                      //     child: Text(
                      //       'Forgot Password?',
                      //       style: TextStyle(
                      //           fontWeight: FontWeight.w700,
                      //           color: Color.fromARGB(255, 26, 66, 78)),
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                               // fontFamily: "MiltonianTattoo",
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        width: 250,
                        height: 39,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            begin: Alignment(1.0, -1.0), //بداية اللون
                            end: Alignment(-1.0, 1.0), //نهاية اللون
                            stops: [
                              .2,
                              .8,
                            ],

                            colors: [
                              Color(0xB81684EB), //1
                              Color.fromRGBO(117, 108, 73, 0.725), //2
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Column(
                          children: [
                            Text(
                              "You have Accout?",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color.fromARGB(255, 148, 157, 160),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                 setState(() {
                              Navigator.pushNamed(context, '/login');
                            });
                              },
                              child: Text(
                                "Log In",
                                style: TextStyle(
                                 // fontFamily: "MiltonianTattoo",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  // color: Color.fromARGB(255, 56, 71, 79),
                                  color: Color.fromRGBO(135, 113, 1, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
   //    gradient: LinearGradient(
                //   begin: Alignment(1.0, -1.0), //بداية اللون
                //   end: Alignment(-1.0, 1.1), //نهاية اللون
                //   stops: [
                //     .1,
                //     .2,
                //     .3,
                //     .5,
                //     .8,
                //     .9,
                //   ],
                //   colors: [
                //     Color.fromRGBO(23, 101, 172, 100), //1
                //     Color.fromRGBO(76, 146, 210, 100), //2
                //     Color.fromRGBO(166, 201, 233, 49.69), //3
                //     Color.fromRGBO(255, 255, 255, 0), //4
                //     Color.fromRGBO(144, 189, 231, 0.769), //5
                //     Color.fromRGBO(76, 146, 210, 100), //6
                //   ],
                // ),