part of freebase_v1_api;

abstract class Client extends ClientBase {
  core.String basePath = "/freebase/v1/";
  core.String rootUrl = "https://www.googleapis.com/";


  //
  // Parameters
  //

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  core.String get alt => params["alt"];
  set alt(core.String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  core.String get fields => params["fields"];
  set fields(core.String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  core.String get key => params["key"];
  set key(core.String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  core.String get oauth_token => params["oauth_token"];
  set oauth_token(core.String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  core.bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(core.bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  core.String get quotaUser => params["quotaUser"];
  set quotaUser(core.String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  core.String get userIp => params["userIp"];
  set userIp(core.String value) => params["userIp"] = value;

  //
  // Methods
  //

  /**
   * Reconcile entities to Freebase open data.
   *
   * [confidence] - Required confidence for a candidate to match. Must be between .5 and 1.0
   *   Default: 0.99
   *   Minimum: 0.0
   *   Maximum: 1.0
   *
   * [kind] - Classifications of entity e.g. type, category, title.
   *   Repeated values: allowed
   *
   * [lang] - Languages for names and values. First language is used for display. Default is 'en'.
   *   Repeated values: allowed
   *
   * [limit] - Maximum number of candidates to return.
   *   Default: 3
   *   Minimum: 0
   *   Maximum: 25
   *
   * [name] - Name of entity.
   *
   * [prop] - Property values for entity formatted as
:
   *   Repeated values: allowed
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ReconcileGet> reconcile({core.num confidence, core.List<core.String> kind, core.List<core.String> lang, core.int limit, core.String name, core.List<core.String> prop, core.Map optParams}) {
    var url = "reconcile";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (confidence != null) queryParams["confidence"] = confidence;
    if (kind != null) queryParams["kind"] = kind;
    if (lang != null) queryParams["lang"] = lang;
    if (limit != null) queryParams["limit"] = limit;
    if (name != null) queryParams["name"] = name;
    if (prop != null) queryParams["prop"] = prop;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = this.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ReconcileGet.fromJson(data));
  }

  /**
   * Search Freebase open data.
   *
   * [as_of_time] - A mql as_of_time value to use with mql_output queries.
   *
   * [callback] - JS method name for JSONP callbacks.
   *
   * [cursor] - The cursor value to use for the next page of results.
   *
   * [domain] - Restrict to topics with this Freebase domain id.
   *   Repeated values: allowed
   *
   * [encode] - The encoding of the response. You can use this parameter to enable html encoding.
   *   Default: off
   *   Allowed values:
   *     html - Encode certain characters in the response (such as tags and ambersands) using html encoding.
   *     off - No encoding of the response. You should not print the results directly on an web page without html-escaping the content first.
   *
   * [exact] - Query on exact name and keys only.
   *
   * [filter] - A filter to apply to the query.
   *   Repeated values: allowed
   *
   * [format] - Structural format of the json response.
   *   Default: entity
   *   Allowed values:
   *     ac - Compact format useful for autocomplete/suggest UIs.
   *     classic - [DEPRECATED] Same format as was returned by api.freebase.com.
   *     entity - Basic information about the entities.
   *     guids - [DEPRECATED] Ordered list of a freebase guids.
   *     ids - Ordered list of freebase ids.
   *     mids - Ordered list of freebase mids.
   *
   * [help] - The keyword to request help on.
   *   Allowed values:
   *     langs - The language codes served by the service.
   *     mappings - The property/path mappings supported by the filter and output request parameters.
   *     predicates - The predicates and path-terminating properties supported by the filter and output request parameters.
   *
   * [indent] - Whether to indent the json results or not.
   *
   * [lang] - The code of the language to run the query with. Default is 'en'.
   *   Repeated values: allowed
   *
   * [limit] - Maximum number of results to return.
   *   Default: 20
   *
   * [mid] - A mid to use instead of a query.
   *   Repeated values: allowed
   *
   * [mql_output] - The MQL query to run againist the results to extract more data.
   *
   * [output] - An output expression to request data from matches.
   *
   * [prefixed] - Prefix match against names and aliases.
   *
   * [query] - Query term to search for.
   *
   * [scoring] - Relevance scoring algorithm to use.
   *   Default: entity
   *   Allowed values:
   *     entity - Use freebase and popularity entity ranking.
   *     freebase - Use freebase entity ranking.
   *     schema - Use schema ranking for properties and types.
   *
   * [spell] - Request 'did you mean' suggestions
   *   Default: no_spelling
   *   Allowed values:
   *     always - Request spelling suggestions for any query at least three characters long.
   *     no_results - Request spelling suggestions if no results were found.
   *     no_spelling - Don't request spelling suggestions.
   *
   * [stemmed] - Query on stemmed names and aliases. May not be used with prefixed.
   *
   * [type] - Restrict to topics with this Freebase type id.
   *   Repeated values: allowed
   *
   * [withParameter] - A rule to match against.
   *   Repeated values: allowed
   *
   * [without] - A rule to not match against.
   *   Repeated values: allowed
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> search({core.String as_of_time, core.String callback, core.int cursor, core.List<core.String> domain, core.String encode, core.bool exact, core.List<core.String> filter, core.String format, core.String help, core.bool indent, core.List<core.String> lang, core.int limit, core.List<core.String> mid, core.String mql_output, core.String output, core.bool prefixed, core.String query, core.String scoring, core.String spell, core.bool stemmed, core.List<core.String> type, core.List<core.String> withParameter, core.List<core.String> without, core.Map optParams}) {
    var url = "search";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (as_of_time != null) queryParams["as_of_time"] = as_of_time;
    if (callback != null) queryParams["callback"] = callback;
    if (cursor != null) queryParams["cursor"] = cursor;
    if (domain != null) queryParams["domain"] = domain;
    if (encode != null && !["html", "off"].contains(encode)) {
      paramErrors.add("Allowed values for encode: html, off");
    }
    if (encode != null) queryParams["encode"] = encode;
    if (exact != null) queryParams["exact"] = exact;
    if (filter != null) queryParams["filter"] = filter;
    if (format != null && !["ac", "classic", "entity", "guids", "ids", "mids"].contains(format)) {
      paramErrors.add("Allowed values for format: ac, classic, entity, guids, ids, mids");
    }
    if (format != null) queryParams["format"] = format;
    if (help != null && !["langs", "mappings", "predicates"].contains(help)) {
      paramErrors.add("Allowed values for help: langs, mappings, predicates");
    }
    if (help != null) queryParams["help"] = help;
    if (indent != null) queryParams["indent"] = indent;
    if (lang != null) queryParams["lang"] = lang;
    if (limit != null) queryParams["limit"] = limit;
    if (mid != null) queryParams["mid"] = mid;
    if (mql_output != null) queryParams["mql_output"] = mql_output;
    if (output != null) queryParams["output"] = output;
    if (prefixed != null) queryParams["prefixed"] = prefixed;
    if (query != null) queryParams["query"] = query;
    if (scoring != null && !["entity", "freebase", "schema"].contains(scoring)) {
      paramErrors.add("Allowed values for scoring: entity, freebase, schema");
    }
    if (scoring != null) queryParams["scoring"] = scoring;
    if (spell != null && !["always", "no_results", "no_spelling"].contains(spell)) {
      paramErrors.add("Allowed values for spell: always, no_results, no_spelling");
    }
    if (spell != null) queryParams["spell"] = spell;
    if (stemmed != null) queryParams["stemmed"] = stemmed;
    if (type != null) queryParams["type"] = type;
    if (withParameter != null) queryParams["with"] = withParameter;
    if (without != null) queryParams["without"] = without;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = this.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response;
  }
}
