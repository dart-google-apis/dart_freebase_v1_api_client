library freebase_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_freebase_v1_api/src/cloud_api_console.dart';

import "package:google_freebase_v1_api/freebase_v1_api_client.dart";

/** Topic and MQL APIs provide you structured access to Freebase data. */
class Freebase extends Client with ConsoleClient {

  /** OAuth Scope2: Sign in to Freebase with your account */
  static const String FREEBASE_SCOPE = "https://www.googleapis.com/auth/freebase";

  final oauth2.OAuth2Console auth;

  Freebase([oauth2.OAuth2Console this.auth]);
}
