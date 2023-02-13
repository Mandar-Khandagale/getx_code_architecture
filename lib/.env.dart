BuildEnvironment? get env => _env;
BuildEnvironment? _env;

class BuildEnvironment {
  final String? baseUrl;

  BuildEnvironment._init({this.baseUrl});

  static void init({required baseUrl}) => _env ??= BuildEnvironment._init(
        baseUrl: baseUrl,
      );
}
