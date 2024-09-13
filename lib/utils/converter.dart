import 'package:intl/intl.dart';

String formatTime(String createdAt) {
  final dateTime = DateTime.parse(createdAt);
  return DateFormat('HH:mm').format(dateTime); // 24-hour format
}