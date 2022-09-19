import 'package:flutter/material.dart';
import 'package:retrebusi_sampah/themes/theme.dart';
import 'package:retrebusi_sampah/ui/pages/sign_in_as_page.dart';
import 'package:retrebusi_sampah/ui/widgets/buttons.dart';
import 'package:retrebusi_sampah/ui/widgets/forms.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: SizedBox(
          height: 83,
          child: CustomTextButton(
            title: 'Sign Up',
            style: greyTextStyle,
            alignment: Alignment.center,
            onPressed: () {},
          ),
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
                "Let’s Take Care\nOf The Environtment",
                style: whiteTextStyle.copyWith(fontSize: 24),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 26,
              ),
              CustomFormField(title: 'Username'),
              const SizedBox(
                height: 15,
              ),
              CustomFormField(
                title: 'Password',
                obscureText: true,
              ),
              const SizedBox(
                height: 7,
              ),
              CustomTextButton(
                title: 'Forgot Password',
                style: whiteTextStyle,
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: CustomFilledButton(
          title: 'Login',
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SignInAsPage(),
              ),
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
