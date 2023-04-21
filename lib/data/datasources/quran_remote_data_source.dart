import 'package:dio/dio.dart';

import '../../domain/model/surat.dart';
import '../../utils/contants.dart';
import '../../utils/exception.dart';

abstract class QuranRemoteDataSource {
  Future<List<Surat>> getListSurat();
}

class QuranRemoteDataSouceImpl implements QuranRemoteDataSource {
  final dio = Dio();
  @override
  Future<List<Surat>> getListSurat() async {
    final response = await dio.get('$BASE_URL/surat');
    final List data = response.data['data'];
    if (response.statusCode == 200) {
      return data.map((e) => Surat.fromJson(e)).toList();
    } else {
      throw ServerException();
    }
  }
}
