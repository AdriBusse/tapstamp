class User {
  final String userId;
  final List<String> stamps;

  User({required this.userId, required this.stamps});

  // Convert User object to JSON
  Map<String, dynamic> toJson() => {
    'userId': userId,
    'stamps': stamps,
  };

  // Convert JSON to User object
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['userId'],
      stamps: List<String>.from(json['stamps']),
    );
  }
}
