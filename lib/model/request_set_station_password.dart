part of leap-api.api;

class RequestSetStationPassword {
  
  String password = null;
  
  RequestSetStationPassword();

  @override
  String toString() {
    return 'RequestSetStationPassword[password=$password, ]';
  }

  RequestSetStationPassword.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    password =
        json['password']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'password': password
     };
  }

  static List<RequestSetStationPassword> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestSetStationPassword>() : json.map((value) => new RequestSetStationPassword.fromJson(value)).toList();
  }

  static Map<String, RequestSetStationPassword> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RequestSetStationPassword>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RequestSetStationPassword.fromJson(value));
    }
    return map;
  }
}

