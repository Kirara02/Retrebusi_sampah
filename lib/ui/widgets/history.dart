import 'package:flutter/material.dart';
import 'package:retrebusi_sampah/themes/theme.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: greyColor,
        ),
        borderRadius: BorderRadius.circular(2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: greenColor,
                ),
                child: Icon(
                  Icons.arrow_upward_outlined,
                  color: whiteColor,
                  size: 16,
                ),
              ),
              const SizedBox(
                width: 18,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Uang Masuk",
                    style: greyTextStyle.copyWith(
                        fontWeight: medium, fontSize: 12),
                  ),
                  Text(
                    "Rp.7.000.000",
                    style: greenTextStyle.copyWith(
                        fontWeight: medium, fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(
                width: 66,
              )
            ],
          ),
          VerticalDivider(
            width: 1,
            thickness: 1,
            color: greenColor,
          ),
          Row(
            children: [
              const SizedBox(
                width: 18,
              ),
              Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: greenColor,
                ),
                child: Icon(
                  Icons.arrow_downward,
                  color: whiteColor,
                  size: 16,
                ),
              ),
              const SizedBox(
                width: 18,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Uang Keluar",
                    style: greyTextStyle.copyWith(
                        fontWeight: medium, fontSize: 12),
                  ),
                  Text(
                    "Rp.6.000.000",
                    style: greenTextStyle.copyWith(
                        fontWeight: medium, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
