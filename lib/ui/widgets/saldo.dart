import 'package:flutter/material.dart';
import 'package:retrebusi_sampah/themes/theme.dart';

class Saldo extends StatelessWidget {
  const Saldo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      height: 57,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: whiteColor,
        border: Border.all(
          width: 2,
          color: greenColor,
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/ic_wallet.png',
            width: 25,
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Komisi :",
                style: greyTextStyle.copyWith(
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                "Rp. 0",
                style: greyTextStyle.copyWith(
                  fontWeight: bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
