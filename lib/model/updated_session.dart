part of leap-api.api;

class UpdatedSession {
  
  String stationId = null;
  

  String sessionId = null;
  

  String changeRequestId = null;
  
  UpdatedSession();

  @override
  String toString() {
    return 'UpdatedSession[stationId=$stationId, sessionId=$sessionId, changeRequestId=$changeRequestId, ]';
  }

  UpdatedSession.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    stationId =
        json['stationId']
    ;
    sessionId =
        json['sessionId']
    ;
    changeRequestId =
        json['changeRequestId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'stationId': stationId,
      'sessionId': sessionId,
      'changeRequestId': changeRequestId
     };
  }

  static List<UpdatedSession> listFromJson(List<dynamic> json) {
    return json == null ? new List<UpdatedSession>() : json.map((value) => new UpdatedSession.fromJson(value)).toList();
  }

  static Map<String, UpdatedSession> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdatedSession>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdatedSession.fromJson(value));
    }
    return map;
  }
}

