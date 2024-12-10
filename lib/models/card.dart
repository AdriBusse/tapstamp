enum ImageType { coffee, soup, smoothie }

class Card {
  final String cardId;
  final String reward;
  final int rewardAmount;
  final ImageType imageType;

  Card({required this.cardId, required this.reward, required this.rewardAmount, required this.imageType});

  // Convert Card object to JSON
  Map<String, dynamic> toJson() => {
    'cardId': cardId,
    'reward': reward,
    'rewardAmount': rewardAmount,
    'imageType': imageType.toString().split('.').last, // Save enum as string
  };

  // Convert JSON to Card object
  factory Card.fromJson(Map<String, dynamic> json) {
    return Card(
      cardId: json['cardId'],
      reward: json['reward'],
      rewardAmount: json['rewardAmount'],
      imageType: ImageType.values.firstWhere((e) => e.toString() == 'ImageType.${json['imageType']}'),
    );
  }
}
