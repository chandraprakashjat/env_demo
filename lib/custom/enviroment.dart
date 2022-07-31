import 'package:env_demo/custom/base_config.dart';
import 'package:env_demo/custom/env_config/dev_config.dart';
import 'package:env_demo/custom/env_config/prod_config.dart';
import 'package:env_demo/custom/env_config/stag_config.dart';
import 'package:env_demo/custom/env_config/test_config.dart';

class Enviroment {
  Enviroment._internal();

  factory Enviroment() {
    return _instance;
  }

  static Enviroment get _instance => Enviroment._internal();

  static const String devEnviroment = 'DEV';
  static const String testEnviroment = 'TEST';
  static const String stagEnviroment = 'STAG';
  static const String prodEnviroment = 'PROD';

  BaseConfig? baseConfig;

  initConfig(String enviroment) {
    baseConfig = _getConfig(enviroment);
  }

  BaseConfig _getConfig(String enviroment) {
    switch (enviroment) {
      case Enviroment.testEnviroment:
        return TestConfig();
      case Enviroment.stagEnviroment:
        return StagConfig();
      case Enviroment.prodEnviroment:
        return ProdConfig();
      default:
        return DevConfig();
    }
  }
}
