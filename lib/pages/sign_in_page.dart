import 'package:flutter/material.dart';
import 'package:footcraze_frontend/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Text Title
            Text(
              'Login',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold
              )
            ),

            // Text Description
            SizedBox(height: 2,),
            Text(
              'Sign In to Continue',
              style: subtitleTextStyle.copyWith(
                fontSize: 14,
                fontWeight: regular
              ),
            )
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 40),
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

    Widget buttonSignIn() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        height: 50,
        width: double.infinity,

        child: TextButton(
          onPressed: (){},
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)
            )
          ),
          child: Text(
            'Sign In',
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
              'Don\'t have an account? ',
              style: subtitleTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            Text(
              'Sign Up',
              style: purpleTextStyle.copyWith(
                fontSize: 12,
                fontWeight: medium
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
              emailInput(),
              passwordInput(),
              buttonSignIn(),
              Spacer(),
              footer()
            ],
          ),
        ),
      ),
    );
  }
}