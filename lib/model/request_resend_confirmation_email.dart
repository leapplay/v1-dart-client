part of leap-api.api;

class RequestResendConfirmationEmail {
  
  String username = null;
  
  RequestResendConfirmationEmail();

  @override
  String toString() {
    return 'RequestResendConfirmationEmail[username=$username, ]';
  }

  RequestResendConfirmationEmail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    username =
        json['username']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username
     };
  }

  static List<RequestResendConfirmationEmail> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestResendConfirmationEmail>() : json.map((value) => new RequestResendConfirmationEmail.fromJson(value)).toList();
  }

  static Map<String, RequestResendConfirmationEmail> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RequestResendConfirmationEmail>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RequestResendConfirmationEmail.fromJson(value));
    }
    return map;
  }
}

