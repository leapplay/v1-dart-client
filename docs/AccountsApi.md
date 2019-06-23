# leap-api.api.AccountsApi

## Load the API package
```dart
import 'package:leap-api/api.dart';
```

All URIs are relative to *https://api.leap-play.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**changePassword**](AccountsApi.md#changePassword) | **POST** /api/v1/accounts/password/change | Changes the Password and provides a new Refresh Token (Auth)
[**confirmEmail**](AccountsApi.md#confirmEmail) | **POST** /api/v1/accounts/email/confirmation | Confirms ownership of an E-Mail Address by an E-Mail Confirmation Token
[**register**](AccountsApi.md#register) | **POST** /api/v1/accounts/register | Registers a User Account
[**requestPassword**](AccountsApi.md#requestPassword) | **POST** /api/v1/accounts/password/forgot | Receives a Reset Token that is required to reset the Password
[**resendEMailConfirmation**](AccountsApi.md#resendEMailConfirmation) | **POST** /api/v1/accounts/email/confirmation/send | Re-sends a message with a EMail Confirmation Token.
[**resetPassword**](AccountsApi.md#resetPassword) | **POST** /api/v1/accounts/password/reset | Resets the Password with an Reset Token


# **changePassword**
> ChangedPasswordUser changePassword(changePasswordRequest)

Changes the Password and provides a new Refresh Token (Auth)

### Example 
```dart
import 'package:leap-api/api.dart';
// TODO Configure API key authorization: Bearer
//leap-api.api.Configuration.apiKey{'Authorization'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//leap-api.api.Configuration.apiKeyPrefix{'Authorization'} = "Bearer";

var api_instance = new AccountsApi();
var changePasswordRequest = new RequestChangePassword(); // RequestChangePassword | The change password request.

try { 
    var result = api_instance.changePassword(changePasswordRequest);
    print(result);
} catch (e) {
    print("Exception when calling AccountsApi->changePassword: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **changePasswordRequest** | [**RequestChangePassword**](RequestChangePassword.md)| The change password request. | 

### Return type

[**ChangedPasswordUser**](ChangedPasswordUser.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **confirmEmail**
> confirmEmail(emailConfirmationRequest)

Confirms ownership of an E-Mail Address by an E-Mail Confirmation Token

### Example 
```dart
import 'package:leap-api/api.dart';

var api_instance = new AccountsApi();
var emailConfirmationRequest = new RequestEmailConfirmation(); // RequestEmailConfirmation | The request email confirmation.

try { 
    api_instance.confirmEmail(emailConfirmationRequest);
} catch (e) {
    print("Exception when calling AccountsApi->confirmEmail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **emailConfirmationRequest** | [**RequestEmailConfirmation**](RequestEmailConfirmation.md)| The request email confirmation. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **register**
> register(registerRequest)

Registers a User Account

### Example 
```dart
import 'package:leap-api/api.dart';

var api_instance = new AccountsApi();
var registerRequest = new RequestRegisterUser(); // RequestRegisterUser | 

try { 
    api_instance.register(registerRequest);
} catch (e) {
    print("Exception when calling AccountsApi->register: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registerRequest** | [**RequestRegisterUser**](RequestRegisterUser.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestPassword**
> requestPassword(forgotPasswordRequest)

Receives a Reset Token that is required to reset the Password

### Example 
```dart
import 'package:leap-api/api.dart';

var api_instance = new AccountsApi();
var forgotPasswordRequest = new RequestForgotPassword(); // RequestForgotPassword | Request object holding the required parameter

try { 
    api_instance.requestPassword(forgotPasswordRequest);
} catch (e) {
    print("Exception when calling AccountsApi->requestPassword: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **forgotPasswordRequest** | [**RequestForgotPassword**](RequestForgotPassword.md)| Request object holding the required parameter | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resendEMailConfirmation**
> resendEMailConfirmation(resendConfirmationEmailRequest)

Re-sends a message with a EMail Confirmation Token.

### Example 
```dart
import 'package:leap-api/api.dart';

var api_instance = new AccountsApi();
var resendConfirmationEmailRequest = new RequestResendConfirmationEmail(); // RequestResendConfirmationEmail | The resend email confirmation request.

try { 
    api_instance.resendEMailConfirmation(resendConfirmationEmailRequest);
} catch (e) {
    print("Exception when calling AccountsApi->resendEMailConfirmation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resendConfirmationEmailRequest** | [**RequestResendConfirmationEmail**](RequestResendConfirmationEmail.md)| The resend email confirmation request. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetPassword**
> resetPassword(resetPasswordRequest)

Resets the Password with an Reset Token

### Example 
```dart
import 'package:leap-api/api.dart';

var api_instance = new AccountsApi();
var resetPasswordRequest = new RequestResetPassword(); // RequestResetPassword | The request reset password.

try { 
    api_instance.resetPassword(resetPasswordRequest);
} catch (e) {
    print("Exception when calling AccountsApi->resetPassword: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **resetPasswordRequest** | [**RequestResetPassword**](RequestResetPassword.md)| The request reset password. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

