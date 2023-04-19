// import 'package:business_app/common_widget/eight_screen_row.dart';
// import 'package:business_app/common_widget/five_screen_container.dart';
// import 'package:business_app/common_widget/five_screen_raw.dart';
// import 'package:flutter/material.dart';

// class FiveScreen extends StatefulWidget {
//   const FiveScreen({Key? key}) : super(key: key);

//   @override
//   State<FiveScreen> createState() => _FiveScreenState();
// }

// class _FiveScreenState extends State<FiveScreen> {
//   List<Map> data = [
//     {"image": "assets/images/comet.png", "number": "0", "name": "Streaks"},
//     {"image": "assets/images/badge.png", "number": "8", "name": "badges"},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           physics: const BouncingScrollPhysics(),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     const Text("Hi, Feranmi ",
//                         style: TextStyle(
//                           color: Color(0xff000000),
//                           fontWeight: FontWeight.w700,
//                           fontSize: 20,
//                           fontFamily: "Circular Std",
//                           fontStyle: FontStyle.normal,
//                         )),
//                     Image.asset("assets/images/Rocket.png", height: 25),
//                     Container(
//                       margin: const EdgeInsets.only(left: 100, right: 10),
//                       height: 34,
//                       decoration: BoxDecoration(
//                           color: const Color(0xffFCEFDD),
//                           borderRadius: BorderRadius.circular(20)),
//                       child: const Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: Text("Win \$100",
//                             style: TextStyle(
//                               color: Color(0xffEE9136),
//                               fontWeight: FontWeight.w700,
//                               fontSize: 14,
//                               fontFamily: "Circular Std",
//                               fontStyle: FontStyle.normal,
//                             )),
//                       ),
//                     ),
//                     Image.asset("assets/images/Notification_icon.png",
//                         height: 25),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 280,
//                   child: ListView.separated(
//                     itemCount: 2,
//                     shrinkWrap: true,
//                     scrollDirection: Axis.horizontal,
//                     separatorBuilder: (context, index) => const SizedBox(
//                       width: 15,
//                     ),
//                     itemBuilder: (context, index) => Container(
//                       margin: const EdgeInsets.only(top: 50, bottom: 30),
//                       width: 360,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(25),
//                           border: Border.all(
//                               color: const Color(0xffE1E3E6), width: 2),
//                           color: const Color(0xffFFFFFF)),
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 20, horizontal: 20),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(
//                               children: const [
//                                 Text("Funding balance  ",
//                                     style: TextStyle(
//                                       color: Color(0xff8C8A87),
//                                       fontWeight: FontWeight.w500,
//                                       fontSize: 14,
//                                       fontFamily: "Circular Std",
//                                       fontStyle: FontStyle.normal,
//                                     )),
//                                 Icon(Icons.visibility_outlined,
//                                     color: Color(0xff200E32)),
//                               ],
//                             ),
//                             Row(
//                               children: [
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     const Text("\$80,000.47",
//                                         style: TextStyle(
//                                           color: Color(0xff000000),
//                                           fontWeight: FontWeight.w700,
//                                           fontSize: 30,
//                                           fontFamily: "Circular Std",
//                                           fontStyle: FontStyle.normal,
//                                         )),
//                                     Row(
//                                       children: const [
//                                         Text("\$20,000 uninvested cash  ",
//                                             style: TextStyle(
//                                               color: Color(0xff8C8A87),
//                                               fontWeight: FontWeight.w500,
//                                               fontSize: 14,
//                                               fontFamily: "Circular Std",
//                                               fontStyle: FontStyle.normal,
//                                             )),
//                                         Icon(
//                                           Icons.error_outline,
//                                           color: Color(0xff040404),
//                                         )
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                                 Expanded(
//                                   child: Container(
//                                     margin: const EdgeInsets.only(left: 80),
//                                     height: 38,
//                                     decoration: const BoxDecoration(
//                                       color: Color(0xffE1E3E6),
//                                       shape: BoxShape.circle,
//                                     ),
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(6.0),
//                                       child: Image.asset(
//                                         'assets/images/Document_icon.png',
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(top: 20),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const FiveScreenContainer(
//                                     text: "Deposite",
//                                   ),
//                                   FiveScreenContainer(
//                                     text: "Withdraw",
//                                     border: Border.all(
//                                       color: const Color(0xffE1E3E6),
//                                       width: 2,
//                                     ),
//                                     color: const Color(0xffFFFFFF),
//                                     colorText: const Color(0xff000000),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: const [
//                     Icon(Icons.circle_rounded, size: 10),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Icon(Icons.circle_outlined, size: 10),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     Icon(Icons.circle_outlined, size: 10),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 100,
//                   child: ListView.separated(
//                     padding: const EdgeInsets.only(top: 30),
//                     physics: const NeverScrollableScrollPhysics(),
//                     scrollDirection: Axis.horizontal,
//                     itemCount: 2,
//                     separatorBuilder: (context, index) => const SizedBox(
//                       width: 15,
//                     ),
//                     shrinkWrap: true,
//                     itemBuilder: (context, index) => Container(
//                         width: 166,
//                         decoration: BoxDecoration(
//                             color: const Color(0xffFFFFFF),
//                             border: Border.all(color: const Color(0xffE1E3E6)),
//                             borderRadius: BorderRadius.circular(15)),
//                         child: Row(
//                           children: [
//                             Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Image.asset(data[index]["image"],
//                                     height: 40)),
//                             Padding(
//                               padding: const EdgeInsets.only(top: 15),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(data[index]["number"],
//                                       style: const TextStyle(
//                                         height: 1.5,
//                                         color: Color(0xff000000),
//                                         fontWeight: FontWeight.w700,
//                                         fontSize: 14,
//                                         fontFamily: "Circular Std",
//                                         fontStyle: FontStyle.normal,
//                                       )),
//                                   Text(data[index]["name"],
//                                       style: const TextStyle(
//                                         color: Color(0xff8C8A87),
//                                         fontWeight: FontWeight.w500,
//                                         fontSize: 14,
//                                         fontFamily: "Circular Std",
//                                         fontStyle: FontStyle.normal,
//                                       )),
//                                 ],
//                               ),
//                             )
//                           ],
//                         )),
//                   ),
//                 ),
//                 const EightScreenRow(
//                   text: "Recent Transactions",
//                 ),
//                 FiveScreenRaw(),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 FiveScreenRaw(),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 const Text("Save With A Crew",
//                     style: TextStyle(
//                       color: Color(0xff8C8A87),
//                       fontWeight: FontWeight.w700,
//                       fontSize: 18,
//                       fontFamily: "Circular Std",
//                       fontStyle: FontStyle.normal,
//                     )),
//               ],
//             ),
//           ),
//         ),
//         bottomSheet: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               FiveScreenContainer(
//                 text: "Receive Money",
//                 border: Border.all(
//                   color: const Color(0xffE1E3E6),
//                   width: 1,
//                 ),
//                 color: const Color(0xffFFFFFF),
//                 colorText: const Color(0xff000000),
//               ),
//               const FiveScreenContainer(
//                 text: "Send Money",
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }