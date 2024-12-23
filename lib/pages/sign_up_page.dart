// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:footcraze_frontend/providers/auth_provider.dart';
import 'package:footcraze_frontend/theme.dart';
import 'package:footcraze_frontend/widget/loading_button.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController(text: '');

  TextEditingController usernameController = TextEditingController(text: '');

  TextEditingController emailController = TextEditingController(text: '');

  TextEditingController passwordController = TextEditingController(text: '');

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {

    AuthProvider authProvider = Provider.of<AuthProvider>(context);

    handleSignUp() async {
      setState(() {
        isLoading = true;
      });

      if (await authProvider.register(
        name: nameController.text,
        username: usernameController.text,
        email: emailController.text,
        password: passwordController.text
      )) {
        Navigator.pushNamed(context, '/home');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: alertColor,
            content: Text(
              'Register has been failed',
              textAlign: TextAlign.center,
            )
          )
        );
      }

      setState(() {
        isLoading = false;
      });
    }

    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Text Title
            Text(
              'Sign Up',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold
              )
            ),

            // Text Description
            SizedBox(height: 2,),
            Text(
              'Sign Up and Happy Shoping',
              style: subtitleTextStyle.copyWith(
                fontSize: 14,
                fontWeight: regular
              ),
            )
          ],
        ),
      );
    }

    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Text Label
            Text(
              'Full Name',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium
              ),
            ),

            // Box Bayangan Untuk Jarak Bawah
            SizedBox(
              height: 12,
            ),

            // Input Field
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16
              ),
              decoration: BoxDecoration(
                color: bgTwoColor,
                borderRadius: BorderRadius.circular(12)
              ),

              // Isi Input Field
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/icon_fullname.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),

                    Expanded(
                      child: TextFormField(
                        controller: nameController,
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your fullname',
                          hintStyle: subtitleTextStyle
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Text Label
            Text(
              'Username',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium
              ),
            ),

            // Box Bayangan Untuk Jarak Bawah
            SizedBox(
              height: 12,
            ),

            // Input Field
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16
              ),
              decoration: BoxDecoration(
                color: bgTwoColor,
                borderRadius: BorderRadius.circular(12)
              ),

              // Isi Input Field
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/icon_username.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),

                    Expanded(
                      child: TextFormField(
                        controller: usernameController,
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your username',
                          hintStyle: subtitleTextStyle
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Text Label
            Text(
              'Email Address',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium
              ),
            ),

            // Box Bayangan Untuk Jarak Bawah
            SizedBox(
              height: 12,
            ),

            // Input Field
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16
              ),
              decoration: BoxDecoration(
                color: bgTwoColor,
                borderRadius: BorderRadius.circular(12)
              ),

              // Isi Input Field
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/icon_email.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),

                    Expanded(
                      child: TextFormField(
                        controller: emailController,
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your email address',
                          hintStyle: subtitleTextStyle
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            // Text Label
            Text(
              'Password',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium
              ),
            ),

            // Box Bayangan Untuk Jarak Bawah
            SizedBox(
              height: 12,
            ),

            // Input Field
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16
              ),
              decoration: BoxDecoration(
                color: bgTwoColor,
                borderRadius: BorderRadius.circular(12)
              ),

              // Isi Input Field
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/icon_password.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 16,
                    ),

                    Expanded(
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your password',
                          hintStyle: subtitleTextStyle
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget buttonSignUp() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        height: 50,
        width: double.infinity,

        child: TextButton(
          onPressed: handleSignUp,
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            )
          ),
          child: Text(
            'Sign Up',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium
            ),
          )
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account? ',
              style: subtitleTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Sign In',
                style: purpleTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgOneColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              nameInput(),
              usernameInput(),
              emailInput(),
              passwordInput(),
              isLoading ? LoadingButton() : buttonSignUp(),
              Spacer(),
              footer()
            ],
          ),
        ),
      ),
    );
  }
}