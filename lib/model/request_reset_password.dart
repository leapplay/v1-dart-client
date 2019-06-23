part of leap-api.api;

class RequestResetPassword {
  
  String username = null;
  

  String passwordResetToken = null;
  

  String newPassword = null;
  
  RequestResetPassword();

  @override
  String toString() {
    return 'RequestResetPassword[username=$username, passwordResetToken=$passwordResetToken, newPassword=$newPassword, ]';
  }

  RequestResetPassword.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    username =
        json['username']
    ;
    passwordResetToken =
        json['passwordResetToken']
    ;
    newPassword =
        json['newPassword']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'passwordResetToken': passwordResetToken,
      'newPassword': newPassword
     };
  }

  static List<RequestResetPassword> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestResetPassword>() : json.map((value) => new RequestResetPassword.fromJson(value)).toList();
  }

  static Map<String, RequestResetPassword> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RequestResetPassword>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RequestResetPassword.fromJson(value));
    }
    return map;
  }
}

