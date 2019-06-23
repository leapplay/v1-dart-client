part of leap-api.api;

class RequestStationQrCode {
  
  String qrCode = null;
  
  RequestStationQrCode();

  @override
  String toString() {
    return 'RequestStationQrCode[qrCode=$qrCode, ]';
  }

  RequestStationQrCode.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    qrCode =
        json['qrCode']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'qrCode': qrCode
     };
  }

  static List<RequestStationQrCode> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestStationQrCode>() : json.map((value) => new RequestStationQrCode.fromJson(value)).toList();
  }

  static Map<String, RequestStationQrCode> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RequestStationQrCode>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RequestStationQrCode.fromJson(value));
    }
    return map;
  }
}

