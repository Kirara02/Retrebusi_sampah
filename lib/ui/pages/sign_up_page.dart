import 'package:flutter/material.dart';
import 'package:retrebusi_sampah/themes/theme.dart';
import 'package:retrebusi_sampah/ui/widgets/buttons.dart';
import 'package:retrebusi_sampah/ui/widgets/forms.dart';
import 'package:intl/intl.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String _value = 'Pria';
  TextEditingController dateController = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(63),
          child: Align(
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/sign-up-as');
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: whiteColor,
                  ),
                ),
                Container(
                    width: double.infinity,
                    child: Text(
                      "SIGN UP",
                      textAlign: TextAlign.center,
                      style: whiteTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: bold,
                      ),
                    )),
                const SizedBox(
                  height: 18,
                )
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        children: [
          const SizedBox(
            height: 13,
          ),
          CustomFormField(
            hint: 'Nama',
            label: 'Nama Lengkap',
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              SizedBox(
                width: 300,
                child: CustomFormField(
                  hint: 'Email',
                  label: 'Masukan Email',
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 10),
                width: 26,
                height: 26,
                child: Image.asset('assets/ic_check.png'),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: CustomFormField(
                  hint: 'Nomor',
                  label: 'Nomor Ponsel',
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: CustomFormField(
                  hint: 'PIN Registrasi',
                  label: '*Nomor Registrasi Petugas',
                  preficIcon: Image.asset(
                    'assets/ic_pin_reg.png',
                    width: 10,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              SizedBox(
                width: 215,
                child: CustomFormField(
                  hint: 'xx/xx/xxxx',
                  label: 'Tanggal Lahir',
                  controller: dateController,
                ),
              ),
              GestureDetector(
                onTap: () async {
                  DateTime? datePicked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1950),
                    lastDate: DateTime(2101),
                  );

                  if (datePicked != null) {
                    setState(() {
                      dateController.text =
                          DateFormat('yyyy-MM-dd').format(datePicked);
                    });
                  }
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 20, left: 10),
                  width: 26,
                  height: 26,
                  child: Image.asset('assets/ic_date.png'),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jenis Kelamin',
                  style:
                      greyTextStyle.copyWith(fontSize: 16, fontWeight: medium),
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: 'Pria',
                          groupValue: _value,
                          onChanged: (String? value) {
                            setState(() {
                              _value = value as String;
                              print(value);
                            });
                          },
                        ),
                        Text(
                          "Pria",
                          style: greyTextStyle,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: 'Wanita',
                          groupValue: _value,
                          onChanged: (String? value) {
                            setState(() {
                              _value = value as String;
                              print(value);
                            });
                          },
                        ),
                        Text(
                          "Wanita",
                          style: greyTextStyle,
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const CustomPasswordFormField(
            hint: 'Kata sandi',
            label: "Kata Sandi",
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Dengan Klik Daftar, anda telah membaca dan menyetujui\nPersyaratan dan Ketentuan, aplikasi ini',
            style: greyTextStyle,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 19,
          ),
          CustomFilledButton(
            title: 'NEXT',
            onPressed: () {},
          ),
          const SizedBox(
            height: 55,
          ),
        ],
      ),
    );
  }
}

// floatingActionButton: Container(
//   margin: const EdgeInsets.only(right: 20),
//   padding: const EdgeInsets.all(20),
//   child: CustomFilledButton(
//     title: "sasa",
//   ),
// ),
// floatingActionButtonLocation: FloatingActionButtonLocation.startTop
