import 'package:dartz/dartz.dart';
import 'package:easy_trip/core/error/failures.dart';
import 'package:easy_trip/features/auth/domain/entities/user.dart';
import 'package:easy_trip/features/auth/domain/repositories/user_repository.dart';

class UserService {
  const UserService(
    this._userRepository,
  );
  final IUserRepository _userRepository;

  Future<Either<Failure, void>> save() async {
    return _userRepository.save();
  }

  Future<Either<Failure, User>> get() async {
    return _userRepository.get();
  }
}
