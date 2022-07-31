# env_demo

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


//For Custom Application enviroment

-Devlopment Enviroment -> flutter run / flutter run --dart-define=Env=DEV
-Test Enviroment => flutter run --dart-define=Env=TEST
-Staging Enviroment => flutter run --dart-define=Env=STAG
-Production Enviroment => flutter run --dart-define=Env=PROD

//ENV -> name in main()-> String.fromEnviroment('Env',defaultValue:'xxx')

//GeValue :- Enviroment().buildConfig.appUrl,
             Enviroment().buildConfig.useHttps
