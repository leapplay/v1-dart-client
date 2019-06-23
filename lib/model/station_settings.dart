part of leap-api.api;

class StationSettings {
  
  String stationId = null;
  

  String displayName = null;
  

  String qrCode = null;
  

  String controlMode = null;
  //enum controlModeEnum {  Undefined,  Local,  Remote,  RemoteWithQrCode,  };
  StationSettings();

  @override
  String toString() {
    return 'StationSettings[stationId=$stationId, displayName=$displayName, qrCode=$qrCode, controlMode=$controlMode, ]';
  }

  StationSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    stationId =
        json['stationId']
    ;
    displayName =
        json['displayName']
    ;
    qrCode =
        json['qrCode']
    ;
    controlMode =
        json['controlMode']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'stationId': stationId,
      'displayName': displayName,
      'qrCode': qrCode,
      'controlMode': controlMode
     };
  }

  static List<StationSettings> listFromJson(List<dynamic> json) {
    return json == null ? new List<StationSettings>() : json.map((value) => new StationSettings.fromJson(value)).toList();
  }

  static Map<String, StationSettings> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StationSettings>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StationSettings.fromJson(value));
    }
    return map;
  }
}

