import 'package:injectable/injectable.dart';

abstract class IConfig {
  String get apiBaseUrl;
}

@LazySingleton(as: IConfig)
class AppConfig implements IConfig {
  @override
  String get apiBaseUrl => "http://localhost:8080";
}
