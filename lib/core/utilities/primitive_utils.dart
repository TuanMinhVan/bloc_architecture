import 'dart:math';
import 'package:uuid/uuid.dart';

/// A class that provides utility methods for primitive types.
abstract class PrimitiveUtils {
  /// Checks if the given text is contained within any brackets in the matcher string.
  ///
  /// For example, `containsTextInBracket('(abc)def(ghi)', 'bc')` returns `true`,
  /// while `containsTextInBracket('(abc)def(ghi)', 'xyz')` returns `false`.
  static bool containsTextInBracket(String matcher, String text) {
    final allMatches = RegExp(r'(?<=\().+?(?=\))').allMatches(matcher);
    if (allMatches.isEmpty) return false;
    return allMatches
        .map((e) => e.group(0))
        .every((match) => match?.contains(text) ?? false);
  }

  /// A random number generator.
  static final Random _random = Random();

  /// Returns a random element from the given list.
  static T getRandomElement<T>(List<T> list) {
    return list[_random.nextInt(list.length)];
  }

  /// A UUID generator.
  static const uuid = Uuid();

  /// Converts a number to a readable string.
  ///
  /// For example, `toReadableNumber(1234)` returns `'1K'`,
  /// `toReadableNumber(1234567)` returns `'1M'`, and
  /// `toReadableNumber(1234567890)` returns `'1B'`.
  static String toReadableNumber(double num) {
    if (num > 999 && num < 99999) {
      return '${(num / 1000).toStringAsFixed(0)}K';
    } else if (num > 99999 && num < 999999) {
      return '${(num / 1000).toStringAsFixed(0)}K';
    } else if (num > 999999 && num < 999999999) {
      return '${(num / 1000000).toStringAsFixed(0)}M';
    } else if (num > 999999999) {
      return '${(num / 1000000000).toStringAsFixed(0)}B';
    } else {
      return num.toStringAsFixed(0);
    }
  }

  /// Executes the given function multiple times with a delay between each execution.
  ///
  /// The function will be executed immediately the first time, and then with a delay
  /// of `timeout * i` milliseconds for each subsequent execution, where `i` is the
  /// index of the execution. The function will be executed a total of `retryCount`
  /// times.
  ///
  /// The first successful execution will be returned. If all executions fail, the
  /// last execution's result will be returned.
  static Future<T> raceMultiple<T>(
    Future<T> Function() inner, {
    Duration timeout = const Duration(milliseconds: 2500),
    int retryCount = 4,
  }) async {
    return Future.any(
      List.generate(retryCount, (i) {
        if (i == 0) return inner();
        return Future.delayed(
          Duration(milliseconds: timeout.inMilliseconds * i),
          inner,
        );
      }),
    );
  }

  /// Converts a string to a safe file name by replacing all invalid characters with spaces.
  ///
  /// Invalid characters are defined as `[/\?%*:|"<>]`.
  ///
  /// **Example:**
  /// ```dart
  /// toSafeFileName('My File Name.txt') == 'My File Name.txt';
  /// toSafeFileName('My File Name?*.txt') == 'My File Name  .txt';
  /// ```
  static String toSafeFileName(String str) {
    return str.replaceAll(RegExp(r'[/\?%*:|"<>]'), ' ');
  }
}
