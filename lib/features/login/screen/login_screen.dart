// import 'package:flutter/material.dart';

// import '../../../common/constants/app_size.dart';

// class LoginScreen extends StatelessWidget {
//   static const String routeName = '/login-screen';
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(10),
//             height: height * 0.50,
//             width: width * 0.7,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(15),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Center(
//                   child: Text(
//                     'Login',
//                     style: Theme.of(context).textTheme.bodyMedium!.copyWith(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 22,
//                         ),
//                   ),
//                 ),
//                 gapH16,
//                 Text(
//                   "Email",
//                   style: Theme.of(context).textTheme.bodyMedium!.copyWith(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w600,

//                       ),
//                 ),
//                 gapH12,
//                 SizedBox(
//                   height: 60,
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                       filled: true,
//                       // fillColor: kPrimaryColor,
//                       hintText: 'someone@example.com',
//                       hintStyle: const TextStyle(
//                         fontSize: 14,
//                         // color: kWhiteColor,
//                       ),
//                       enabledBorder: kTextFieldOutline,
//                       focusedBorder: kTextFieldOutline,
//                     ),
//                   ),
//                 ),
//                 gapH12,
//                 Text(
//                   "Password",
//                   style: Theme.of(context).textTheme.bodyMedium!.copyWith(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w600,
//                         color: kPrimaryColor,
//                       ),
//                 ),
//                 gapH12,
//                 SizedBox(
//                   height: 60,
//                   child: TextFormField(
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       filled: true,
//                       // fillColor: kPrimaryColor,
//                       hintText: '*********',
//                       hintStyle: const TextStyle(
//                         fontSize: 16,
//                         // color: kWhiteColor,
//                       ),
//                       enabledBorder: kTextFieldOutline,
//                       focusedBorder: kTextFieldOutline,
//                     ),
//                   ),
//                 ),
//                 Align(
//                   alignment: Alignment.topRight,
//                   child: TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       "Forgot password?",
//                       style: Theme.of(context).textTheme.bodyText1!.copyWith(
//                             color: kPrimaryColor,
//                             fontSize: 14,
//                           ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 60,
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     // style: ElevatedButton.styleFrom(
//                     //   primary: kPrimaryColor,
//                     // ),
//                     onPressed: () {
//                       Navigator.pushNamed(context, Dashboard.id);
//                     },
//                     child: Text(
//                       "Login",
//                       style: Theme.of(context).textTheme.bodyText1!.copyWith(
//                           color: kWhiteColor,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
