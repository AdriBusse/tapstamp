import 'package:flutter/material.dart';
import 'register_shop_screen.dart';
import '../../components/custom_text_field.dart';
import '../../components/primary_button.dart';

class ShopAuthScreen extends StatefulWidget {
  const ShopAuthScreen({Key? key}) : super(key: key);

  @override
  _ShopAuthScreenState createState() => _ShopAuthScreenState();
}

class _ShopAuthScreenState extends State<ShopAuthScreen> {
  // Login controllers
  final TextEditingController loginEmailController = TextEditingController();
  final TextEditingController loginPasswordController = TextEditingController();

  // Registration controllers
  final TextEditingController registerEmailController = TextEditingController();
  final TextEditingController registerPasswordController = TextEditingController();
  final TextEditingController registerReenterPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Business Authentication'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Login'),
              Tab(text: 'Register'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Login Tab
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CustomTextField(
                    label: 'Email',
                    controller: loginEmailController,
                    icon: Icons.email,
                  ),
                  CustomTextField(
                    label: 'Password',
                    controller: loginPasswordController,
                    icon: Icons.lock,
                  ),
                  const SizedBox(height: 16),
                  PrimaryButton(
                    label: 'Login',
                    onPressed: () {
                      // Mock Login Navigation
                      print('Login successful');
                    },
                  ),
                ],
              ),
            ),
            // Registration Tab
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CustomTextField(
                    label: 'Email',
                    controller: registerEmailController,
                    icon: Icons.email,
                  ),
                  CustomTextField(
                    label: 'Password',
                    controller: registerPasswordController,
                    icon: Icons.lock,
                  ),
                  CustomTextField(
                    label: 'Re-enter Password',
                    controller: registerReenterPasswordController,
                    icon: Icons.lock_outline,
                  ),
                  const SizedBox(height: 16),
                  PrimaryButton(
                    label: 'Register',
                    onPressed: () {
                      if (registerPasswordController.text ==
                          registerReenterPasswordController.text) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterShopScreen(),
                          ),
                        );
                      } else {
                        print('Passwords do not match!');
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
