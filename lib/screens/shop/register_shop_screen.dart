import 'package:flutter/material.dart';
import 'shop_profile_screen.dart';
import '../../components/custom_text_field.dart';
import '../../components/dropdown_field.dart';
import '../../components/counter_field.dart';
import '../../components/save_button.dart';

class RegisterShopScreen extends StatefulWidget {
  const RegisterShopScreen({Key? key}) : super(key: key);

  @override
  _RegisterShopScreenState createState() => _RegisterShopScreenState();
}

class _RegisterShopScreenState extends State<RegisterShopScreen> {
  final TextEditingController shopNameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  String foodType = 'Banh Mi';
  int amount = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Shop'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              label: 'Shop Name',
              controller: shopNameController,
              icon: Icons.store,
            ),
            CustomTextField(
              label: 'Address',
              controller: addressController,
              icon: Icons.location_on,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DropdownField(
                    label: 'Type',
                    items: ['Banh Mi', 'Pho', 'Coffee'],
                    value: foodType,
                    onChanged: (value) {
                      setState(() {
                        foodType = value!;
                      });
                    },
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Amount for a free one',
                    style: const TextStyle(fontSize: 16),
                  ),
                  CounterField(
                    value: amount,
                    onIncrement: () {
                      setState(() {
                        amount++;
                      });
                    },
                    onDecrement: () {
                      setState(() {
                        if (amount > 0) amount--;
                      });
                    },
                  ),
                ],
              ),
            ),
            const Spacer(),
            SaveButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShopProfileScreen(
                      shopName: shopNameController.text,
                      address: addressController.text,
                      foodType: foodType,
                      rewardAmount: amount,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
