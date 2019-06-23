part of leap-api.api;

class RequestCreateStation {
  
  String displayName = null;
  

  String password = null;
  
  RequestCreateStation();

  @override
  String toString() {
    return 'RequestCreateStation[displayName=$displayName, password=$password, ]';
  }

  RequestCreateStation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    displayName =
        json['displayName']
    ;
    password =
        json['password']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'displayName': displayName,
      'password': password
     };
  }

  static List<RequestCreateStation> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestCreateStation>() : json.map((value) => new RequestCreateStation.fromJson(value)).toList();
  }

  static Map<String, RequestCreateStation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RequestCreateStation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RequestCreateStation.fromJson(value));
    }
    return map;
  }
}

