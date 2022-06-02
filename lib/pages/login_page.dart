import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loging_process/services/const_service.dart';

class LoginPage extends StatefulWidget {
  static const id = "/login_page";

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 80, 25, 55),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // #body
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // #@appLogo
                SvgPicture.asset("assets/icons/ic_logo.svg"),
                const SizedBox(height: 25),
                // #segment-controller
                Container(
                  padding: const EdgeInsets.all(5),
                  width: 220,
                  height: 47.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.5),
                      color: AppConstants.colorUnSelectedButton),
                  child: Row(
                    children: [
                      // #log in
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 5,
                            primary: AppConstants.colorSelectedButton,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            "Log in",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      // #register
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            "Register",
                              style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              color: AppConstants.colorText,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                // #email
                const Text(
                    "Email address",
                    style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    color: AppConstants.colorText
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppConstants.colorField,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'you@example.com'
                    ),
                  ),
                ),
              ],
            ),
            // #footer
            Column(),
          ],
        ),
      ),
    );
  }
}
