part of leap-api.api;

class RequestNewStationSession {
  
  String reference = null;
  

  String duration = null;
  
  RequestNewStationSession();

  @override
  String toString() {
    return 'RequestNewStationSession[reference=$reference, duration=$duration, ]';
  }

  RequestNewStationSession.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    reference =
        json['reference']
    ;
    duration =
        json['duration']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'reference': reference,
      'duration': duration
     };
  }

  static List<RequestNewStationSession> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestNewStationSession>() : json.map((value) => new RequestNewStationSession.fromJson(value)).toList();
  }

  static Map<String, RequestNewStationSession> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RequestNewStationSession>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RequestNewStationSession.fromJson(value));
    }
    return map;
  }
}

