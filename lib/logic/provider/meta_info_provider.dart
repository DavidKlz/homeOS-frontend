import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/meta_info_dto.dart';

part 'meta_info_provider.g.dart';

@riverpod
class MetaInfoProvider extends _$MetaInfoProvider {
  @override
  Future<List<MetaInfoDTO>> build() async {
    return [];
  }
}