part of leap-api.api;

class AccessToken {
  
  String token = null;
  

  int expiresIn = null;
  
  AccessToken();

  @override
  String toString() {
    return 'AccessToken[token=$token, expiresIn=$expiresIn, ]';
  }

  AccessToken.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    token =
        json['token']
    ;
    expiresIn =
        json['expiresIn']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'expiresIn': expiresIn
     };
  }

  static List<AccessToken> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccessToken>() : json.map((value) => new AccessToken.fromJson(value)).toList();
  }

  static Map<String, AccessToken> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccessToken>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccessToken.fromJson(value));
    }
    return map;
  }
}

