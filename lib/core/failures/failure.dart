class Failure {
  final String message;
  const Failure({this.message = "An un expected error occured"});
}

class ServerException {
  final String message;

  ServerException({this.message = "An Server Exception Occured"});
}
