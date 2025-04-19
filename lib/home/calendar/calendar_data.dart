// lib/home/calendar/calendar_data.dart
class CalendarData {
  static final Map<DateTime, int> _moods = {};

  static void addMood(DateTime date, int mood) {
    // Normalize the date to midnight to avoid time-related issues
    DateTime normalizedDate = DateTime(date.year, date.month, date.day);
    _moods[normalizedDate] = mood;
  }

  static int? getMood(DateTime date) {
    // Normalize the date to midnight
    DateTime normalizedDate = DateTime(date.year, date.month, date.day);
    return _moods[normalizedDate];
  }

  static Map<DateTime, int> getAllMoods() {
    return Map.from(_moods); // Return a copy to prevent external modification
  }
}
