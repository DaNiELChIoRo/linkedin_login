import 'package:linkedin_login/src/wrappers/linked_in_error_object.dart';
import 'package:linkedin_login/src/wrappers/linked_in_token_object.dart';

/// This class will store code, state, access token and error if there is it
/// State represents unique set of characters that will be used for security
/// reasons
/// Code that you will exchange for access token later
/// Error property will be filled up if flow catch any of errors
class AuthorizationCodeResponse {
  String state;
  String code;
  LinkedInTokenObject accessToken;
  LinkedInErrorObject error;

  AuthorizationCodeResponse({
    this.code,
    this.error,
    this.state,
  });

  /// Setter for error object, store error object information inside [error]
  /// property
  set errorObject(LinkedInErrorObject error) {
    this.error = error;
    this.accessToken = null;
    this.code = null;
    this.state = null;
  }
}