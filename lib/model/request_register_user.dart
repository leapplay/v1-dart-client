part of leap-api.api;

class RequestRegisterUser {
  
  String username = null;
  

  String eMailAddress = null;
  

  String password = null;
  
  RequestRegisterUser();

  @override
  String toString() {
    return 'RequestRegisterUser[username=$username, eMailAddress=$eMailAddress, password=$password, ]';
  }

  RequestRegisterUser.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    username =
        json['username']
    ;
    eMailAddress =
        json['eMailAddress']
    ;
    password =
        json['password']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'eMailAddress': eMailAddress,
      'password': password
     };
  }

  static List<RequestRegisterUser> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestRegisterUser>() : json.map((value) => new RequestRegisterUser.fromJson(value)).toList();
  }

  static Map<String, RequestRegisterUser> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RequestRegisterUser>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RequestRegisterUser.fromJson(value));
    }
    return map;
  }
}

