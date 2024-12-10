import 'package:flutter/material.dart';
import 'package:tapstamp/screens/user/user_profile_screen.dart';

class ShopProfileScreen extends StatelessWidget {
  final String shopName;
  final String address;
  final String foodType;
  final int rewardAmount;

  const ShopProfileScreen({
    Key? key,
    required this.shopName,
    required this.address,
    required this.foodType,
    required this.rewardAmount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shop Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Shop Name:',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(shopName),
            const SizedBox(height: 16),
            Text(
              'Address:',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(address),
            const SizedBox(height: 16),
            Text(
              'Food Type:',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(foodType),
            const SizedBox(height: 16),
            Text(
              'Reward Amount:',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('$rewardAmount stamps for a free one'),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserProfileScreen(), // Navigate to BusinessAuthScreen
                    ),
                  );
                },
                child: const Text('Switch to Personal Account'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
