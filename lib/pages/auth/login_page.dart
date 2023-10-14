import 'package:flutter/material.dart';
import 'package:hospitalui/widgets/buttom_routes.dart';
import '../../AppStyle.dart';
import '../../widgets/textfield/EmailTextField.dart';
import '../../widgets/textfield/PasswordTextField.dart';
import '../button_custom.dart';
import 'register_page.dart';

class LoginPage extends StatelessWidget {
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
                    text: 'Login',
                    buttonColor: AppsColor.DarkGreen,
                    width: 250,
                    height: 50,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ButtonRoutes(),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Register',
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
