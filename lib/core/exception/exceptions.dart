class DatabaseExceptions implements Exception {
  final String message;

  DatabaseExceptions(this.message);

  @override
  String toString() => 'DataBaseExceptions(message: $message)';
}
