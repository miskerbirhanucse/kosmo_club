import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kosmo_club/models/message.dart';

final notificationRepositoryProvider = Provider(
  (ref) => NotificationRepository(
    firestore: FirebaseFirestore.instance,
  ),
);

class NotificationRepository {
  final FirebaseFirestore firestore;
  NotificationRepository({
    required this.firestore,
  });
  Stream<List<NotificationModel>> readNotification() {
    final snapshot = firestore
        .collection('notifications')
        .where('isSeen', isEqualTo: false)
        .snapshots()
        .map((querySnap) => querySnap
            .docs //Mapping Stream of CollectionReference to List<QueryDocumentSnapshot>
            .map((doc) => NotificationModel.fromMap(doc
                .data())) //Getting each document ID from the data property of QueryDocumentSnapshot
            .toList());
    return snapshot;
  }
}
