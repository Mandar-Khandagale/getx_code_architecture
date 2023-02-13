import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:getx_code_architecture/enum/connectivity_status.dart';
import 'package:getx_code_architecture/utils/custom_logger.dart';

class ConnectivityService {
  // Create our public controller
  StreamController<ConnectivityStatus> connectionStatusController =
      StreamController<ConnectivityStatus>();

  ConnectivityService() {
    //connectionStatusController.add(_getStatusFromResult(result));
    // Subscribe to the connectivity changed Steam
    initConnectivity();
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      // Use Connectivity() here to gather more info if you need t
      CustomLogger.printLog('started net listening...');
      connectionStatusController.add(_getStatusFromResult(result));
    });
  }

  Future<void> initConnectivity() async {
    ConnectivityResult result = ConnectivityResult.none;
    try {
      result = await Connectivity().checkConnectivity();
      connectionStatusController.add(_getStatusFromResult(result));
    } on PlatformException catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }

  // Convert from the third part enum to our own enum
  ConnectivityStatus _getStatusFromResult(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.mobile:
        return ConnectivityStatus.cellular;
      case ConnectivityResult.wifi:
        return ConnectivityStatus.wifi;
      case ConnectivityResult.none:
        return ConnectivityStatus.offline;
      default:
        return ConnectivityStatus.offline;
    }
  }
}
