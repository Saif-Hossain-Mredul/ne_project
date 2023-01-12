class SensorData {
  SensorData({
    required this.row_0,
    required this.row_1,
    required this.row_2,
    required this.row_3,
    required this.row_4,
    required this.row_5,
  });
  late final List<double> row_0;
  late final List<double> row_1;
  late final List<double> row_2;
  late final List<double> row_3;
  late final List<double> row_4;
  late final List<double> row_5;
  late final List<double> data = [];
  
  SensorData.fromJson(Map<String, dynamic> json){
    row_0 = List.castFrom<dynamic, double>(json['row_0']);
    row_1 = List.castFrom<dynamic, double>(json['row_1']);
    row_2 = List.castFrom<dynamic, double>(json['row_2']);
    row_3 = List.castFrom<dynamic, double>(json['row_3']);
    row_4 = List.castFrom<dynamic, double>(json['row_4']);
    row_5 = List.castFrom<dynamic, double>(json['row_5']);

    data.addAll(row_0);
    data.addAll(row_1);
    data.addAll(row_2);
    data.addAll(row_3);
    data.addAll(row_4);
    data.addAll(row_5);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['row_0'] = row_0;
    _data['row_1'] = row_1;
    _data['row_2'] = row_2;
    _data['row_3'] = row_3;
    _data['row_4'] = row_4;
    _data['row_5'] = row_5;
    return _data;
  }
}