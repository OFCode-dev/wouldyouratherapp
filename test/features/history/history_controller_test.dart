import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:would_you_rather_app/features/history/history_controller.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  test('records and reads test results', () async {
    final history = HistoryStore();
    await history.record('yemek', 'foodie');
    expect(await history.getProfile('yemek'), 'foodie');
    expect(await history.getProfile('seyahat'), null);
    expect(await history.completedCount(), 1);
  });

  test('overwrites previous result for same category', () async {
    final history = HistoryStore();
    await history.record('yemek', 'foodie');
    await history.record('yemek', 'home_cook');
    expect(await history.getProfile('yemek'), 'home_cook');
    expect(await history.completedCount(), 1);
  });
}
