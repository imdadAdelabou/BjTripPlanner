import 'package:dartz/dartz.dart';
import 'package:easy_trip/core/error/failures.dart';
import 'package:easy_trip/features/auth/domain/entities/user.dart';

abstract class IUserRepository {
  Future<Either<Failure, void>> save();
  Future<Either<Failure, User>> get();
}
