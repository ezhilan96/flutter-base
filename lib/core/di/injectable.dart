
import 'package:flutter_base/core/di/injectable.config.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();