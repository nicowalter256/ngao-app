import 'package:flutter/material.dart';
import 'package:ngao_app/constants/colors.dart';
import '../constants/images.dart';
import '../widgets/custom_bottom_navigation.dart';
import '../widgets/grid_view_widget.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          height: 80.0,
          width: 80.0,
          decoration: const BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
              image: AssetImage(group),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomNavigationWidget(),
      backgroundColor: greenBG,
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            color: greenBG,
            image: DecorationImage(
              image: const AssetImage(home),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.1),
                BlendMode.dstATop,
              ),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: size.height / 2.2,
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 40, horizontal: 20),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(logo),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(greeting),
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
              const Expanded(child: GrodViewWidget())
            ],
          ),
        ),
      ),
    );
  }
}
