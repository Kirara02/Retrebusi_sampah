import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:retrebusi_sampah/themes/theme.dart';

class DashboardService extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onTap;
  const DashboardService({Key? key, required this.title, required this.image, required this.onTap,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 70,
        height: 110,
        child: Column(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: greenColor,
                borderRadius: BorderRadius.circular(9),
              ),
              child: Center(
                child: Image.asset(image, width: 28,),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              title,
              style: greyTextStyle.copyWith(
                fontWeight: medium,
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
