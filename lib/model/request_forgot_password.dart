part of leap-api.api;

class RequestForgotPassword {
  
  String username = null;
  
  RequestForgotPassword();

  @override
  String toString() {
    return 'RequestForgotPassword[username=$username, ]';
  }

  RequestForgotPassword.fromJson(Map<String, dynamic> json) {
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

  static List<RequestForgotPassword> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestForgotPassword>() : json.map((value) => new RequestForgotPassword.fromJson(value)).toList();
  }

  static Map<String, RequestForgotPassword> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RequestForgotPassword>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RequestForgotPassword.fromJson(value));
    }
    return map;
  }
}

