part of freebase_v1_api;

class ContentserviceGet {

  /** The text requested. */
  core.String result;

  /** Create new ContentserviceGet from JSON data */
  ContentserviceGet.fromJson(core.Map json) {
    if (json.containsKey("result")) {
      result = json["result"];
    }
  }

  /** Create JSON Object for ContentserviceGet */
  core.Map toJson() {
    var output = new core.Map();

    if (result != null) {
      output["result"] = result;
    }

    return output;
  }

  /** Return String representation of ContentserviceGet */
  core.String toString() => JSON.stringify(this.toJson());

}

class TopicLookup {

  core.String id;

  TopicLookupProperty property;

  /** Create new TopicLookup from JSON data */
  TopicLookup.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("property")) {
      property = new TopicLookupProperty.fromJson(json["property"]);
    }
  }

  /** Create JSON Object for TopicLookup */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (property != null) {
      output["property"] = property.toJson();
    }

    return output;
  }

  /** Return String representation of TopicLookup */
  core.String toString() => JSON.stringify(this.toJson());

}

class TopicLookupProperty {

  TopicStatslinkcount _freebase_object_profile_linkcount;

  /** Create new TopicLookupProperty from JSON data */
  TopicLookupProperty.fromJson(core.Map json) {
    if (json.containsKey("/freebase/object_profile/linkcount")) {
      _freebase_object_profile_linkcount = new TopicStatslinkcount.fromJson(json["/freebase/object_profile/linkcount"]);
    }
  }

  /** Create JSON Object for TopicLookupProperty */
  core.Map toJson() {
    var output = new core.Map();

    if (_freebase_object_profile_linkcount != null) {
      output["/freebase/object_profile/linkcount"] = _freebase_object_profile_linkcount.toJson();
    }

    return output;
  }

  /** Return String representation of TopicLookupProperty */
  core.String toString() => JSON.stringify(this.toJson());

}

class TopicPropertyvalue {

  core.num count;

  core.String status;

  core.List<TopicValue> values;

  core.String valuetype;

  /** Create new TopicPropertyvalue from JSON data */
  TopicPropertyvalue.fromJson(core.Map json) {
    if (json.containsKey("count")) {
      count = json["count"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("values")) {
      values = json["values"].map((valuesItem) => new TopicValue.fromJson(valuesItem)).toList();
    }
    if (json.containsKey("valuetype")) {
      valuetype = json["valuetype"];
    }
  }

  /** Create JSON Object for TopicPropertyvalue */
  core.Map toJson() {
    var output = new core.Map();

    if (count != null) {
      output["count"] = count;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (values != null) {
      output["values"] = values.map((valuesItem) => valuesItem.toJson()).toList();
    }
    if (valuetype != null) {
      output["valuetype"] = valuetype;
    }

    return output;
  }

  /** Return String representation of TopicPropertyvalue */
  core.String toString() => JSON.stringify(this.toJson());

}

class TopicStatslinkcount {

  core.String type;

  core.List<TopicStatslinkcountValues> values;

  /** Create new TopicStatslinkcount from JSON data */
  TopicStatslinkcount.fromJson(core.Map json) {
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("values")) {
      values = json["values"].map((valuesItem) => new TopicStatslinkcountValues.fromJson(valuesItem)).toList();
    }
  }

  /** Create JSON Object for TopicStatslinkcount */
  core.Map toJson() {
    var output = new core.Map();

    if (type != null) {
      output["type"] = type;
    }
    if (values != null) {
      output["values"] = values.map((valuesItem) => valuesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of TopicStatslinkcount */
  core.String toString() => JSON.stringify(this.toJson());

}

class TopicStatslinkcountValues {

  core.int count;

  core.String id;

  core.List<TopicStatslinkcountValuesValues> values;

  /** Create new TopicStatslinkcountValues from JSON data */
  TopicStatslinkcountValues.fromJson(core.Map json) {
    if (json.containsKey("count")) {
      count = json["count"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("values")) {
      values = json["values"].map((valuesItem) => new TopicStatslinkcountValuesValues.fromJson(valuesItem)).toList();
    }
  }

  /** Create JSON Object for TopicStatslinkcountValues */
  core.Map toJson() {
    var output = new core.Map();

    if (count != null) {
      output["count"] = count;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (values != null) {
      output["values"] = values.map((valuesItem) => valuesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of TopicStatslinkcountValues */
  core.String toString() => JSON.stringify(this.toJson());

}

class TopicStatslinkcountValuesValues {

  core.int count;

  core.String id;

  core.List<TopicStatslinkcountValuesValuesValues> values;

  /** Create new TopicStatslinkcountValuesValues from JSON data */
  TopicStatslinkcountValuesValues.fromJson(core.Map json) {
    if (json.containsKey("count")) {
      count = json["count"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("values")) {
      values = json["values"].map((valuesItem) => new TopicStatslinkcountValuesValuesValues.fromJson(valuesItem)).toList();
    }
  }

  /** Create JSON Object for TopicStatslinkcountValuesValues */
  core.Map toJson() {
    var output = new core.Map();

    if (count != null) {
      output["count"] = count;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (values != null) {
      output["values"] = values.map((valuesItem) => valuesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of TopicStatslinkcountValuesValues */
  core.String toString() => JSON.stringify(this.toJson());

}

class TopicStatslinkcountValuesValuesValues {

  core.int count;

  core.String id;

  /** Create new TopicStatslinkcountValuesValuesValues from JSON data */
  TopicStatslinkcountValuesValuesValues.fromJson(core.Map json) {
    if (json.containsKey("count")) {
      count = json["count"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
  }

  /** Create JSON Object for TopicStatslinkcountValuesValuesValues */
  core.Map toJson() {
    var output = new core.Map();

    if (count != null) {
      output["count"] = count;
    }
    if (id != null) {
      output["id"] = id;
    }

    return output;
  }

  /** Return String representation of TopicStatslinkcountValuesValuesValues */
  core.String toString() => JSON.stringify(this.toJson());

}

class TopicValue {

  TopicValueCitation citation;

  core.String creator;

  core.String dataset;

  core.String id;

  core.String lang;

  core.String project;

  core.Map<core.String, TopicPropertyvalue> property;

  core.String text;

  core.String timestamp;

  core.Object value;

  /** Create new TopicValue from JSON data */
  TopicValue.fromJson(core.Map json) {
    if (json.containsKey("citation")) {
      citation = new TopicValueCitation.fromJson(json["citation"]);
    }
    if (json.containsKey("creator")) {
      creator = json["creator"];
    }
    if (json.containsKey("dataset")) {
      dataset = json["dataset"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("lang")) {
      lang = json["lang"];
    }
    if (json.containsKey("project")) {
      project = json["project"];
    }
    if (json.containsKey("property")) {
      property = _mapMap(json["property"], (propertyItem) => new TopicPropertyvalue.fromJson(propertyItem));
    }
    if (json.containsKey("text")) {
      text = json["text"];
    }
    if (json.containsKey("timestamp")) {
      timestamp = json["timestamp"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for TopicValue */
  core.Map toJson() {
    var output = new core.Map();

    if (citation != null) {
      output["citation"] = citation.toJson();
    }
    if (creator != null) {
      output["creator"] = creator;
    }
    if (dataset != null) {
      output["dataset"] = dataset;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (lang != null) {
      output["lang"] = lang;
    }
    if (project != null) {
      output["project"] = project;
    }
    if (property != null) {
      output["property"] = _mapMap(property, (propertyItem) => propertyItem.toJson());
    }
    if (text != null) {
      output["text"] = text;
    }
    if (timestamp != null) {
      output["timestamp"] = timestamp;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of TopicValue */
  core.String toString() => JSON.stringify(this.toJson());

}

class TopicValueCitation {

  core.String provider;

  core.String statement;

  core.String uri;

  /** Create new TopicValueCitation from JSON data */
  TopicValueCitation.fromJson(core.Map json) {
    if (json.containsKey("provider")) {
      provider = json["provider"];
    }
    if (json.containsKey("statement")) {
      statement = json["statement"];
    }
    if (json.containsKey("uri")) {
      uri = json["uri"];
    }
  }

  /** Create JSON Object for TopicValueCitation */
  core.Map toJson() {
    var output = new core.Map();

    if (provider != null) {
      output["provider"] = provider;
    }
    if (statement != null) {
      output["statement"] = statement;
    }
    if (uri != null) {
      output["uri"] = uri;
    }

    return output;
  }

  /** Return String representation of TopicValueCitation */
  core.String toString() => JSON.stringify(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
