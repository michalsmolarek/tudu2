import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:tudu/injectable/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
void injectDependencies() => getIt.init();
