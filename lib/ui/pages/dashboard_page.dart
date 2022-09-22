import 'package:flutter/material.dart';
import 'package:retrebusi_sampah/themes/theme.dart';
import 'package:retrebusi_sampah/ui/widgets/dashboard_service.dart';

import '../widgets/history.dart';
import '../widgets/saldo.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        buildHeader(),
        buildHistory(),
        buildService(),
      ],
    );
  }
  Widget buildHeader(){
    return Container(
      margin: const EdgeInsets.only(bottom: 7),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        clipBehavior: Clip.antiAlias,
        children: [
          SizedBox(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 280,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(24),
                    ),
                    color: greenColor,
                  ),
                  child: Row(children: [],),
                ),
                const SizedBox(
                  height: 27,
                ),
              ],
            ),
          ),
          const Saldo(),
        ],
      ),
    );
  }

  Widget buildHistory() {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 14),
      child: History(),
    );
  }

  Widget buildService(){
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(bottom: 25),
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Wrap(
        spacing: 50,
        children: [
          DashboardService(
            title: "Buat Jadwal Pengangkutan",
            image: 'assets/ic_mobil.png',
            onTap: () {},
          ),
          DashboardService(
            title: "Monitoring Armada",
            image: 'assets/ic_monitor.png',
            onTap: () {},
          ),
          DashboardService(
            title: "Rekap Pembayaran",
            image: 'assets/ic_rekap.png',
            onTap: () {},
          )
        ],
      ),
    );
  }
}
