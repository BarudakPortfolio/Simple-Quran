import 'package:simple_quran/data/datasources/quran_remote_data_source.dart';
import 'package:simple_quran/domain/model/surat.dart';
import 'package:dartz/dartz.dart';
import 'package:simple_quran/domain/repository/quran_repository.dart';
import 'package:simple_quran/utils/exception.dart';
import 'package:simple_quran/utils/failure.dart';

class QuranRepositoryImpl implements QuranRepository {
  final QuranRemoteDataSource quranRemoteDataSource;

  QuranRepositoryImpl({required this.quranRemoteDataSource});

  @override
  Future<Either<Failure, List<Surat>>> getListSurat() async {
    try {
      final result = await quranRemoteDataSource.getListSurat();
      return Right(result);
    } on ServerException {
      return const Left(ServerFailure(''));
    }
  }
}
