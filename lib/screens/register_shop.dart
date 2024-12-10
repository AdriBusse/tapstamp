import 'package:flutter/material.dart';
import '../components/custom_text_field.dart';
import '../components/dropdown_field.dart';
import '../components/counter_field.dart';
import '../components/save_button.dart';

class RegisterShop extends StatefulWidget {
  const RegisterShop({Key? key}) : super(key: key);

  @override
  _RegisterShopState createState() => _RegisterShopState();
}

class _RegisterShopState extends State<RegisterShop> {
  final TextEditingController shopNameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  String foodType = 'Banh Mi';
  int amount = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Shop'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.store),
          ),
        ],
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
                // Add save functionality here
                print('Shop saved: ${shopNameController.text}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
