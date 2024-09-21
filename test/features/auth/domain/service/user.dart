import 'package:easy_trip/features/auth/domain/repositories/user_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class IUserRepositoryMock extends Mock implements IUserRepository {}

void main() {
  late IUserRepository userRepository;

  setUp(() {
    userRepository = IUserRepositoryMock();
  });
}
