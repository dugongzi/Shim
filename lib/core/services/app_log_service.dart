import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';
import 'package:riverpod/riverpod.dart';

enum AppLogLevel {
  debug,
  info,
  warning,
  error,
}

class AppLogEntry {
  const AppLogEntry({
    required this.id,
    required this.timestamp,
    required this.level,
    required this.source,
    required this.message,
    this.details,
  });

  final int id;
  final DateTime timestamp;
  final AppLogLevel level;
  final String source;
  final String message;
  final String? details;
}

final appLogServiceProvider = Provider<AppLogService>((ref) {
  return AppLogService.instance;
});

class AppLogService extends ValueNotifier<List<AppLogEntry>> {
  AppLogService._() : super(const []);

  static final AppLogService instance = AppLogService._();
  static const int _maxEntries = 500;

  int _nextId = 0;

  void debug(String source, String message, {String? details}) {
    add(AppLogLevel.debug, source, message, details: details);
  }

  void info(String source, String message, {String? details}) {
    add(AppLogLevel.info, source, message, details: details);
  }

  void warning(String source, String message, {String? details}) {
    add(AppLogLevel.warning, source, message, details: details);
  }

  void error(String source, String message, {String? details}) {
    add(AppLogLevel.error, source, message, details: details);
  }

  void add(
    AppLogLevel level,
    String source,
    String message, {
    String? details,
  }) {
    final entry = AppLogEntry(
      id: _nextId++,
      timestamp: DateTime.now(),
      level: level,
      source: source,
      message: message,
      details: details,
    );
    final next = [entry, ...value];
    value = next.length > _maxEntries ? next.take(_maxEntries).toList() : next;

    if (kDebugMode) {
      developer.log(
        details == null || details.isEmpty ? message : '$message\n$details',
        name: source,
        level: _developerLevel(level),
      );
    }
  }

  void clear() {
    value = const [];
  }

  int _developerLevel(AppLogLevel level) {
    switch (level) {
      case AppLogLevel.debug:
        return 500;
      case AppLogLevel.info:
        return 800;
      case AppLogLevel.warning:
        return 900;
      case AppLogLevel.error:
        return 1000;
    }
  }
}
