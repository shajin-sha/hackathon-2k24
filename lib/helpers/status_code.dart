//* API responses are warped in Success and Failure classes.

class Success {
  Success({this.data});
  final dynamic data;
}

class Failure {
  Failure({required this.message, this.data});
  final String message;
  final dynamic data;
}
