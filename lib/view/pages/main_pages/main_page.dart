import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:heath_care/view/widgets/main_page_widget/search_button.dart';
import 'package:provider/provider.dart';
import '../../../../providers/bottom_navbar_provider.dart';
import '../../../../res/constants/colors.dart';
import '../../widgets/main_page_widget/AppbarCustom.dart';
import '../../widgets/main_page_widget/clinics_nearby.dart';
import '../../widgets/main_page_widget/doctors.dart';
import '../../widgets/main_page_widget/favorite_infos.dart';

class MainPage extends StatefulWidget {
  final VoidCallback showNavigation;
  final VoidCallback hideNavigation;

  const MainPage({
    Key? key,
    required this.showNavigation,
    required this.hideNavigation,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      right: true,
      left: true,
      child: Consumer<BottomNavBarProvider>(
        builder: (context, value, child) {
          return Scaffold(
            backgroundColor: ColorConstant.BackGroundColor,
            body: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                //controller: value.scrollController,
                child: Column(
                  children: [
                    const AppbarCustom(),
                    hiPatient(),
                    const SearchButton(),
                    const FavoriteInfos(),
                    //kindNeedings(),
                    doctorTitle(),
                    const Doctors(),
                    clinicsNearbyTitles(),
                    const ClinicsNearby(),
                    testStatusClinic(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget hiPatient() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(35, 45, 35, 0),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Hi Cong Dat",
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 30,
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 10),
          Image.asset('assets/images/wavinghand.png',
              width: 30, height: 30, fit: BoxFit.cover),
        ],
      ),
    );
  }

  Widget kindNeedings() {
    return Column(
      children: [
        const Padding(
            padding: EdgeInsets.fromLTRB(35, 20, 0, 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'What do you need ?',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black87,
                    fontFamily: 'Poppins'),
              ),
            )),
        Padding(
            padding: const EdgeInsets.fromLTRB(35, 20, 35, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      //end: Alignment.centerRight,
                      end: Alignment(0.9, 0.2),
                      colors: <Color>[
                        Color(0xFF237be5),
                        Color(0xFF1e81e7),
                        Color(0xFF1885ea),
                        Color(0xFF1589ec),
                        Color(0xFF118dee),
                        Color(0xFF0e8eef),
                        Color(0xFF0994f1),
                        Color(0xFF0697f3),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0xFF0e8eef).withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 15,
                          offset: const Offset(0, 5))
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/syringe.svg",
                        color: Colors.white,
                        width: 35,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Vaccines",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Colors.white,
                            fontFamily: 'Poppins'),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: const Offset(0, 3))
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/clinics.svg",
                        color: ColorConstant.BLue05,
                        width: 35,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Clinics",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Colors.black87,
                            fontFamily: 'Poppins'),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: const Offset(0, 3))
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/doctor.svg",
                        color: ColorConstant.BLue05,
                        width: 35,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Doctors",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Colors.black87,
                            fontFamily: 'Poppins'),
                      )
                    ],
                  ),
                ),
              ],
            )),
        Padding(
            padding: const EdgeInsets.fromLTRB(35, 20, 35, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: const Offset(0, 3))
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/pharmacy.svg",
                        color: ColorConstant.BLue05,
                        width: 35,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Pharmacy",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Colors.black87,
                            fontFamily: 'Poppins'),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: const Offset(0, 3))
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/drugs.svg",
                        color: ColorConstant.BLue05,
                        width: 35,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Drugs",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Colors.black87,
                            fontFamily: 'Poppins'),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: const Offset(0, 3))
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/ambulance.svg",
                        color: ColorConstant.BLue05,
                        width: 35,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Ambulance",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Colors.black87,
                            fontFamily: 'Poppins'),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ],
    );
  }

  Widget doctorTitle() {
    return Padding(
        padding: const EdgeInsets.fromLTRB(35, 40, 0, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0.0),
              child: Image.asset(
                'assets/images/doctor02.png',
                scale: 6,
              ),
            ),
            const Text(
              'DOCTORS',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                  fontSize: 32,
                  //textBaseline: TextBaseline.alphabetic,
                  color: Colors.black87,
                  letterSpacing: 1.5,
                  fontFamily: 'Poppins'),
            ),
          ],
        ));
  }

  Widget clinicsNearbyTitles() {
    return Padding(
        padding: const EdgeInsets.fromLTRB(35, 30, 0, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          //textBaseline: TextBaseline.alphabetic,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0.0),
              child: Image.asset(
                'assets/images/clinic.png',
                scale: 4,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              //color: Colors.grey,
              width: 200,
              height: 80,
              child: RichText(
                text: const TextSpan(children: [
                  TextSpan(
                    text: "CLINICS",
                    style: TextStyle(
                        height: 1,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        fontSize: 35,
                        //textBaseline: TextBaseline.alphabetic,
                        color: Color(0xff4fa2e7),
                        letterSpacing: 1.5,
                        fontFamily: 'Poppins'),
                  ),
                  WidgetSpan(
                      child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 3.0, horizontal: 25.0),
                    child: Text(
                      "NEARBY",
                      style: TextStyle(
                          height: 1,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600,
                          fontSize: 32,
                          //textBaseline: TextBaseline.alphabetic,
                          color: Colors.green,
                          //letterSpacing: 1.5,
                          fontFamily: 'Poppins'),
                    ),
                  )),
                ]),
                //textScaleFactor: 0.8,
              ),
            )
          ],
        ));
  }

  Widget testStatusClinic() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(35, 15, 20, 0),
          child: Container(
            margin: const EdgeInsets.only(right: 15),
            height: 120,
            //width: 155,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 7,
                    offset: const Offset(0, 10))
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network(
                        'https://www.stanleywellnesscentre.com/images/blogs/142/FREE_CLINIC_thumbnail_ok.png',
                        fit: BoxFit.cover,
                        scale: 4),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                    child: Column(
                      children: [
                        const SizedBox(
                            width: 190,
                            //height: 40,
                            //color: Colors.grey,
                            child: Text("Restore Medical Clinic CIS",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xff1c335b),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Merriweather Sans '))),
                        const SizedBox(
                          height: 3,
                        ),
                        const Expanded(
                          flex: 1,
                          child: SizedBox(
                              width: 190,
                              //height: 40,
                              //color: Colors.grey,
                              child: Text("Supporting the CIS ",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      height: 0.9,
                                      fontSize: 15,
                                      color: ColorConstant.Grey01,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Merriweather Sans'))),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            width: 210,
                            //color: Colors.black,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              //textBaseline: TextBaseline.alphabetic,
                              children: [
                                const Icon(
                                  Icons.star,
                                  size: 19,
                                  color: Colors.amber,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text("4.5",
                                    style: TextStyle(
                                        height: 0.9,
                                        fontSize: 15,
                                        color: ColorConstant.Grey01,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Merriweather Sans')),
                                RichText(
                                    text: const TextSpan(children: [
                                  WidgetSpan(
                                      child: Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text("1.2 km ",
                                        style: TextStyle(
                                            letterSpacing: 0.2,
                                            fontSize: 15,
                                            color: ColorConstant.Grey01,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Merriweather Sans')),
                                  )),
                                ])),
                                const Text("| ",
                                    style: TextStyle(
                                        height: 0.8,
                                        fontSize: 18,
                                        letterSpacing: 0.1,
                                        color: ColorConstant.Grey01,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Merriweather Sans')),
                                const Text("Close",
                                    style: TextStyle(
                                        fontSize: 15,
                                        letterSpacing: 0.1,
                                        color: Colors.redAccent,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Merriweather Sans'))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(35, 15, 20, 0),
          child: Container(
            margin: const EdgeInsets.only(right: 15),
            height: 120,
            //width: 155,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(27),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 7,
                    offset: const Offset(0, 10))
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network(
                        'https://www.stanleywellnesscentre.com/images/blogs/142/FREE_CLINIC_thumbnail_ok.png',
                        fit: BoxFit.cover,
                        scale: 4),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
                    child: Column(
                      children: [
                        const SizedBox(
                            width: 190,
                            //height: 40,
                            //color: Colors.grey,
                            child: Text("Restore Medical Clinic CIS",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xff1c335b),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Merriweather Sans '))),
                        const SizedBox(
                          height: 3,
                        ),
                        const Expanded(
                          flex: 1,
                          child: SizedBox(
                              width: 190,
                              //height: 40,
                              //color: Colors.grey,
                              child: Text("Supporting the CIS ",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      height: 0.9,
                                      fontSize: 15,
                                      color: ColorConstant.Grey01,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Merriweather Sans'))),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            width: 210,
                            //color: Colors.black,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              //textBaseline: TextBaseline.alphabetic,
                              children: [
                                const Icon(
                                  IconlyBold.star,
                                  size: 19,
                                  color: Colors.amber,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text("4.5",
                                    style: TextStyle(
                                        height: 0.9,
                                        fontSize: 15,
                                        color: ColorConstant.Grey01,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Merriweather Sans')),
                                RichText(
                                    text: const TextSpan(children: [
                                  WidgetSpan(
                                      child: Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: Text("1.2 km ",
                                        style: TextStyle(
                                            letterSpacing: 0.2,
                                            fontSize: 15,
                                            color: ColorConstant.Grey01,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Merriweather Sans')),
                                  )),
                                ])),
                                const Text("| ",
                                    style: TextStyle(
                                        height: 0.8,
                                        fontSize: 18,
                                        letterSpacing: 0.1,
                                        color: ColorConstant.Grey01,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Merriweather Sans')),
                                const Text("Available",
                                    style: TextStyle(
                                        fontSize: 15,
                                        letterSpacing: 0.1,
                                        color: Colors.green,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Merriweather Sans'))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 150,
        )
      ],
    );
  }
}
