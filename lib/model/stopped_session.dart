part of leap-api.api;

class StoppedSession {
  
  String stationId = null;
  

  String sessionId = null;
  
  StoppedSession();

  @override
  String toString() {
    return 'StoppedSession[stationId=$stationId, sessionId=$sessionId, ]';
  }

  StoppedSession.fromJson(Map<String, dynamic> json) {
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

  static List<StoppedSession> listFromJson(List<dynamic> json) {
    return json == null ? new List<StoppedSession>() : json.map((value) => new StoppedSession.fromJson(value)).toList();
  }

  static Map<String, StoppedSession> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StoppedSession>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StoppedSession.fromJson(value));
    }
    return map;
  }
}

