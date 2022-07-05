enum Flavors {
  develop,
  staging,
  production,
}

class Flavor {
  static Flavors? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavors.develop:
        return 'sunbook-dev';
      case Flavors.staging:
        return 'sunbook-stg';
      case Flavors.production:
        return 'SUNBOOK';
      default:
        return 'title';
    }
  }
}
