import 'package:env_demo/custom/base_config.dart';

class DevConfig extends BaseConfig {
  @override
  String get baseUri => 'my_test.com/test/';

  @override
  bool get trackError => false;

  @override
  bool get trackEvent => false;

  @override
  bool get useHttps => false;
}
