import 'package:flutter/material.dart';
import 'package:tapstamp/screens/register_shop.dart';
import 'package:tapstamp/screens/shop_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'You already received 23 stamps!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                    'https://via.placeholder.com/150', // Replace with real image URL
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('philiprobinson@gmail.com'),
                    Text('Private Account'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),
            DropdownButton<String>(
              value: 'English',
              onChanged: (value) {},
              items: const [
                DropdownMenuItem(value: 'English', child: Text('English')),
                DropdownMenuItem(value: 'Vietnamese', child: Text('Vietnamese')),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.delete, color: Colors.red),
                  label: const Text('Delete account', style: TextStyle(color: Colors.red)),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ShopProfile()),
                    );
                  },
                  child: const Text('Switch to Business Account'),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
