class EnvPath {
  EnvPath._();

  static const env = String.fromEnvironment("ENV");
  static const instanceName = String.fromEnvironment("INSTANCE_NAME");
  static const root = String.fromEnvironment("ROOT");
}
