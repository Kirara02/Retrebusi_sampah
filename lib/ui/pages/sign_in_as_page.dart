import 'package:flutter/material.dart';
import 'package:retrebusi_sampah/themes/theme.dart';
import 'package:retrebusi_sampah/ui/widgets/buttons.dart';
import 'package:retrebusi_sampah/ui/widgets/forms.dart';

class SignInAsPage extends StatelessWidget {
  const SignInAsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      bottomNavigationBar: const BottomAppBar(
        elevation: 0,
        child: SizedBox(
          height: 83,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(43),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 224,
              ),
              Text(
                "MASUK SEBAGAI",
                style: whiteTextStyle.copyWith(fontSize: 24),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 55,
              ),
              const CustomSelectedButton(title: 'Petugas'),
              const SizedBox(height: 15,),
              const CustomSelectedButton(title: 'Masyarakat'),

            ],
          )
        ],
      ),
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: CustomFilledButton(
          title: 'Next',
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
