library freebase_v1_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_freebase_v1_api/src/console_client.dart';

import "package:google_freebase_v1_api/freebase_v1_api_client.dart";

/** Find Freebase entities using textual queries and other constraints. */
class Freebase extends Client with ConsoleClient {

  final oauth2.OAuth2Console auth;

  Freebase([oauth2.OAuth2Console this.auth]);
}
