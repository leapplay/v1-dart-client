# leap-api.api.StationsApi

## Load the API package
```dart
import 'package:leap-api/api.dart';
```

All URIs are relative to *https://api.leap-play.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createStation**](StationsApi.md#createStation) | **PUT** /api/v1/stations | Creates a Station (Auth)
[**getSessionLogsAll**](StationsApi.md#getSessionLogsAll) | **GET** /api/v1/stations/sessions | Gets closed Sessions from all stations (Auth)
[**getSessionLogsByStationId**](StationsApi.md#getSessionLogsByStationId) | **GET** /api/v1/stations/{stationId}/sessions | Gets closed Sessions (Auth)
[**getSettings**](StationsApi.md#getSettings) | **GET** /api/v1/stations/settings | Gets the Settings of all Stations (Auth)
[**getSettingsByStationId**](StationsApi.md#getSettingsByStationId) | **GET** /api/v1/stations/{stationId}/settings | Get the Settings of an Station (Auth)
[**getState**](StationsApi.md#getState) | **GET** /api/v1/stations/{stationId} | Get the Station&#39;s State (Auth)
[**getStates**](StationsApi.md#getStates) | **GET** /api/v1/stations | Gets Collection of Station States (Auth)
[**sessionCreate**](StationsApi.md#sessionCreate) | **PUT** /api/v1/stations/{stationId}/sessions | Creates a Session (Auth)
[**sessionStop**](StationsApi.md#sessionStop) | **POST** /api/v1/stations/{stationId}/sessions/current/stop | Stops the running Session (Auth)
[**sessionUpdate**](StationsApi.md#sessionUpdate) | **POST** /api/v1/stations/{stationId}/sessions/current/update | Updates the running Session. (Auth)
[**setSettings**](StationsApi.md#setSettings) | **POST** /api/v1/stations/{stationId}/settings | Sets the Settings for an Station (Auth)
[**setStationMode**](StationsApi.md#setStationMode) | **POST** /api/v1/stations/{stationId}/settings/mode | Sets the Operation Mode (Auth)
[**setStationPassword**](StationsApi.md#setStationPassword) | **POST** /api/v1/stations/{stationId}/settings/password | Changes the Password (Auth)
[**setStationQrCode**](StationsApi.md#setStationQrCode) | **POST** /api/v1/stations/{stationId}/settings/qrcode | Sets the QrCode (Auth)


# **createStation**
> StationSettings createStation(createStation)

Creates a Station (Auth)

### Example 
```dart
import 'package:leap-api/api.dart';
// TODO Configure API key authorization: Bearer
//leap-api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//leap-api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new StationsApi();
var createStation = new RequestCreateStation(); // RequestCreateStation | Create Station Dto

try { 
    var result = api_instance.createStation(createStation);
    print(result);
} catch (e) {
    print("Exception when calling StationsApi->createStation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createStation** | [**RequestCreateStation**](RequestCreateStation.md)| Create Station Dto | [optional] 

### Return type

[**StationSettings**](StationSettings.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSessionLogsAll**
> List<SessionLog> getSessionLogsAll(take, skip)

Gets closed Sessions from all stations (Auth)

### Example 
```dart
import 'package:leap-api/api.dart';
// TODO Configure API key authorization: Bearer
//leap-api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//leap-api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new StationsApi();
var take = 56; // int | Entries to return
var skip = 56; // int | Entries to skip

try { 
    var result = api_instance.getSessionLogsAll(take, skip);
    print(result);
} catch (e) {
    print("Exception when calling StationsApi->getSessionLogsAll: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **take** | **int**| Entries to return | [optional] [default to 50]
 **skip** | **int**| Entries to skip | [optional] [default to 0]

### Return type

[**List<SessionLog>**](SessionLog.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSessionLogsByStationId**
> List<SessionLog> getSessionLogsByStationId(stationId, take, skip)

Gets closed Sessions (Auth)

### Example 
```dart
import 'package:leap-api/api.dart';
// TODO Configure API key authorization: Bearer
//leap-api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//leap-api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new StationsApi();
var stationId = ; // String | Station Id
var take = 56; // int | Entries to return
var skip = 56; // int | Entries to skip

try { 
    var result = api_instance.getSessionLogsByStationId(stationId, take, skip);
    print(result);
} catch (e) {
    print("Exception when calling StationsApi->getSessionLogsByStationId: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stationId** | [**String**](.md)| Station Id | 
 **take** | **int**| Entries to return | [optional] [default to 50]
 **skip** | **int**| Entries to skip | [optional] [default to 0]

### Return type

[**List<SessionLog>**](SessionLog.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSettings**
> List<StationSettings> getSettings()

Gets the Settings of all Stations (Auth)

### Example 
```dart
import 'package:leap-api/api.dart';
// TODO Configure API key authorization: Bearer
//leap-api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//leap-api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new StationsApi();

try { 
    var result = api_instance.getSettings();
    print(result);
} catch (e) {
    print("Exception when calling StationsApi->getSettings: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<StationSettings>**](StationSettings.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSettingsByStationId**
> StationSettings getSettingsByStationId(stationId)

Get the Settings of an Station (Auth)

### Example 
```dart
import 'package:leap-api/api.dart';
// TODO Configure API key authorization: Bearer
//leap-api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//leap-api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new StationsApi();
var stationId = ; // String | Station Id

try { 
    var result = api_instance.getSettingsByStationId(stationId);
    print(result);
} catch (e) {
    print("Exception when calling StationsApi->getSettingsByStationId: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stationId** | [**String**](.md)| Station Id | 

### Return type

[**StationSettings**](StationSettings.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getState**
> StationCurrentState getState(stationId)

Get the Station's State (Auth)

### Example 
```dart
import 'package:leap-api/api.dart';
// TODO Configure API key authorization: Bearer
//leap-api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//leap-api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new StationsApi();
var stationId = ; // String | Station Id

try { 
    var result = api_instance.getState(stationId);
    print(result);
} catch (e) {
    print("Exception when calling StationsApi->getState: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stationId** | [**String**](.md)| Station Id | 

### Return type

[**StationCurrentState**](StationCurrentState.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStates**
> List<StationCurrentState> getStates(networkStateFilter)

Gets Collection of Station States (Auth)

### Example 
```dart
import 'package:leap-api/api.dart';
// TODO Configure API key authorization: Bearer
//leap-api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//leap-api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new StationsApi();
var networkStateFilter = networkStateFilter_example; // String | Optional Network State Filter

try { 
    var result = api_instance.getStates(networkStateFilter);
    print(result);
} catch (e) {
    print("Exception when calling StationsApi->getStates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **networkStateFilter** | **String**| Optional Network State Filter | [optional] 

### Return type

[**List<StationCurrentState>**](StationCurrentState.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sessionCreate**
> CreatedSession sessionCreate(stationId, createSessionRequest)

Creates a Session (Auth)

### Example 
```dart
import 'package:leap-api/api.dart';
// TODO Configure API key authorization: Bearer
//leap-api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//leap-api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new StationsApi();
var stationId = ; // String | Station Id
var createSessionRequest = new RequestNewStationSession(); // RequestNewStationSession | New Session Request Dto

try { 
    var result = api_instance.sessionCreate(stationId, createSessionRequest);
    print(result);
} catch (e) {
    print("Exception when calling StationsApi->sessionCreate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stationId** | [**String**](.md)| Station Id | 
 **createSessionRequest** | [**RequestNewStationSession**](RequestNewStationSession.md)| New Session Request Dto | [optional] 

### Return type

[**CreatedSession**](CreatedSession.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sessionStop**
> StoppedSession sessionStop(stationId)

Stops the running Session (Auth)

### Example 
```dart
import 'package:leap-api/api.dart';
// TODO Configure API key authorization: Bearer
//leap-api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//leap-api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new StationsApi();
var stationId = ; // String | Station Id

try { 
    var result = api_instance.sessionStop(stationId);
    print(result);
} catch (e) {
    print("Exception when calling StationsApi->sessionStop: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stationId** | [**String**](.md)| Station Id | 

### Return type

[**StoppedSession**](StoppedSession.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sessionUpdate**
> UpdatedSession sessionUpdate(stationId, updateSessionRequest)

Updates the running Session. (Auth)

### Example 
```dart
import 'package:leap-api/api.dart';
// TODO Configure API key authorization: Bearer
//leap-api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//leap-api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new StationsApi();
var stationId = ; // String | Station Id
var updateSessionRequest = new RequestSessionUpdate(); // RequestSessionUpdate | The Update Request Dto

try { 
    var result = api_instance.sessionUpdate(stationId, updateSessionRequest);
    print(result);
} catch (e) {
    print("Exception when calling StationsApi->sessionUpdate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stationId** | [**String**](.md)| Station Id | 
 **updateSessionRequest** | [**RequestSessionUpdate**](RequestSessionUpdate.md)| The Update Request Dto | [optional] 

### Return type

[**UpdatedSession**](UpdatedSession.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setSettings**
> setSettings(stationId, setSettingsRequest)

Sets the Settings for an Station (Auth)

### Example 
```dart
import 'package:leap-api/api.dart';
// TODO Configure API key authorization: Bearer
//leap-api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//leap-api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new StationsApi();
var stationId = ; // String | Station Id
var setSettingsRequest = new RequestStationSettings(); // RequestStationSettings | Settings Dto

try { 
    api_instance.setSettings(stationId, setSettingsRequest);
} catch (e) {
    print("Exception when calling StationsApi->setSettings: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stationId** | [**String**](.md)| Station Id | 
 **setSettingsRequest** | [**RequestStationSettings**](RequestStationSettings.md)| Settings Dto | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setStationMode**
> setStationMode(stationId, setModeRequest)

Sets the Operation Mode (Auth)

### Example 
```dart
import 'package:leap-api/api.dart';
// TODO Configure API key authorization: Bearer
//leap-api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//leap-api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new StationsApi();
var stationId = ; // String | Station Id
var setModeRequest = new RequestStationMode(); // RequestStationMode | The Operation Mode

try { 
    api_instance.setStationMode(stationId, setModeRequest);
} catch (e) {
    print("Exception when calling StationsApi->setStationMode: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stationId** | [**String**](.md)| Station Id | 
 **setModeRequest** | [**RequestStationMode**](RequestStationMode.md)| The Operation Mode | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setStationPassword**
> setStationPassword(stationId, setPasswordRequest)

Changes the Password (Auth)

### Example 
```dart
import 'package:leap-api/api.dart';
// TODO Configure API key authorization: Bearer
//leap-api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//leap-api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new StationsApi();
var stationId = ; // String | Station Id
var setPasswordRequest = new RequestSetStationPassword(); // RequestSetStationPassword | New Password

try { 
    api_instance.setStationPassword(stationId, setPasswordRequest);
} catch (e) {
    print("Exception when calling StationsApi->setStationPassword: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stationId** | [**String**](.md)| Station Id | 
 **setPasswordRequest** | [**RequestSetStationPassword**](RequestSetStationPassword.md)| New Password | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setStationQrCode**
> setStationQrCode(stationId, setQrCodeRequest)

Sets the QrCode (Auth)

### Example 
```dart
import 'package:leap-api/api.dart';
// TODO Configure API key authorization: Bearer
//leap-api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//leap-api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new StationsApi();
var stationId = ; // String | Station Id
var setQrCodeRequest = new RequestStationQrCode(); // RequestStationQrCode | QrCode

try { 
    api_instance.setStationQrCode(stationId, setQrCodeRequest);
} catch (e) {
    print("Exception when calling StationsApi->setStationQrCode: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stationId** | [**String**](.md)| Station Id | 
 **setQrCodeRequest** | [**RequestStationQrCode**](RequestStationQrCode.md)| QrCode | [optional] 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

