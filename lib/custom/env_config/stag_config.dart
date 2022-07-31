import 'package:env_demo/custom/base_config.dart';

class StagConfig extends BaseConfig {
  @override
  String get baseUri => 'my_stagging.com/test/';

  @override
  bool get trackError => true;

  @override
  bool get trackEvent => true;

  @override
  bool get useHttps => false;
}
