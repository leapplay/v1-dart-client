part of leap-api.api;

class ChangeRequest {
  
  String id = null;
  

  DateTime createdOnUtc = null;
  

  String reference = null;
  

  String timeChange = null;
  
  ChangeRequest();

  @override
  String toString() {
    return 'ChangeRequest[id=$id, createdOnUtc=$createdOnUtc, reference=$reference, timeChange=$timeChange, ]';
  }

  ChangeRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    createdOnUtc = json['createdOnUtc'] == null ? null : DateTime.parse(json['createdOnUtc']);
    reference =
        json['reference']
    ;
    timeChange =
        json['timeChange']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'createdOnUtc': createdOnUtc == null ? '' : createdOnUtc.toUtc().toIso8601String(),
      'reference': reference,
      'timeChange': timeChange
     };
  }

  static List<ChangeRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<ChangeRequest>() : json.map((value) => new ChangeRequest.fromJson(value)).toList();
  }

  static Map<String, ChangeRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ChangeRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ChangeRequest.fromJson(value));
    }
    return map;
  }
}

