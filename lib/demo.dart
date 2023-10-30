// import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:home_service/pages/login.dart';
// // import 'package:home_service_management/pages/login.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Home Service Registration',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: RegistrationPage(),
//     );
//   }
// }

// class RegistrationPage extends StatefulWidget {
//   const RegistrationPage({Key? key}) : super(key: key);

//   @override
//   _RegistrationPageState createState() => _RegistrationPageState();
// }

// class _RegistrationPageState extends State<RegistrationPage> {
//   final _formKey = GlobalKey<FormState>();
//   final nameController = TextEditingController();
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   final phoneController = TextEditingController();
//   final addressController = TextEditingController();

//   @override
//   void dispose() {
//     nameController.dispose();
//     emailController.dispose();
//     passwordController.dispose();
//     phoneController.dispose();
//     addressController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         title: Center(
//           child: Text(
//             "Create Account",
//             style: TextStyle(
//               fontSize: 27,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ),
//         elevation: 0,
//       ),
//       body: Stack(
//         children: [
//           SingleChildScrollView(
//             child: Container(
//               padding: EdgeInsets.only(
//                   top: MediaQuery.of(context).size.height * 0.05),
//               child: Form(
//                 key: _formKey,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(left: 35, right: 35),
//                       child: Column(
//                         children: [
//                           TextFormField(
//                             controller: nameController,
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Please enter your name';
//                               }
//                               return null;
//                             },
//                             style: TextStyle(color: Colors.white),
//                             decoration: InputDecoration(
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide(
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide(
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               hintText: "Name",
//                               hintStyle: TextStyle(color: Colors.white),
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 30,
//                           ),
//                           TextFormField(
//                             controller: emailController,
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Please enter your email';
//                               }
//                               return null;
//                             },
//                             style: TextStyle(color: Colors.white),
//                             decoration: InputDecoration(
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide(
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide(
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               hintText: "Email",
//                               hintStyle: TextStyle(color: Colors.white),
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 30,
//                           ),
//                           TextFormField(
//                             controller: passwordController,
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Please enter a password';
//                               }
//                               return null;
//                             },
//                             style: TextStyle(color: Colors.white),
//                             obscureText: true,
//                             decoration: InputDecoration(
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide(
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide(
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               hintText: "Password",
//                               hintStyle: TextStyle(color: Colors.white),
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 30,
//                           ),
//                           TextFormField(
//                             controller: phoneController,
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Please enter your phone number';
//                               }
//                               return null;
//                             },
//                             style: TextStyle(color: Colors.white),
//                             decoration: InputDecoration(
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide(
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide(
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               hintText: "Phone Number",
//                               hintStyle: TextStyle(color: Colors.white),
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 30,
//                           ),
//                           TextFormField(
//                             controller: addressController,
//                             validator: (value) {
//                               if (value == null || value.isEmpty) {
//                                 return 'Please enter your address';
//                               }
//                               return null;
//                             },
//                             style: TextStyle(color: Colors.white),
//                             decoration: InputDecoration(
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide(
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide(
//                                   color: Colors.black,
//                                 ),
//                               ),
//                               hintText: "Address",
//                               hintStyle: TextStyle(color: Colors.white),
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 18,
//                           ),
//                           Padding(
//                             padding:
//                                 const EdgeInsets.only(left: 10, bottom: 20),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Already have an account? ',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 16,
//                                   ),
//                                 ),
//                                 GestureDetector(
//                                   onTap: () {
//                                     Navigator.push(
//                                         context,
//                                         MaterialPageRoute(
//                                             builder: (context) => LoginPage()));
//                                   },
//                                   child: Text(
//                                     'Sign in',
//                                     style: TextStyle(
//                                       color: Colors.blue,
//                                       fontSize: 16,
//                                       decoration: TextDecoration.underline,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 'Sign Up',
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 27,
//                                   fontWeight: FontWeight.w700,
//                                 ),
//                               ),
//                               CircleAvatar(
//                                 radius: 30,
//                                 backgroundColor:
//                                     Color.fromRGBO(28, 127, 159, 1),
//                                 child: IconButton(
//                                   color: Colors.white,
//                                   onPressed: () {
//                                     if (_formKey.currentState!.validate()) {
//                                       FirebaseAuth.instance
//                                           .createUserWithEmailAndPassword(
//                                         email: emailController.text,
//                                         password: passwordController.text,
//                                       )
//                                           .then(
//                                         (value) {
//                                           Navigator.pop(context);
//                                           var snackBar = const SnackBar(
//                                             content: Text(
//                                                 "Account created you can login in now"),
//                                           );

//                                           ScaffoldMessenger.of(context)
//                                               .showSnackBar(snackBar);
//                                         },
//                                       ).onError(
//                                         (error, stackTrace) {
//                                           var snackBar = const SnackBar(
//                                             content: Text(
//                                                 "Failed to create account try again"),
//                                           );

//                                           ScaffoldMessenger.of(context)
//                                               .showSnackBar(snackBar);
//                                         },
//                                       );
//                                     }
//                                   },
//                                   icon: Icon(
//                                     Icons.arrow_forward,
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 20,
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }