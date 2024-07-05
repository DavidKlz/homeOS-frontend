class HomeOSUrls {
  HomeOSUrls._();

  static const String file = "http://127.0.0.1:8080/api/file";
  static const String sync = "$file/sync";
  static const String fileAll = "$file/all";
  static const String fileAddMeta = "$file/meta";
  static String fileInfo(int id) => "$file/info/$id";
  static String fileById(int id) => "$file/$id";
  static String thumbById(int id) => "$file/thumb/$id";

  static const String meta = "http://127.0.0.1:8080/api/meta";
  static const String metaAll = "$meta/all";
  static String metaById(int id) => "$meta/$id";
}
