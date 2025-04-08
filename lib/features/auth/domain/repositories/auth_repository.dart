import 'package:blog_app/core/failures/failure.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {

  Future<Either<Failure, String>> signUpUser({
    required username,
    required email,
    required password,
  });

    Future<Either<Failure, String>> signInUser({
    required email,
    required password,
  });
}
