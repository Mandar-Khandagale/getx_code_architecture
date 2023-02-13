import 'package:encrypt/encrypt.dart';

class EncryptUtil{

  static String keystr ="123456tuvwxyz789";

  static encrypt(data,)
  {
    final key = Key.fromUtf8(keystr);
    final iv = IV.fromLength(16);
    final encrypter = Encrypter(AES(key));
    return encrypter.encrypt(data, iv: iv).base64;
  }

  static decrypt(data)
  {
    final key = Key.fromUtf8(keystr);
    final iv = IV.fromLength(16);
    final encrypter = Encrypter(AES(key));
    return encrypter.decrypt64(data, iv: iv);
  }

}