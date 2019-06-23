part of leap-api.api;

class Session {
  
  String sessionId = null;
  

  String reference = null;
  

  String state = null;
  //enum stateEnum {  Requested,  Delivered,  Started,  Ended,  Canceled,  DeliveryTimeout,  ResponseTimeout,  };

  DateTime startedOnUtc = null;
  

  String startDuration = null;
  

  String maxDurationLimit = null;
  
  Session();

  @override
  String toString() {
    return 'Session[sessionId=$sessionId, reference=$reference, state=$state, startedOnUtc=$startedOnUtc, startDuration=$startDuration, maxDurationLimit=$maxDurationLimit, ]';
  }

  Session.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    sessionId =
        json['sessionId']
    ;
    reference =
        json['reference']
    ;
    state =
        json['state']
    ;
    startedOnUtc = json['startedOnUtc'] == null ? null : DateTime.parse(json['startedOnUtc']);
    startDuration =
        json['startDuration']
    ;
    maxDurationLimit =
        json['maxDurationLimit']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'sessionId': sessionId,
      'reference': reference,
      'state': state,
      'startedOnUtc': startedOnUtc == null ? '' : startedOnUtc.toUtc().toIso8601String(),
      'startDuration': startDuration,
      'maxDurationLimit': maxDurationLimit
     };
  }

  static List<Session> listFromJson(List<dynamic> json) {
    return json == null ? new List<Session>() : json.map((value) => new Session.fromJson(value)).toList();
  }

  static Map<String, Session> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Session>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Session.fromJson(value));
    }
    return map;
  }
}

