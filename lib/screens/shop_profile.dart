import 'package:flutter/material.dart';
import '../components/custom_text_field.dart';
import '../components/primary_button.dart';

class ShopProfile extends StatefulWidget {
  const ShopProfile({Key? key}) : super(key: key);

  @override
  _ShopProfileState createState() => _ShopProfileState();
}

class _ShopProfileState extends State<ShopProfile> {
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
          title: const Text('Business Profile'),
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
                      // Add login functionality here
                      print('Login with ${loginEmailController.text}');
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
                      // Add registration functionality here
                      if (registerPasswordController.text ==
                          registerReenterPasswordController.text) {
                        print('Registered with ${registerEmailController.text}');
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
