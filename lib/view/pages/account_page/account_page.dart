import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heath_care/view/pages/account_page/sliverbox_content.dart';
import '../../../res/constants/colors.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.BackGroundColor,
      body: CustomScrollView(
        slivers: <Widget>[
          sliverappbar(),
          sliverToBoxAdapter(),
          const SliverToBoxAdapterContent()
        ],
      ),
    );
  }

  Widget sliverappbar() {
    return SliverAppBar(
      title: const Align(
        alignment: Alignment.center,
        child: Text(
          'Account',
          style: TextStyle(
              color: Colors.white,
              overflow: TextOverflow.ellipsis,
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500),
        ),
      ),
      shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0), bottomRight: Radius.circular(0))),
      backgroundColor: ColorConstant.BLue05,
      expandedHeight: 280,
      //collapsedHeight: 70,
      pinned: true,
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 135,
                        height: 135,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 0.1,
                                blurRadius: 2,
                                offset: const Offset(0, 5))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(13),
                        child: Container(
                          width: 110,
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: const Offset(0, 5))
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(60),
                            child: Image.asset('assets/images/ava.PNG',
                                width: 60, height: 60, fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 270, 100, 0),
              child: Center(
                child: Column(
                  children: const [
                    Text(
                      "Cong Dat",
                      style: TextStyle(
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 21,
                          color: Colors.white),
                    ),
                    Text(
                      "dcd0564895@gmail.com",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Poppins',
                          letterSpacing: 0.1,
                          fontSize: 13),
                    )
                  ],
                ),
              ),
            ),
            Positioned.fill(
                child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.center,
                      colors: [Colors.black38, Colors.transparent])),
            ))
          ],
        ),
        stretchModes: const <StretchMode>[
          StretchMode.zoomBackground,
        ],
      ),
    );
  }

  Widget sliverToBoxAdapter() {
    return SliverToBoxAdapter(
      child: Container(
        color: ColorConstant.BLue05,
        height: 40,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              height: 20,
              decoration: const BoxDecoration(
                color: ColorConstant.BackGroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
