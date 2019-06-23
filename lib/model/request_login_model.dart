part of leap-api.api;

class RequestLoginModel {
  
  String username = null;
  

  String password = null;
  
  RequestLoginModel();

  @override
  String toString() {
    return 'RequestLoginModel[username=$username, password=$password, ]';
  }

  RequestLoginModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    username =
        json['username']
    ;
    password =
        json['password']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password
     };
  }

  static List<RequestLoginModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestLoginModel>() : json.map((value) => new RequestLoginModel.fromJson(value)).toList();
  }

  static Map<String, RequestLoginModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RequestLoginModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RequestLoginModel.fromJson(value));
    }
    return map;
  }
}

