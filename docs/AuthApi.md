# leap-api.api.AuthApi

## Load the API package
```dart
import 'package:leap-api/api.dart';
```

All URIs are relative to *https://api.leap-play.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**login**](AuthApi.md#login) | **POST** /api/v1/auth/login | Receive an Access and Refresh Token
[**logout**](AuthApi.md#logout) | **POST** /api/v1/auth/logout | Invalidate the Refresh token (Auth)
[**refreshToken**](AuthApi.md#refreshToken) | **POST** /api/v1/auth/refreshtoken | Receive a new Access token


# **login**
> LoginResponse login(loginRequest)

Receive an Access and Refresh Token

### Example 
```dart
import 'package:leap-api/api.dart';

var api_instance = new AuthApi();
var loginRequest = new RequestLoginModel(); // RequestLoginModel | Login Request Dto

try { 
    var result = api_instance.login(loginRequest);
    print(result);
} catch (e) {
    print("Exception when calling AuthApi->login: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginRequest** | [**RequestLoginModel**](RequestLoginModel.md)| Login Request Dto | [optional] 

### Return type

[**LoginResponse**](LoginResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout**
> logout()

Invalidate the Refresh token (Auth)

### Example 
```dart
import 'package:leap-api/api.dart';
// TODO Configure API key authorization: Bearer
//leap-api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//leap-api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new AuthApi();

try { 
    api_instance.logout();
} catch (e) {
    print("Exception when calling AuthApi->logout: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshToken**
> AccessToken refreshToken(requestTokenRefresh, authorization)

Receive a new Access token

### Example 
```dart
import 'package:leap-api/api.dart';

var api_instance = new AuthApi();
var requestTokenRefresh = new RequestTokenRefresh(); // RequestTokenRefresh | Refresh Token Dto
var authorization = authorization_example; // String | Any previous Access Token.

try { 
    var result = api_instance.refreshToken(requestTokenRefresh, authorization);
    print(result);
} catch (e) {
    print("Exception when calling AuthApi->refreshToken: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestTokenRefresh** | [**RequestTokenRefresh**](RequestTokenRefresh.md)| Refresh Token Dto | [optional] 
 **authorization** | **String**| Any previous Access Token. | [optional] 

### Return type

[**AccessToken**](AccessToken.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

