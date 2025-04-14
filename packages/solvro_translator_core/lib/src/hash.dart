import "dart:convert";

import "package:crypto/crypto.dart";

/// Hashes a string using MD5.
///
/// The [text] parameter is the string to hash.
///
/// Returns the hash of the string as a string.
String md5Hash(String text) {
  return md5.convert(utf8.encode(text)).toString();
}
