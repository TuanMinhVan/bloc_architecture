import 'package:hive_flutter/adapters.dart';

import '../../blocs/base/mixin/persisted_mixin.dart';

const hiveBoxes = [
  {'name': 'settings', 'limit': false},
];

class HiveUtils {
  factory HiveUtils() => instance;
  HiveUtils._();

  static final HiveUtils instance = HiveUtils._();

  Future<void> init({String? hiveCacheDir}) async {
    await Hive.initFlutter();

    for (final box in hiveBoxes) {
      await openHiveBox(
        box['name'].toString(),
        limit: box['limit'] as bool? ?? false,
      );
    }
    await PersistedStateMixin.initializeBoxes(path: hiveCacheDir);
  }

  /// [hiveBoxes] is the list of boxes to be initialized.
  ///
  /// [name] is the name of the box.
  Future<void> openHiveBox(String boxName, {bool limit = false}) async {
    if (limit) {
      await Hive.openBox(
        boxName,
        compactionStrategy: (int total, int deleted) {
          return deleted > 20;
        },
      );
    } else {
      await Hive.openBox(boxName);
    }
  }
}
