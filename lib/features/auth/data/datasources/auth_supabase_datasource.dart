import 'package:blog_app/core/failures/failure.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthSupabaseDataSource {
  Future<String> signUpUser({
    required username,
    required email,
    required password,
  });

  Future<String> signInUser({required email, required password});
}

class ImplAuthSupabaseDataSource implements AuthSupabaseDataSource {
  final SupabaseClient supabaseClient;

  ImplAuthSupabaseDataSource({required this.supabaseClient});

  @override
  Future<String> signInUser({required email, required password}) {
    // TODO: implement signInUser
    throw UnimplementedError();
  }

  @override
  Future<String> signUpUser({
    required username,
    required email,
    required password,
  }) async {
    try {
      final response = await supabaseClient.auth.signUp(
        data: {'name': username},
        email: email,
        password: password,
      );
      if (response.user == null) {
        throw ServerException(message: "Server Exception occured");
      }
      return response.user!.id;
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
