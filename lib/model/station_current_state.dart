part of leap-api.api;

class StationCurrentState {
  
  String stationId = null;
  

  String displayName = null;
  

  String controlMode = null;
  //enum controlModeEnum {  Undefined,  Local,  Remote,  RemoteWithQrCode,  };

  String networkState = null;
  //enum networkStateEnum {  Disconnected,  Connecting,  Connected,  };

  Session session = null;
  
  StationCurrentState();

  @override
  String toString() {
    return 'StationCurrentState[stationId=$stationId, displayName=$displayName, controlMode=$controlMode, networkState=$networkState, session=$session, ]';
  }

  StationCurrentState.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    stationId =
        json['stationId']
    ;
    displayName =
        json['displayName']
    ;
    controlMode =
        json['controlMode']
    ;
    networkState =
        json['networkState']
    ;
    session =
      
      
      new Session.fromJson(json['session'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'stationId': stationId,
      'displayName': displayName,
      'controlMode': controlMode,
      'networkState': networkState,
      'session': session
     };
  }

  static List<StationCurrentState> listFromJson(List<dynamic> json) {
    return json == null ? new List<StationCurrentState>() : json.map((value) => new StationCurrentState.fromJson(value)).toList();
  }

  static Map<String, StationCurrentState> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StationCurrentState>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StationCurrentState.fromJson(value));
    }
    return map;
  }
}

