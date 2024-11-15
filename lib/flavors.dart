enum Flavor {
  prod,
  hmg,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.prod:
        return 'prod App';
      case Flavor.hmg:
        return 'hmg App';
      default:
        return 'title';
    }
  }

}
