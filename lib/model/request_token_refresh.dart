part of leap-api.api;

class RequestTokenRefresh {
  
  String refreshToken = null;
  
  RequestTokenRefresh();

  @override
  String toString() {
    return 'RequestTokenRefresh[refreshToken=$refreshToken, ]';
  }

  RequestTokenRefresh.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    refreshToken =
        json['refreshToken']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'refreshToken': refreshToken
     };
  }

  static List<RequestTokenRefresh> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestTokenRefresh>() : json.map((value) => new RequestTokenRefresh.fromJson(value)).toList();
  }

  static Map<String, RequestTokenRefresh> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RequestTokenRefresh>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RequestTokenRefresh.fromJson(value));
    }
    return map;
  }
}

