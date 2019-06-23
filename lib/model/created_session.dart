part of leap-api.api;

class CreatedSession {
  
  String stationId = null;
  

  String sessionId = null;
  
  CreatedSession();

  @override
  String toString() {
    return 'CreatedSession[stationId=$stationId, sessionId=$sessionId, ]';
  }

  CreatedSession.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    stationId =
        json['stationId']
    ;
    sessionId =
        json['sessionId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'stationId': stationId,
      'sessionId': sessionId
     };
  }

  static List<CreatedSession> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreatedSession>() : json.map((value) => new CreatedSession.fromJson(value)).toList();
  }

  static Map<String, CreatedSession> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreatedSession>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreatedSession.fromJson(value));
    }
    return map;
  }
}

