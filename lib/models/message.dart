
class NotificationModel {
  final String message;
  final bool isSeen;

  NotificationModel({
    required this.message,
    required this.isSeen,
  });

  Map<String, dynamic> toMap() {
    return {
      'message': message,
      'isSeen': isSeen,
    };
  }

  factory NotificationModel.fromMap(Map<String, dynamic> map) {
    return NotificationModel(
      message: map['message'] ?? '',
      isSeen: map['isSeen'] ?? false,
    );
  }
}
