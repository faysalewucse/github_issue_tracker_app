import 'package:intl/intl.dart';

import 'package:intl/intl.dart';

String formatTime(String createdAt) {
  final DateTime now = DateTime.now();
  final DateTime issueDate = DateTime.parse(createdAt);
  final DateFormat timeFormat = DateFormat.Hm(); // 24-hour format for time
  final DateFormat dayFormat = DateFormat.EEEE(); // Day of the week

  // Check if the issue was created today
  if (now.year == issueDate.year &&
      now.month == issueDate.month &&
      now.day == issueDate.day) {
    return timeFormat.format(issueDate); // Show time in 24-hour format
  }

  // Check if the issue was created yesterday
  final DateTime yesterday = now.subtract(const Duration(days: 1));
  if (yesterday.year == issueDate.year &&
      yesterday.month == issueDate.month &&
      yesterday.day == issueDate.day) {
    return 'Yesterday';
  }

  // If not today or yesterday, show the day of the week
  return dayFormat.format(issueDate); // e.g., "Friday"
}
