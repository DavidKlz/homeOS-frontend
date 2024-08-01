import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../config/constants/homeos_urls.dart';
import '../../data/meta_info_dto.dart';
import '../../data/view/meta_info_data.dart';

part 'meta_info_provider.g.dart';

@riverpod
class MetaInfo extends _$MetaInfo {
  @override
  Future<List<MetaInfoData>> build() async {
    final dio = Dio();
    Response response = await dio.get(HomeOSUrls.metaAll);
    List<MetaInfoData> result = List.empty(growable: true);
    for (var file in response.data) {
      var dto = MetaInfoDTO.fromJson(file);
      if(result.where((e) => e.type == dto.type).isNotEmpty) {
        result.firstWhere((e) => e.type == dto.type).addValue(dto.id, dto.value);
      } else {
        result.add(MetaInfoData(dto.type, values: {dto.id: dto.value}));
      }
    }
    return result;
  }

  void remove(String type, int id) async {
    final dio = Dio();
    var result = await dio.delete(HomeOSUrls.metaById(id));
    if(result.statusCode == 200) {
      state.whenData((value) => value.firstWhere((e) => e.type == type).removeValue(id),);
    }
  }
  
  void add(MetaInfoDTO value) async {
    final dio = Dio();
    var result = await dio.post(HomeOSUrls.meta, data: value);
    if(result.statusCode == 200) {
      value = MetaInfoDTO.fromJson(result.data);
      state.whenData((data) {
        if(data.where((e) => e.type == value.type).isNotEmpty) {
          data.firstWhere((e) => e.type == value.type).addValue(value.id, value.value);
        } else {
          data.add(MetaInfoData(value.type, values: {value.id: value.value}));
        }
      },);
    }
  }
}