import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:bloc_exam/config/di/locator.config.dart';

GetIt getIt = GetIt.I;

@InjectableInit()
void configureDependencies() => getIt.init();