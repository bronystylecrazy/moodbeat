import 'package:test/test.dart';
import 'package:moodbeat_core/moodbeat_core.dart';


/// tests for AuthApi
void main() {
  final instance = MoodbeatCore().getAuthApi();

  group(AuthApi, () {
    // Get current user profile
    //
    // Get profile of the currently authenticated user
    //
    //Future<AuthProfileResponse> getCurrentProfile() async
    test('test getCurrentProfile', () async {
      // TODO
    });

  });
}
