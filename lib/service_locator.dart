// service_locator.dart
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'service_locator.config.dart'; // auto generated

final getIt = GetIt.instance;

@InjectableInit(
  initializerName:
      r'$initGetIt', // the default method name that will be generated
  preferRelativeImports: false, // default
)
Future<void> configureDependencies() async => getIt.$initGetIt();
