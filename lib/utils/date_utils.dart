import 'package:getx_code_architecture/utils/custom_logger.dart';
import 'package:intl/intl.dart';

class SalesManagerDate {
  SalesManagerDate._();

  static var now = DateTime.now();

  static String currentDate([String dateFormat = 'dd-MMM-yyyy']) {
    try {
      var formatter = DateFormat(dateFormat);
      return formatter.format(now);
    } catch (e) {
      CustomLogger.printLog('dateError: ${e.toString()}');
      return "";
    }
  }

  static String dateFormat(String date, [String dateFormat = 'dd-MM-yyyy']) {
    try {
      var formatter = DateFormat(dateFormat);
      return formatter.format(DateTime.parse(date));
    } catch (e) {
      CustomLogger.printLog('dateError: ${e.toString()}');
      return "";
    }
  }
}
