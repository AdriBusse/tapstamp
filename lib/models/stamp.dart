class Stamp {
  final String stampId;
  final String timestamp;
  final String shopId;

  Stamp({required this.stampId, required this.timestamp, required this.shopId});

  // Convert Stamp object to JSON
  Map<String, dynamic> toJson() => {
    'stampId': stampId,
    'timestamp': timestamp,
    'shopId': shopId,
  };

  // Convert JSON to Stamp object
  factory Stamp.fromJson(Map<String, dynamic> json) {
    return Stamp(
      stampId: json['stampId'],
      timestamp: json['timestamp'],
      shopId: json['shopId'],
    );
  }
}
