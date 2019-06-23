part of leap-api.api;



class StationsApi {
  final ApiClient apiClient;

  StationsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Creates a Station (Auth)
  ///
  /// 
  Future<StationSettings> createStation({ RequestCreateStation createStation }) async {
    Object postBody = createStation;

    // verify required params are set

    // create path and map variables
    String path = "/api/v1/stations".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json-patch+json","application/json","text/json","application/_*+json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Bearer"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'StationSettings') as StationSettings ;
    } else {
      return null;
    }
  }
  /// Gets closed Sessions from all stations (Auth)
  ///
  /// 
  Future<List<SessionLog>> getSessionLogsAll({ int take, int skip }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/v1/stations/sessions".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(take != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "take", take));
    }
    if(skip != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "skip", skip));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Bearer"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
        (apiClient.deserialize(response.body, 'List<SessionLog>') as List).map((item) => item as SessionLog).toList();
    } else {
      return null;
    }
  }
  /// Gets closed Sessions (Auth)
  ///
  /// 
  Future<List<SessionLog>> getSessionLogsByStationId(String stationId, { int take, int skip }) async {
    Object postBody = null;

    // verify required params are set
    if(stationId == null) {
     throw new ApiException(400, "Missing required param: stationId");
    }

    // create path and map variables
    String path = "/api/v1/stations/{stationId}/sessions".replaceAll("{format}","json").replaceAll("{" + "stationId" + "}", stationId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(take != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "take", take));
    }
    if(skip != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "skip", skip));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Bearer"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
        (apiClient.deserialize(response.body, 'List<SessionLog>') as List).map((item) => item as SessionLog).toList();
    } else {
      return null;
    }
  }
  /// Gets the Settings of all Stations (Auth)
  ///
  /// 
  Future<List<StationSettings>> getSettings() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/v1/stations/settings".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Bearer"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
        (apiClient.deserialize(response.body, 'List<StationSettings>') as List).map((item) => item as StationSettings).toList();
    } else {
      return null;
    }
  }
  /// Get the Settings of an Station (Auth)
  ///
  /// 
  Future<StationSettings> getSettingsByStationId(String stationId) async {
    Object postBody = null;

    // verify required params are set
    if(stationId == null) {
     throw new ApiException(400, "Missing required param: stationId");
    }

    // create path and map variables
    String path = "/api/v1/stations/{stationId}/settings".replaceAll("{format}","json").replaceAll("{" + "stationId" + "}", stationId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Bearer"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'StationSettings') as StationSettings ;
    } else {
      return null;
    }
  }
  /// Get the Station&#39;s State (Auth)
  ///
  /// 
  Future<StationCurrentState> getState(String stationId) async {
    Object postBody = null;

    // verify required params are set
    if(stationId == null) {
     throw new ApiException(400, "Missing required param: stationId");
    }

    // create path and map variables
    String path = "/api/v1/stations/{stationId}".replaceAll("{format}","json").replaceAll("{" + "stationId" + "}", stationId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Bearer"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'StationCurrentState') as StationCurrentState ;
    } else {
      return null;
    }
  }
  /// Gets Collection of Station States (Auth)
  ///
  /// 
  Future<List<StationCurrentState>> getStates({ String networkStateFilter }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/v1/stations".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(networkStateFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "networkStateFilter", networkStateFilter));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Bearer"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
        (apiClient.deserialize(response.body, 'List<StationCurrentState>') as List).map((item) => item as StationCurrentState).toList();
    } else {
      return null;
    }
  }
  /// Creates a Session (Auth)
  ///
  /// 
  Future<CreatedSession> sessionCreate(String stationId, { RequestNewStationSession createSessionRequest }) async {
    Object postBody = createSessionRequest;

    // verify required params are set
    if(stationId == null) {
     throw new ApiException(400, "Missing required param: stationId");
    }

    // create path and map variables
    String path = "/api/v1/stations/{stationId}/sessions".replaceAll("{format}","json").replaceAll("{" + "stationId" + "}", stationId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json-patch+json","application/json","text/json","application/_*+json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Bearer"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'CreatedSession') as CreatedSession ;
    } else {
      return null;
    }
  }
  /// Stops the running Session (Auth)
  ///
  /// 
  Future<StoppedSession> sessionStop(String stationId) async {
    Object postBody = null;

    // verify required params are set
    if(stationId == null) {
     throw new ApiException(400, "Missing required param: stationId");
    }

    // create path and map variables
    String path = "/api/v1/stations/{stationId}/sessions/current/stop".replaceAll("{format}","json").replaceAll("{" + "stationId" + "}", stationId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Bearer"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'StoppedSession') as StoppedSession ;
    } else {
      return null;
    }
  }
  /// Updates the running Session. (Auth)
  ///
  /// 
  Future<UpdatedSession> sessionUpdate(String stationId, { RequestSessionUpdate updateSessionRequest }) async {
    Object postBody = updateSessionRequest;

    // verify required params are set
    if(stationId == null) {
     throw new ApiException(400, "Missing required param: stationId");
    }

    // create path and map variables
    String path = "/api/v1/stations/{stationId}/sessions/current/update".replaceAll("{format}","json").replaceAll("{" + "stationId" + "}", stationId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json-patch+json","application/json","text/json","application/_*+json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Bearer"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'UpdatedSession') as UpdatedSession ;
    } else {
      return null;
    }
  }
  /// Sets the Settings for an Station (Auth)
  ///
  /// 
  Future setSettings(String stationId, { RequestStationSettings setSettingsRequest }) async {
    Object postBody = setSettingsRequest;

    // verify required params are set
    if(stationId == null) {
     throw new ApiException(400, "Missing required param: stationId");
    }

    // create path and map variables
    String path = "/api/v1/stations/{stationId}/settings".replaceAll("{format}","json").replaceAll("{" + "stationId" + "}", stationId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json-patch+json","application/json","text/json","application/_*+json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Bearer"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          ;
    } else {
      return ;
    }
  }
  /// Sets the Operation Mode (Auth)
  ///
  /// 
  Future setStationMode(String stationId, { RequestStationMode setModeRequest }) async {
    Object postBody = setModeRequest;

    // verify required params are set
    if(stationId == null) {
     throw new ApiException(400, "Missing required param: stationId");
    }

    // create path and map variables
    String path = "/api/v1/stations/{stationId}/settings/mode".replaceAll("{format}","json").replaceAll("{" + "stationId" + "}", stationId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json-patch+json","application/json","text/json","application/_*+json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Bearer"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          ;
    } else {
      return ;
    }
  }
  /// Changes the Password (Auth)
  ///
  /// 
  Future setStationPassword(String stationId, { RequestSetStationPassword setPasswordRequest }) async {
    Object postBody = setPasswordRequest;

    // verify required params are set
    if(stationId == null) {
     throw new ApiException(400, "Missing required param: stationId");
    }

    // create path and map variables
    String path = "/api/v1/stations/{stationId}/settings/password".replaceAll("{format}","json").replaceAll("{" + "stationId" + "}", stationId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json-patch+json","application/json","text/json","application/_*+json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Bearer"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          ;
    } else {
      return ;
    }
  }
  /// Sets the QrCode (Auth)
  ///
  /// 
  Future setStationQrCode(String stationId, { RequestStationQrCode setQrCodeRequest }) async {
    Object postBody = setQrCodeRequest;

    // verify required params are set
    if(stationId == null) {
     throw new ApiException(400, "Missing required param: stationId");
    }

    // create path and map variables
    String path = "/api/v1/stations/{stationId}/settings/qrcode".replaceAll("{format}","json").replaceAll("{" + "stationId" + "}", stationId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json-patch+json","application/json","text/json","application/_*+json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["Bearer"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          ;
    } else {
      return ;
    }
  }
}
