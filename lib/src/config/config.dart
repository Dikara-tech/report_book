/// A static class that represents application wide configuration.
class Config {
  const Config._();

  /// Available build variant: 'staging' and 'production'
  static const String buildVariant = String.fromEnvironment(
    'BUILD_VARIANT',
    defaultValue: 'staging',
  );
  static const bool debug = buildVariant == 'staging' ||
      bool.hasEnvironment('DEBUG') && String.fromEnvironment('DEBUG') == 'true';

  static const String appId = 'REPORT-BOOK';
  static const String appSecret = '';
  static const String appName = 'Report Book';
  static const String csPhone = '';
  static const String androidAppId = 'com.dikara.report_book';
  static const String iosAppId = '';
}
