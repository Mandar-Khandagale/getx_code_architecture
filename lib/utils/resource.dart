import 'package:getx_code_architecture/data/network/utils/network_error.dart';
import 'package:getx_code_architecture/enum/network_status.dart';

class Resource<T> {
  final NetworkStatus? status;
  final T? data;
  final NetworkError? networkError;

  Resource._({
    this.status,
    this.data,
    this.networkError,
  });

  static Resource<T> success<T>({T? data}) {
    return Resource<T>._(status: NetworkStatus.success, data: data);
  }

  static Resource<T> error<T>({T? data, NetworkError? error}) {
    return Resource<T>._(status: NetworkStatus.error, data: data, networkError: error);
  }

  static Resource<T> loading<T>({T? data}) {
    return Resource<T>._(
      data: data,
      status: NetworkStatus.loading,
    );
  }

  static Resource<T> none<T>() {
    return Resource<T>._(
      data: null,
      status: NetworkStatus.none,
    );
  }
}
