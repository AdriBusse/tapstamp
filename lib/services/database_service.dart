import '../models/shop.dart';

class DatabaseService {

  // Add a shop to Firestore
  Future<void> addShop(Shop shop) async {

  }

  // Fetch all shops
  List<Shop> fetchShops() {
    try {
      return [
        Shop(address: "saigon", shopId: 'f34af34f', shopName: 'Pho Shop', cards: ['f34af34f', 'f34af34f', 'f34af34f']),
      ];
    } catch (e) {
      print('Error fetching shops: $e');
      return [
        Shop(address: "saigon", shopId: 'f34af34f', shopName: 'Pho Shop', cards: ['f34af34f', 'f34af34f', 'f34af34f']),
      ];
    }
  }
}
