import 'package:equatable/equatable.dart';

class User extends Equatable {
  const User({
    required this.lastName,
    required this.countryWishToVisit,
  });

  final String lastName;
  final String countryWishToVisit;

  @override
  List<Object?> get props => [lastName, countryWishToVisit];
}
