enum Flavor {
  DEVELOP,
  STAGING,
  PRODUCTION,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.DEVELOP:
        return 'sunbook-dev';
      case Flavor.STAGING:
        return 'sunbook-stg';
      case Flavor.PRODUCTION:
        return 'sunbook-prod';
      default:
        return 'title';
    }
  }
}
