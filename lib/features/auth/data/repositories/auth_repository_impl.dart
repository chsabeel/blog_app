import 'package:blog_app/core/failures/failure.dart';
import 'package:blog_app/features/auth/data/datasources/auth_supabase_datasource.dart';
import 'package:blog_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthSupabaseDataSource supabaseDataSource;

  AuthRepositoryImpl({required this.supabaseDataSource});
  @override
  Future<Either<Failure, String>> signInUser({
    required email,
    required password,
  }) {
    // TODO: implement signInUser
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> signUpUser({
    required username,
    required email,
    required password,
  }) async {
    try {
      final userId = await supabaseDataSource.signUpUser(
        username: username,
        email: email,
        password: password,
      );
      return right(userId);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }
}
