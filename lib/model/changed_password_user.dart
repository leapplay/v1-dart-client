part of leap-api.api;

class ChangedPasswordUser {
  
  String refreshToken = null;
  
  ChangedPasswordUser();

  @override
  String toString() {
    return 'ChangedPasswordUser[refreshToken=$refreshToken, ]';
  }

  ChangedPasswordUser.fromJson(Map<String, dynamic> json) {
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

  static List<ChangedPasswordUser> listFromJson(List<dynamic> json) {
    return json == null ? new List<ChangedPasswordUser>() : json.map((value) => new ChangedPasswordUser.fromJson(value)).toList();
  }

  static Map<String, ChangedPasswordUser> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ChangedPasswordUser>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ChangedPasswordUser.fromJson(value));
    }
    return map;
  }
}

