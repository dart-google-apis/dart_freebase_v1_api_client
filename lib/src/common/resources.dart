part of freebase_v1_api_client;

class TextResource extends Resource {

  TextResource(Client client) : super(client) {
  }

  /**
   * Returns blob attached to node at specified id as HTML
   *
   * [id] - The id of the item that you want data about
   *
   * [format] - Sanitizing transformation.
   *   Default: plain
   *   Allowed values:
   *     html - Return valid, sanitized html.
   *     plain - Return plain text - strip html tags.
   *     raw - Return the entire content as-is.
   *
   * [maxlength] - The max number of characters to return. Valid only for 'plain' format.
   *
   * [optParams] - Additional query parameters
   */
  Future<ContentserviceGet> get(String id, {String format, int maxlength, Map optParams}) {
    var completer = new Completer();
    var url = "text{/id*}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (format != null && !["html", "plain", "raw"].contains(format)) {
      paramErrors.add("Allowed values for format: html, plain, raw");
    }
    if (format != null) queryParams["format"] = format;
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (maxlength != null) queryParams["maxlength"] = maxlength;
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
      .then((data) => completer.complete(new ContentserviceGet.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class TopicResource extends Resource {

  TopicResource(Client client) : super(client) {
  }

  /**
   * Get properties and meta-data about a topic.
   *
   * [id] - The id of the item that you want data about.
   *
   * [dateline] - Determines how up-to-date the data returned is. A unix epoch time, a guid or a 'now'
   *
   * [filter] - A frebase domain, type or property id, 'suggest', 'commons', or 'all'. Filter the results and returns only appropriate properties.
   *
   * [lang] - The language you 'd like the content in - a freebase /type/lang language key.
   *   Default: en
   *
   * [limit] - The maximum number of property values to return for each property.
   *   Default: 10
   *
   * [raw] - Do not apply any constraints, or get any names.
   *   Default: false
   *
   * [optParams] - Additional query parameters
   */
  Future<TopicLookup> lookup(String id, {String dateline, String filter, String lang, int limit, bool raw, Map optParams}) {
    var completer = new Completer();
    var url = "topic{/id*}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (dateline != null) queryParams["dateline"] = dateline;
    if (filter != null) queryParams["filter"] = filter;
    if (id == null) paramErrors.add("id is required");
    if (id != null) urlParams["id"] = id;
    if (lang != null) queryParams["lang"] = lang;
    if (limit != null) queryParams["limit"] = limit;
    if (raw != null) queryParams["raw"] = raw;
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
      .then((data) => completer.complete(new TopicLookup.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

