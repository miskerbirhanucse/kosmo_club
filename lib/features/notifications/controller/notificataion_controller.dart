import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:kosmo_club/features/notifications/repostory/notification_repository.dart';
import 'package:kosmo_club/models/message.dart';

final notificationControllerProvider = Provider((ref) {
  final notificationRepository = ref.watch(notificationRepositoryProvider);
  return NotificationController(
      notificationRepository: notificationRepository, ref: ref);
});

class NotificationController {
  final NotificationRepository notificationRepository;
  final ProviderRef ref;
  NotificationController({
    required this.notificationRepository,
    required this.ref,
  });
  Stream<List<NotificationModel>> readNotification() {
    return notificationRepository.readNotification();
  }
}
