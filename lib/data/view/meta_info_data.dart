class MetaInfoData {
  String type;
  Map<int, String> values;

  MetaInfoData(this.type, {Map<int, String>? values})
      : values = values ?? {};

  void addValue(int id, String value) => values.putIfAbsent(id, () => value);

  void removeValue(int id) => values.remove(id);
}
