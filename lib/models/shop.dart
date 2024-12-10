class Shop {
  final String shopId;
  final String shopName;
  final String address;
  final List<String> cards;

  Shop({required this.shopId, required this.shopName, required this.address, required this.cards});

  // Convert Shop object to JSON
  Map<String, dynamic> toJson() => {
    'shopId': shopId,
    'shopName': shopName,
    'address': address,
    'cards': cards,
  };

  // Convert JSON to Shop object
  factory Shop.fromJson(Map<String, dynamic> json) {
    return Shop(
      shopId: json['shopId'],
      shopName: json['shopName'],
      address: json['address'],
      cards: List<String>.from(json['cards']),
    );
  }
}
