import 'package:env_demo/dotenv/dot_cong.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DotEnvEnviroment {
  DotEnvEnviroment._();

  factory DotEnvEnviroment() {
    return _instance;
  }

  static final DotEnvEnviroment _instance = DotEnvEnviroment._();

  static const String devEnviroment = 'DEV';
  static const String testEnviroment = 'TEST';
  static const String stagEnviroment = 'STAG';
  static const String prodEnviroment = 'PROD';

  late AppConfigration appConfigration;

  //load specific .env file accoring --dart-define in terminals
  loadEnvFile(String env) async {
    switch (env) {
      case testEnviroment:
        {
          await dotenv.load(fileName: '.test.env');
          break;
        }

      case stagEnviroment:
        {
          await dotenv.load(fileName: '.stag.env');
          break;
        }

      case prodEnviroment:
        {
          await dotenv.load(fileName: '.prod.env');
          break;
        }
      default:
        await dotenv.load(fileName: '.dev.env');
    }
  }

  getConfigration() {
    appConfigration = AppConfigration(
        appUrl: dotenv.get('baseUri', fallback: 'local_host:5000'),
        useHttps: dotenv.get('useHttps', fallback: 'false') == 'true',
        enableError: dotenv.get('trackEvent', fallback: 'false') == 'true',
        enableTracker: dotenv.get('trackError', fallback: 'false') == 'true');
  }
}
