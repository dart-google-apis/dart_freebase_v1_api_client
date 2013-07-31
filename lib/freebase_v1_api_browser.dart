library freebase_v1_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_freebase_v1_api/src/cloud_api_browser.dart';
import "package:google_freebase_v1_api/freebase_v1_api_client.dart";

/** Topic and MQL APIs provide you structured access to Freebase data. */
class Freebase extends Client with BrowserClient {

  /** OAuth Scope2: Sign in to Freebase with your account */
  static const String FREEBASE_SCOPE = "https://www.googleapis.com/auth/freebase";

  final oauth.OAuth2 auth;

  Freebase([oauth.OAuth2 this.auth]);
}
