import 'package:dartz/dartz.dart';
import 'package:simple_quran/utils/failure.dart';

import '../model/surat.dart';

abstract class QuranRepository {
  Future<Either<Failure, List<Surat>>> getListSurat();
}
