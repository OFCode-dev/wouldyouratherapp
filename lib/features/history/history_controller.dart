import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HistoryStore {
  static const _prefix = 'history_';

  Future<void> record(String categoryId, String profileId) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('$_prefix$categoryId', profileId);
  }

  Future<String?> getProfile(String categoryId) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('$_prefix$categoryId');
  }

  Future<Map<String, String>> all() async {
    final prefs = await SharedPreferences.getInstance();
    final keys = prefs.getKeys().where((k) => k.startsWith(_prefix));
    return {
      for (final k in keys) k.substring(_prefix.length): prefs.getString(k)!,
    };
  }

  Future<int> completedCount() async => (await all()).length;
}

final historyStoreProvider = Provider<HistoryStore>((_) => HistoryStore());

final historyMapProvider = FutureProvider<Map<String, String>>((ref) async {
  return ref.read(historyStoreProvider).all();
});
