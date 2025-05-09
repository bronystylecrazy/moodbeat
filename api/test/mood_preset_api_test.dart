import 'package:test/test.dart';
import 'package:moodbeat_core/moodbeat_core.dart';


/// tests for MoodPresetApi
void main() {
  final instance = MoodbeatCore().getMoodPresetApi();

  group(MoodPresetApi, () {
    // Mood Presets Handler
    //
    // Handles mood presets related requests
    //
    //Future<DbMoodPreset> getMoodPresets() async
    test('test getMoodPresets', () async {
      // TODO
    });

  });
}
