// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// //import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:intl_phone_number_input/intl_phone_number_input.dart';

// class SignupPage extends StatefulWidget {
//   const SignupPage({super.key});

//   @override
//   State<SignupPage> createState() => _SignupPageState();
// }

// class _SignupPageState extends State<SignupPage> {
//   PhoneNumber number = PhoneNumber(isoCode: 'KE');
//   final TextEditingController controller = TextEditingController();

//   void getPhoneNumber(String phoneNumber) async {
//     PhoneNumber number =
//         await PhoneNumber.getRegionInfoFromPhoneNumber(phoneNumber, 'US');

//     setState(() {
//       this.number = number;
//     });
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       top: false,
//       child: Scaffold(
//         body: Container(
//           padding: const EdgeInsets.symmetric(vertical: 150, horizontal: 12),
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           child: Column(
//             children: [
//               const Image(
//                 image: AssetImage(
//                   'Assets/Images/zoner.png',
//                 ),
//                 height: 80.0,
//                 width: 300.0,
//                 fit: BoxFit.fill,
//               ),
//               InternationalPhoneNumberInput(
//                 onInputChanged: (PhoneNumber number) {},
//                 onInputValidated: (value) {},
//                 selectorConfig: const SelectorConfig(
//                     selectorType: PhoneInputSelectorType.BOTTOM_SHEET),
//                 ignoreBlank: false,
//                 autoValidateMode: AutovalidateMode.disabled,
//                 initialValue: number,
//                 textFieldController: controller,
//                 formatInput: true,
//                 keyboardType: const TextInputType.numberWithOptions(
//                     signed: true, decimal: true),
//                 inputBorder: const OutlineInputBorder(),
//                 onSaved: (PhoneNumber number) {},
//               ),
//             ],
//           ),
//         ),
//         // body: ListView(
//         //   padding: EdgeInsets.only(top: 80),
//         //   children: [
//         //     Center(
//         //       child: Image(
//         //         image: AssetImage(
//         //           'assets/zoner.png',
//         //         ),
//         //         height: 80.0,
//         //         width: 300.0,
//         //         fit: BoxFit.fill,
//         //       ),
//         //     ),
//         //     Center(
//         //       child: Text(
//         //         'SIGN UP',
//         //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         //       ),
//         //     )
//         //   ],
//         // ),
//       ),
//     );
//   }
// }
