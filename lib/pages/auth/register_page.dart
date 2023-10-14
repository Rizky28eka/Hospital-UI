import 'package:flutter/material.dart';
import 'package:hospitalui/pages/auth/login_page.dart';
import 'package:hospitalui/pages/home_page.dart';
import 'package:hospitalui/widgets/textfield/CustTextField.dart';
import '../../AppStyle.dart';
import '../../widgets/textfield/EmailTextField.dart';
import '../../widgets/textfield/PasswordTextField.dart';
import '../appointment_screen.dart';
import '../button_custom.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 32),
                  Center(
                    child: Container(
                      width: 220,
                      height: 220,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/doctors.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  CustTextField(
                      controller: TextEditingController(),
                      hintText: "Username"),
                  SizedBox(height: 20),
                  EmailTextField(
                    controller: TextEditingController(),
                    hintText: 'Email',
                  ),
                  SizedBox(height: 20),
                  PasswordTextField(
                    controller: TextEditingController(),
                    hintText: 'Password',
                  ),
                  SizedBox(height: 20),
                  CustomButton(
                    text: 'Register',
                    buttonColor: AppsColor.DarkGreen,
                    width: 250,
                    height: 50,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: AppsColor.DarkGreen,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
