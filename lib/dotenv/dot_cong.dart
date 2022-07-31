class AppConfigration {
  final String appUrl;
  final bool useHttps;
  final bool enableError;
  final bool enableTracker;
  static late AppConfigration _instance;

  factory AppConfigration(
      {required String appUrl,
      required bool useHttps,
      required bool enableError,
      required bool enableTracker}) {
    _instance = AppConfigration._internal(
        appUrl: appUrl,
        useHttps: useHttps,
        enableError: enableError,
        enableTracker: enableTracker);

    return _instance;
  }

  AppConfigration._internal(
      {required this.appUrl,
      required this.useHttps,
      required this.enableError,
      required this.enableTracker});

  static AppConfigration get instance => _instance;
}
