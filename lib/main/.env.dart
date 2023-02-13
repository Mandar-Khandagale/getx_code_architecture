import 'package:getx_code_architecture/enum/build_flavor.dart';

BuildEnvironment? get env => _env;
BuildEnvironment? _env;

class BuildEnvironment {
  final BuildFlavor? flavor;
  final String? environment;

  BuildEnvironment._init({this.flavor, this.environment});

  static void init({required flavor, environment}) =>
      _env ??= BuildEnvironment._init(
        flavor: flavor,
        environment: environment,
      );
}
