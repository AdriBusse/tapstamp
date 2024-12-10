import 'package:flutter/material.dart';
import '../models/shop.dart';

class ShopCard extends StatelessWidget {
  final Shop shop;

  const ShopCard({super.key, required this.shop});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              shop.shopName, // Using `shopName` from the provided `Shop` model
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis, // Truncate text if it's too long
            ),
            const SizedBox(height: 4),
            Text(
              shop.address, // Using `address` from the provided `Shop` model
              style: const TextStyle(fontSize: 14, color: Colors.grey),
              maxLines: 2, // Limit to 2 lines
              overflow: TextOverflow.ellipsis, // Handle overflow
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cards: ${shop.cards.length}', // Showing the count of associated cards
                  style: const TextStyle(fontSize: 14, color: Colors.black87),
                ),
                const Icon(Icons.chevron_right), // Icon for navigation or additional actions
              ],
            ),
          ],
        ),
      ),
    );
  }
}
