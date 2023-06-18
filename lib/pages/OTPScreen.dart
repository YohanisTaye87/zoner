import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../Widget/LoginButton.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width * 0.5,
            child: Image.asset('Assets/Images/Logo.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 28.0, top: 5),
            child: Column(
              children: [
                Text(
                  "OTP VERIFICATION",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
                Text(
                  "Enter the OTP sent to the mobile",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF6D6D6D),
                    fontSize: 12,
                  ),
                ),
                Text(
                  "number you entered",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF6D6D6D),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15.0,
              horizontal: 10,
            ),
            child: PinCodeTextField(
              appContext: context,
              // controller: controller,
              length: 6,
              cursorHeight: 19,
              cursorColor: Colors.black,
              enableActiveFill: true,
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
              boxShadows: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 1,
                  blurStyle: BlurStyle.normal,
                  spreadRadius: 0,
                  offset: Offset(0, 4),
                )
              ],
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,

                fieldWidth: 50,
                activeFillColor: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                // disabledColor: Colors.grey,

                inactiveColor: Colors.black,
                borderWidth: 1,
                activeColor: Colors.blue,
                selectedColor: Colors.black,
                selectedFillColor: Colors.white,
                inactiveFillColor: Colors.white,
              ),
              onChanged: (value) {
                print(value);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 28.0),
            child: Column(
              children: [
                LoginButton(
                  icon: Icons.person,
                  label: "VERIFY CODE",
                  col: Colors.amber,
                  Tcol: Colors.black,
                  Icol: Colors.yellow,
                  hasIcon: false,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: LoginButton(
                    icon: Icons.person,
                    label: "RESEND CODE(43 secs)",
                    col: Colors.black,
                    Tcol: Colors.white,
                    Icol: Colors.yellow,
                    hasIcon: false,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
