import 'package:flutter/material.dart';
import '../components/shop_card.dart';
import '../models/shop.dart';
import '../services/database_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Shop> shops = DatabaseService().fetchShops();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: shops.length,
        itemBuilder: (context, index) {
          return ShopCard(shop: shops[index]);
        },
      ),
    );
  }
}
