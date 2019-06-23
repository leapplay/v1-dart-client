part of leap-api.api;

class LoginResponse {
  
  AccessToken accessToken = null;
  

  String refreshToken = null;
  
  LoginResponse();

  @override
  String toString() {
    return 'LoginResponse[accessToken=$accessToken, refreshToken=$refreshToken, ]';
  }

  LoginResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    accessToken =
      
      
      new AccessToken.fromJson(json['accessToken'])
;
    refreshToken =
        json['refreshToken']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'accessToken': accessToken,
      'refreshToken': refreshToken
     };
  }

  static List<LoginResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<LoginResponse>() : json.map((value) => new LoginResponse.fromJson(value)).toList();
  }

  static Map<String, LoginResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LoginResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LoginResponse.fromJson(value));
    }
    return map;
  }
}

