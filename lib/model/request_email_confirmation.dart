part of leap-api.api;

class RequestEmailConfirmation {
  
  String username = null;
  

  String emailConfirmationToken = null;
  
  RequestEmailConfirmation();

  @override
  String toString() {
    return 'RequestEmailConfirmation[username=$username, emailConfirmationToken=$emailConfirmationToken, ]';
  }

  RequestEmailConfirmation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    username =
        json['username']
    ;
    emailConfirmationToken =
        json['emailConfirmationToken']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'emailConfirmationToken': emailConfirmationToken
     };
  }

  static List<RequestEmailConfirmation> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestEmailConfirmation>() : json.map((value) => new RequestEmailConfirmation.fromJson(value)).toList();
  }

  static Map<String, RequestEmailConfirmation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RequestEmailConfirmation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RequestEmailConfirmation.fromJson(value));
    }
    return map;
  }
}

