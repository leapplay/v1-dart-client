part of leap-api.api;

class RequestStationSettings {
  
  String displayName = null;
  

  String mode = null;
  //enum modeEnum {  Undefined,  Local,  Remote,  RemoteWithQrCode,  };

  String qrCode = null;
  
  RequestStationSettings();

  @override
  String toString() {
    return 'RequestStationSettings[displayName=$displayName, mode=$mode, qrCode=$qrCode, ]';
  }

  RequestStationSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    displayName =
        json['displayName']
    ;
    mode =
        json['mode']
    ;
    qrCode =
        json['qrCode']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'displayName': displayName,
      'mode': mode,
      'qrCode': qrCode
     };
  }

  static List<RequestStationSettings> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestStationSettings>() : json.map((value) => new RequestStationSettings.fromJson(value)).toList();
  }

  static Map<String, RequestStationSettings> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RequestStationSettings>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RequestStationSettings.fromJson(value));
    }
    return map;
  }
}

