part of leap-api.api;

class RequestChangePassword {
  
  String currentPassword = null;
  

  String newPassword = null;
  
  RequestChangePassword();

  @override
  String toString() {
    return 'RequestChangePassword[currentPassword=$currentPassword, newPassword=$newPassword, ]';
  }

  RequestChangePassword.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    currentPassword =
        json['currentPassword']
    ;
    newPassword =
        json['newPassword']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'currentPassword': currentPassword,
      'newPassword': newPassword
     };
  }

  static List<RequestChangePassword> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestChangePassword>() : json.map((value) => new RequestChangePassword.fromJson(value)).toList();
  }

  static Map<String, RequestChangePassword> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RequestChangePassword>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RequestChangePassword.fromJson(value));
    }
    return map;
  }
}

