part of freebase_v1_api_browser;

/** Client to access the freebase v1 API */
/** Topic and MQL APIs provide you structured access to Freebase data. */
class Freebase extends BrowserClient {

  TextResource _text;
  TextResource get text => _text;
  TopicResource _topic;
  TopicResource get topic => _topic;

  /** OAuth Scope2: Sign in to Freebase with your account */
  static const String FREEBASE_SCOPE = "https://www.googleapis.com/auth/freebase";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  String get alt => params["alt"];
  set alt(String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  String get fields => params["fields"];
  set fields(String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  String get key => params["key"];
  set key(String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  String get oauth_token => params["oauth_token"];
  set oauth_token(String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  String get quotaUser => params["quotaUser"];
  set quotaUser(String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  String get userIp => params["userIp"];
  set userIp(String value) => params["userIp"] = value;

  Freebase([OAuth2 auth]) : super(auth) {
    basePath = "/freebase/v1/";
    rootUrl = "https://www.googleapis.com:443/";
    _text = new TextResource(this);
    _topic = new TopicResource(this);
  }

  /**
   * Returns the scaled/cropped image attached to a freebase node.
   *
   * [id] - Freebase entity or content id, mid, or guid.
   *
   * [fallbackid] - Use the image associated with this secondary id if no image is associated with the primary id.
   *   Default: /freebase/no_image_png
   *
   * [maxheight] - Maximum height in pixels for resulting image.
   *   Maximum: 4096
   *
   * [maxwidth] - Maximum width in pixels for resulting image.
   *   Maximum: 4096
   *
   * [mode] - Method used to scale or crop image.
   *   Default: fit
   *   Allowed values:
   *     fill - Fill rectangle completely with image, relax constraint on one dimension if necessary.
   *     fillcrop - Fill rectangle with image, crop image to maintain rectangle dimensions.
   *     fillcropmid - Fill rectangle with image, center horizontally, crop left and right.
   *     fit - Fit image inside rectangle, leave empty space in one dimension if necessary.
   *
   * [pad] - A boolean specifying whether the resulting image should be padded up to the requested dimensions.
   *   Default: false
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> image(String id, {String fallbackid, int maxheight, int maxwidth, String mode, bool pad, Map optParams}) {
    var completer = new Completer();
    var url = "image{/id*}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (fallbackid != null) queryParams["fallbackid"] = fallbackid;
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (maxheight != null) queryParams["maxheight"] = maxheight;
    if (maxwidth != null) queryParams["maxwidth"] = maxwidth;
    if (mode != null && !["fill", "fillcrop", "fillcropmid", "fit"].contains(mode)) {
      paramErrors.add("Allowed values for mode: fill, fillcrop, fillcropmid, fit");
    }
    if (mode != null) queryParams["mode"] = mode;
    if (pad != null) queryParams["pad"] = pad;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Performs MQL Queries.
   *
   * [query] - An envelope containing a single MQL query.
   *
   * [as_of_time] - Run the query as it would've been run at the specified point in time.
   *
   * [callback] - JS method name for JSONP callbacks.
   *
   * [cost] - Show the costs or not.
   *   Default: false
   *
   * [cursor] - The mql cursor.
   *
   * [dateline] - The dateline that you get in a mqlwrite response to ensure consistent results.
   *
   * [html_escape] - Whether or not to escape entities.
   *   Default: true
   *
   * [indent] - How many spaces to indent the json.
   *   Default: 0
   *   Maximum: 10
   *
   * [lang] - The language of the results - an id of a /type/lang object.
   *   Default: /lang/en
   *
   * [uniqueness_failure] - How MQL responds to uniqueness failures.
   *   Default: hard
   *   Allowed values:
   *     hard - Be strict - throw an error.
   *     soft - Just return the first encountered object.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> mqlread(String query, {String as_of_time, String callback, bool cost, String cursor, String dateline, bool html_escape, int indent, String lang, String uniqueness_failure, Map optParams}) {
    var completer = new Completer();
    var url = "mqlread";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (as_of_time != null) queryParams["as_of_time"] = as_of_time;
    if (callback != null) queryParams["callback"] = callback;
    if (cost != null) queryParams["cost"] = cost;
    if (cursor != null) queryParams["cursor"] = cursor;
    if (dateline != null) queryParams["dateline"] = dateline;
    if (html_escape != null) queryParams["html_escape"] = html_escape;
    if (indent != null) queryParams["indent"] = indent;
    if (lang != null) queryParams["lang"] = lang;
    if (query == null) paramErrors.add("query is required");
    if (query != null) queryParams["query"] = query;
    if (uniqueness_failure != null && !["hard", "soft"].contains(uniqueness_failure)) {
      paramErrors.add("Allowed values for uniqueness_failure: hard, soft");
    }
    if (uniqueness_failure != null) queryParams["uniqueness_failure"] = uniqueness_failure;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Performs MQL Write Operations.
   *
   * [query] - An MQL query with write directives.
   *
   * [callback] - JS method name for JSONP callbacks.
   *
   * [dateline] - The dateline that you get in a mqlwrite response to ensure consistent results.
   *
   * [indent] - How many spaces to indent the json.
   *   Default: 0
   *   Maximum: 10
   *
   * [use_permission_of] - Use the same permission node of the object with the specified id.
   *
   * [optParams] - Additional query parameters
   */
  Future<Map> mqlwrite(String query, {String callback, String dateline, int indent, String use_permission_of, Map optParams}) {
    var completer = new Completer();
    var url = "mqlwrite";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (callback != null) queryParams["callback"] = callback;
    if (dateline != null) queryParams["dateline"] = dateline;
    if (indent != null) queryParams["indent"] = indent;
    if (query == null) paramErrors.add("query is required");
    if (query != null) queryParams["query"] = query;
    if (use_permission_of != null) queryParams["use_permission_of"] = use_permission_of;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}
