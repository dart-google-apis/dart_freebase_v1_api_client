part of freebase_v1_api_client;

class ContentserviceGet {

  /** The text requested. */
  String result;

  /** Create new ContentserviceGet from JSON data */
  ContentserviceGet.fromJson(Map json) {
    if (json.containsKey("result")) {
      result = json["result"];
    }
  }

  /** Create JSON Object for ContentserviceGet */
  Map toJson() {
    var output = new Map();

    if (result != null) {
      output["result"] = result;
    }

    return output;
  }

  /** Return String representation of ContentserviceGet */
  String toString() => JSON.stringify(this.toJson());

}

class TopicLookup {
  String id;
  TopicLookupProperty property;

  /** Create new TopicLookup from JSON data */
  TopicLookup.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("property")) {
      property = new TopicLookupProperty.fromJson(json["property"]);
    }
  }

  /** Create JSON Object for TopicLookup */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (property != null) {
      output["property"] = property.toJson();
    }

    return output;
  }

  /** Return String representation of TopicLookup */
  String toString() => JSON.stringify(this.toJson());

}

class TopicLookupProperty {
  TopicStatslinkcount /freebase/object_profile/linkcount;

  /** Create new TopicLookupProperty from JSON data */
  TopicLookupProperty.fromJson(Map json) {
    if (json.containsKey("/freebase/object_profile/linkcount")) {
      /freebase/object_profile/linkcount = new TopicStatslinkcount.fromJson(json["/freebase/object_profile/linkcount"]);
    }
  }

  /** Create JSON Object for TopicLookupProperty */
  Map toJson() {
    var output = new Map();

    if (/freebase/object_profile/linkcount != null) {
      output["/freebase/object_profile/linkcount"] = /freebase/object_profile/linkcount.toJson();
    }

    return output;
  }

  /** Return String representation of TopicLookupProperty */
  String toString() => JSON.stringify(this.toJson());

}

class TopicPropertyvalue {
  num count;
  String status;
  List<TopicValue> values;
  String valuetype;

  /** Create new TopicPropertyvalue from JSON data */
  TopicPropertyvalue.fromJson(Map json) {
    if (json.containsKey("count")) {
      count = json["count"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("values")) {
      values = [];
      json["values"].forEach((item) {
        values.add(new TopicValue.fromJson(item));
      });
    }
    if (json.containsKey("valuetype")) {
      valuetype = json["valuetype"];
    }
  }

  /** Create JSON Object for TopicPropertyvalue */
  Map toJson() {
    var output = new Map();

    if (count != null) {
      output["count"] = count;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (values != null) {
      output["values"] = new List();
      values.forEach((item) {
        output["values"].add(item.toJson());
      });
    }
    if (valuetype != null) {
      output["valuetype"] = valuetype;
    }

    return output;
  }

  /** Return String representation of TopicPropertyvalue */
  String toString() => JSON.stringify(this.toJson());

}

class TopicStatslinkcount {
  String type;
  List<TopicStatslinkcountValues> values;

  /** Create new TopicStatslinkcount from JSON data */
  TopicStatslinkcount.fromJson(Map json) {
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("values")) {
      values = [];
      json["values"].forEach((item) {
        values.add(new TopicStatslinkcountValues.fromJson(item));
      });
    }
  }

  /** Create JSON Object for TopicStatslinkcount */
  Map toJson() {
    var output = new Map();

    if (type != null) {
      output["type"] = type;
    }
    if (values != null) {
      output["values"] = new List();
      values.forEach((item) {
        output["values"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of TopicStatslinkcount */
  String toString() => JSON.stringify(this.toJson());

}

class TopicStatslinkcountValues {
  int count;
  String id;
  List<TopicStatslinkcountValuesValues> values;

  /** Create new TopicStatslinkcountValues from JSON data */
  TopicStatslinkcountValues.fromJson(Map json) {
    if (json.containsKey("count")) {
      count = json["count"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("values")) {
      values = [];
      json["values"].forEach((item) {
        values.add(new TopicStatslinkcountValuesValues.fromJson(item));
      });
    }
  }

  /** Create JSON Object for TopicStatslinkcountValues */
  Map toJson() {
    var output = new Map();

    if (count != null) {
      output["count"] = count;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (values != null) {
      output["values"] = new List();
      values.forEach((item) {
        output["values"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of TopicStatslinkcountValues */
  String toString() => JSON.stringify(this.toJson());

}

class TopicStatslinkcountValuesValues {
  int count;
  String id;
  List<TopicStatslinkcountValuesValuesValues> values;

  /** Create new TopicStatslinkcountValuesValues from JSON data */
  TopicStatslinkcountValuesValues.fromJson(Map json) {
    if (json.containsKey("count")) {
      count = json["count"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("values")) {
      values = [];
      json["values"].forEach((item) {
        values.add(new TopicStatslinkcountValuesValuesValues.fromJson(item));
      });
    }
  }

  /** Create JSON Object for TopicStatslinkcountValuesValues */
  Map toJson() {
    var output = new Map();

    if (count != null) {
      output["count"] = count;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (values != null) {
      output["values"] = new List();
      values.forEach((item) {
        output["values"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of TopicStatslinkcountValuesValues */
  String toString() => JSON.stringify(this.toJson());

}

class TopicStatslinkcountValuesValuesValues {
  int count;
  String id;

  /** Create new TopicStatslinkcountValuesValuesValues from JSON data */
  TopicStatslinkcountValuesValuesValues.fromJson(Map json) {
    if (json.containsKey("count")) {
      count = json["count"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
  }

  /** Create JSON Object for TopicStatslinkcountValuesValuesValues */
  Map toJson() {
    var output = new Map();

    if (count != null) {
      output["count"] = count;
    }
    if (id != null) {
      output["id"] = id;
    }

    return output;
  }

  /** Return String representation of TopicStatslinkcountValuesValuesValues */
  String toString() => JSON.stringify(this.toJson());

}

class TopicValue {
  TopicValueCitation citation;
  String creator;
  String dataset;
  String id;
  String lang;
  String project;
  TopicValueProperty property;
  String text;
  String timestamp;

  /** Create new TopicValue from JSON data */
  TopicValue.fromJson(Map json) {
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
      property = new TopicValueProperty.fromJson(json["property"]);
    }
    if (json.containsKey("text")) {
      text = json["text"];
    }
    if (json.containsKey("timestamp")) {
      timestamp = json["timestamp"];
    }
  }

  /** Create JSON Object for TopicValue */
  Map toJson() {
    var output = new Map();

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
      output["property"] = property.toJson();
    }
    if (text != null) {
      output["text"] = text;
    }
    if (timestamp != null) {
      output["timestamp"] = timestamp;
    }

    return output;
  }

  /** Return String representation of TopicValue */
  String toString() => JSON.stringify(this.toJson());

}

class TopicValueProperty {

  /** Create new TopicValueProperty from JSON data */
  TopicValueProperty.fromJson(Map json) {
  }

  /** Create JSON Object for TopicValueProperty */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of TopicValueProperty */
  String toString() => JSON.stringify(this.toJson());

}

class TopicValueCitation {
  String provider;
  String statement;
  String uri;

  /** Create new TopicValueCitation from JSON data */
  TopicValueCitation.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

