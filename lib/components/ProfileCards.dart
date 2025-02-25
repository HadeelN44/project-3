import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rescue_app/style.dart';

class profileCard extends StatelessWidget {
  const profileCard({super.key, this.title, this.value, this.icon});
  final String? title;
  final String? value;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: 20,
                color: colors.primary,
              ),
              SizedBox(
                width: Get.width * 0.02,
              ),
              Text(
                title.toString(),
                style: GoogleFonts.openSans(
                  fontSize: 18,
                  color: colors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                value.toString(),
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontSize: 18,
                  color: const Color(0xff606060),
                ),
                textAlign: TextAlign.left,
              ),
            ],
          )
        ],
      ),
    );
  }
}
