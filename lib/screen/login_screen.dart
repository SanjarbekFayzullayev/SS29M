import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData =MediaQuery.of(context);
    var size=mediaQueryData.size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          decoration:  const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/bg.png"),fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Lottie.asset("assets/lottie/gril.json",width: 240,height: 240,fit:BoxFit.cover),
                  const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  SizedBox(
                    height: size.height *0.04,
                  ),
                  SizedBox(
                    width: size.width *0.88,
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        hintText: "Enter you number",
                        hintStyle: TextStyle(color: Colors.grey),
                        labelText: "Enter you number",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height *0.02,
                  ),
                  SizedBox(
                    width:size.width *0.88,
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter you password",
                        hintStyle: TextStyle(color: Colors.grey),
                        labelText: "Enter you password",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child:  Padding(
                        padding: EdgeInsets.all(size.height *0.01),
                        child: const Text("Forget password ?")),
                  ),
                  SizedBox(
                    height:size.height*0.01,
                  ),
                  InkWell(
                    onTap: () {
                    },
                    child:  SizedBox(
                      width: size.width * 0.88,
                      height: 50,
                      child: const Material(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                        color: Colors.blue,
                        child: Center(
                          child: Text(
                            "L o g i n",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Text("No accaunt yet ?"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: () {},
                          child: const Text(
                            "Sing up now",
                            style: TextStyle(color: Colors.blue),
                          )),
                      const Icon(
                        Icons.keyboard_double_arrow_right,
                        color: Colors.blue,
                      ),
                    ],
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




