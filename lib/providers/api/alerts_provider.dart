import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_translate/flutter_translate.dart';

final alertsProvider =
    StateNotifierProvider<AlertsNotifier, List<Alert>>((ref) {
  return AlertsNotifier();
});

enum AlertType { ERROR, INFO, NOTIFICATION }

class Alert<T> {
  final AlertType alertType;
  final String message;
  final String id;
  Duration duration;
  final T? data;

  static const Duration baseDuration = Duration(seconds: 5);

  Alert(
    this.id,
    this.alertType, {
    var duration,
    required this.message,
    this.data,
  }) : this.duration = duration ?? baseDuration;
}

class AlertsNotifier extends StateNotifier<List<Alert>> {
  AlertsNotifier() : super([]);

  get hasErrors => state.length > 0;

  void addError(String message,
      {Duration duration = const Duration(seconds: 10)}) {
    state = [];
    state = [
      ...state,
      Alert(
        generateIdFromMessage(message),
        AlertType.ERROR,
        message: message,
        duration: duration,
      )
    ];
  }

  void addInfo(String message,
      {Duration duration = const Duration(seconds: 10)}) {
    state = [];
    state = [
      ...state,
      Alert(
        generateIdFromMessage(message),
        AlertType.INFO,
        message: message,
        duration: duration,
      )
    ];
  }

  void addNotification(dynamic notification,
      {Duration duration = const Duration(seconds: 10)}) {
    state = [];
    state = [
      ...state,
      Alert(
        generateIdFromMessage(notification.message),
        AlertType.NOTIFICATION,
        message: 'message',
        duration: duration,
        data: notification,
      )
    ];
  }

  void clearAlerts() {
    state = [];
  }

  void clearAlert(String id) {
    state = [
      for (Alert alert in state)
        if (alert.id != id) alert
    ];
  }

  void addUnknownError() {
    addError(translate("api.errors.unknown"));
  }

  String generateIdFromMessage(String message) {
    return '$message${DateTime.now().microsecondsSinceEpoch.toString()}';
  }
}
