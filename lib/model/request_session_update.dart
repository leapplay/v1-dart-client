part of leap-api.api;

class RequestSessionUpdate {
  
  String reference = null;
  

  String duration = null;
  
  RequestSessionUpdate();

  @override
  String toString() {
    return 'RequestSessionUpdate[reference=$reference, duration=$duration, ]';
  }

  RequestSessionUpdate.fromJson(Map<String, dynamic> json) {
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

  static List<RequestSessionUpdate> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestSessionUpdate>() : json.map((value) => new RequestSessionUpdate.fromJson(value)).toList();
  }

  static Map<String, RequestSessionUpdate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RequestSessionUpdate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RequestSessionUpdate.fromJson(value));
    }
    return map;
  }
}

