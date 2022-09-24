class LogInResponse {
  final String token, error;

  LogInResponse({required this.token, required this.error});

  factory LogInResponse.fromJson(Map<String, dynamic> json) {
    return LogInResponse(
        token: json['token'] != null ? json['token'] : '',
        error: json['error'] != null ? json['error'] : '');
  }
}
