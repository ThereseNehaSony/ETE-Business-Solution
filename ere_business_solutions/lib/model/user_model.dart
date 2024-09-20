class LoginResponse {
  final String token;
  final String name;
  final String classMode;
  final int slote;
  final String status;
  final String approval;
  final String message;
  final String statusCode;

  LoginResponse({
    required this.token,
    required this.name,
    required this.classMode,
    required this.slote,
    required this.status,
    required this.approval,
    required this.message,
    required this.statusCode,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      token: json['token'],
      name: json['name'],
      classMode: json['class_mode'],
      slote: json['slote'],
      status: json['status'],
      approval: json['approval'],
      message: json['message'],
      statusCode: json['status_code'],
    );
  }
}
