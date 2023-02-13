//var regexp = /^\S+$/
class RegValidation {
  static bool isEmailValid(String email) {
    var pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]'
        r'{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex =  RegExp(pattern);
    return !regex.hasMatch(email) || email.isEmpty ? false : true;
  }

  static bool isPasswordValid(String password) {
   // var pattern = "/^S*\$/";
    //RegExp regex = RegExp(pattern);
    return password.length > 31 || password.isEmpty ? false : true;
  }

  /*function for check entered pin is valid or not*/
  static bool isPinValid(String value) {
    String pattern = r'(^[0-9]*$)';
    RegExp regExp = RegExp(pattern);
    return value.length != 6 || !regExp.hasMatch(value) ? false : true;
  }
}
