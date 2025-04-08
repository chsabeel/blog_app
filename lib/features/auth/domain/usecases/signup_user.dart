import 'package:blog_app/core/failures/failure.dart';
import 'package:blog_app/core/usecases/usecase.dart';
import 'package:blog_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class SignupUser implements UseCase<String, SignUpParams> {
  final AuthRepository authRepository;

  SignupUser({required this.authRepository});

  @override
  Future<Either<Failure, String>> call(SignUpParams params) async {
    return await authRepository.signUpUser(
      username: params.username,
      email: params.email,
      password: params.password,
    );
  }
}

class SignUpParams {
  final String username;
  final String email;
  final String password;

  SignUpParams({
    required this.username,
    required this.email,
    required this.password,
  });
}
