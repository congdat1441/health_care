import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../../res/constants/colors.dart';

class ReviewClinic extends StatefulWidget {
  const ReviewClinic({Key? key}) : super(key: key);

  @override
  State<ReviewClinic> createState() => _ReviewClinicState();
}

class _ReviewClinicState extends State<ReviewClinic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),
          backgroundColor: ColorConstant.BackGroundColor,
          title: const Center(
            child: Text(
              "Đánh giá phòng khám",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 19,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          leading: IconButton(
            icon: const Icon(
              IconlyBroken.arrowLeft,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  IconlyLight.editSquare,
                  color: Colors.black,
                  size: 30,
                ))
          ],
          //backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),
        body: customBody());
  }

  Widget customBody() {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    const Text(
                      "4.5",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Poppins',
                          color: Colors.orange),
                    ),
                    Row(
                      children: [
                        ...[1, 2, 3, 4, 5].map((e) => const Icon(
                          IconlyBold.star,
                          size: 25,
                          color: Colors.amber,
                        )),
                      ],
                    )

                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
