part of leap-api.api;

class RequestStationMode {
  
  String mode = null;
  //enum modeEnum {  Undefined,  Local,  Remote,  RemoteWithQrCode,  };
  RequestStationMode();

  @override
  String toString() {
    return 'RequestStationMode[mode=$mode, ]';
  }

  RequestStationMode.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    mode =
        json['mode']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'mode': mode
     };
  }

  static List<RequestStationMode> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestStationMode>() : json.map((value) => new RequestStationMode.fromJson(value)).toList();
  }

  static Map<String, RequestStationMode> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RequestStationMode>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RequestStationMode.fromJson(value));
    }
    return map;
  }
}

