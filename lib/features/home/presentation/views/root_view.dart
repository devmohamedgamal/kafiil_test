import 'package:flutter/material.dart';
import 'package:mohamed_gamal_sabri/core/utils/constants.dart';
import 'package:mohamed_gamal_sabri/features/Auth/presentation/views/login_view.dart';
import 'package:mohamed_gamal_sabri/features/Auth/presentation/views/register_view.dart';
import 'package:mohamed_gamal_sabri/features/home/presentation/views/countries_view.dart';
import 'package:mohamed_gamal_sabri/features/home/presentation/views/home_view.dart';
import 'package:mohamed_gamal_sabri/features/home/presentation/views/services_view.dart';

class RootView extends StatefulWidget {
  const RootView({super.key});

  @override
  State<RootView> createState() => _RootViewState();
}

class _RootViewState extends State<RootView> {
  PageController pageController = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: AppConstants.kTextFieldColor,
          selectedItemColor: AppConstants.kPrimaryColor,
          currentIndex: currentPage,
          onTap: (page) {
            if (page != currentPage) {
              setState(() {
                currentPage = page;
                pageController.animateToPage(
                  page,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOutCubic,
                );
              });
            }
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined), label: 'Who Am i'),
            BottomNavigationBarItem(
                icon: Icon(Icons.public_outlined), label: 'Countries'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: 'Services'),
          ]),
      body: SafeArea(
        child: PageView(
          controller: pageController,
          children: const <Widget>[
            HomeView(),
            CountriesView(),
            ServicesView(),
          ],
        ),
      ),
    );
  }
}
