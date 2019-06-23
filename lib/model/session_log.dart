part of leap-api.api;

class SessionLog {
  
  String stationId = null;
  

  String sessionId = null;
  

  String requestedBy = null;
  //enum requestedByEnum {  Undefined,  ShellClient,  WebApi,  };

  String latestState = null;
  //enum latestStateEnum {  Requested,  Delivered,  Started,  Ended,  Canceled,  DeliveryTimeout,  ResponseTimeout,  };

  DateTime startedUtc = null;
  

  String reference = null;
  

  String maxDurationLimit = null;
  

  DateTime endedUtc = null;
  

  String stoppedBy = null;
  //enum stoppedByEnum {  Unknown,  UserLogout,  RemoteLogout,  Inactivity,  StationShutdown,  LimitReached,  ConnectionLoss,  SubscriptionEnded,  };

  List<ChangeRequest> changeRequests = [];
  
  SessionLog();

  @override
  String toString() {
    return 'SessionLog[stationId=$stationId, sessionId=$sessionId, requestedBy=$requestedBy, latestState=$latestState, startedUtc=$startedUtc, reference=$reference, maxDurationLimit=$maxDurationLimit, endedUtc=$endedUtc, stoppedBy=$stoppedBy, changeRequests=$changeRequests, ]';
  }

  SessionLog.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    stationId =
        json['stationId']
    ;
    sessionId =
        json['sessionId']
    ;
    requestedBy =
        json['requestedBy']
    ;
    latestState =
        json['latestState']
    ;
    startedUtc = json['startedUtc'] == null ? null : DateTime.parse(json['startedUtc']);
    reference =
        json['reference']
    ;
    maxDurationLimit =
        json['maxDurationLimit']
    ;
    endedUtc = json['endedUtc'] == null ? null : DateTime.parse(json['endedUtc']);
    stoppedBy =
        json['stoppedBy']
    ;
    changeRequests =
      ChangeRequest.listFromJson(json['changeRequests'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'stationId': stationId,
      'sessionId': sessionId,
      'requestedBy': requestedBy,
      'latestState': latestState,
      'startedUtc': startedUtc == null ? '' : startedUtc.toUtc().toIso8601String(),
      'reference': reference,
      'maxDurationLimit': maxDurationLimit,
      'endedUtc': endedUtc == null ? '' : endedUtc.toUtc().toIso8601String(),
      'stoppedBy': stoppedBy,
      'changeRequests': changeRequests
     };
  }

  static List<SessionLog> listFromJson(List<dynamic> json) {
    return json == null ? new List<SessionLog>() : json.map((value) => new SessionLog.fromJson(value)).toList();
  }

  static Map<String, SessionLog> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SessionLog>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SessionLog.fromJson(value));
    }
    return map;
  }
}

