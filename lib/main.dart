import 'package:env_demo/custom/enviroment.dart';
import 'package:env_demo/dotenv/dot_env.dart';

void main() async {
  //Way 1:- Without using external Package
  const String enviroment =
      String.fromEnvironment('Env', defaultValue: Enviroment.devEnviroment);

  Enviroment().initConfig(enviroment);

  print(Enviroment().baseConfig?.baseUri);

  // Way2 :- using flutter_dotenv package

  await DotEnvEnviroment().loadEnvFile(enviroment);
  DotEnvEnviroment().getConfigration();

  print(DotEnvEnviroment().appConfigration.appUrl);
}
