part of freebase_v1_api;

class ReconcileCandidate {

  /** Percentage likelihood that this candidate is the unique matching entity. Value will be between 0.0 and 1.0 */
  core.num confidence;

  /** Language code that candidate and notable names are displayed in. */
  core.String lang;

  /** Freebase MID of candidate entity. */
  core.String mid;

  /** Freebase name of matching entity in specified language. */
  core.String name;

  /** Type or profession the candidate is notable for. */
  ReconcileCandidateNotable notable;

  /** Create new ReconcileCandidate from JSON data */
  ReconcileCandidate.fromJson(core.Map json) {
    if (json.containsKey("confidence")) {
      confidence = json["confidence"];
    }
    if (json.containsKey("lang")) {
      lang = json["lang"];
    }
    if (json.containsKey("mid")) {
      mid = json["mid"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("notable")) {
      notable = new ReconcileCandidateNotable.fromJson(json["notable"]);
    }
  }

  /** Create JSON Object for ReconcileCandidate */
  core.Map toJson() {
    var output = new core.Map();

    if (confidence != null) {
      output["confidence"] = confidence;
    }
    if (lang != null) {
      output["lang"] = lang;
    }
    if (mid != null) {
      output["mid"] = mid;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (notable != null) {
      output["notable"] = notable.toJson();
    }

    return output;
  }

  /** Return String representation of ReconcileCandidate */
  core.String toString() => JSON.encode(this.toJson());

}

/** Type or profession the candidate is notable for. */
class ReconcileCandidateNotable {

  /** MID of notable category. */
  core.String id;

  /** Name of notable category in specified language. */
  core.String name;

  /** Create new ReconcileCandidateNotable from JSON data */
  ReconcileCandidateNotable.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for ReconcileCandidateNotable */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of ReconcileCandidateNotable */
  core.String toString() => JSON.encode(this.toJson());

}

class ReconcileGet {

  /** If filled, then the listed candidates are potential matches, and such should be evaluated by a more discerning algorithm or human. The matches are ordered by confidence. */
  core.List<ReconcileCandidate> candidate;

  /** Server costs for reconciling. */
  ReconcileGetCosts costs;

  /** If filled, this entity is guaranteed to match at requested confidence probability (default 99%). */
  ReconcileCandidate match;

  /** If filled, then there were recoverable problems that affected the request. For example, some of the properties were ignored because they either are not valid Freebase predicates or are not indexed for reconciliation. The candidates returned should be considered valid results, with the caveat that sections of the request were ignored as specified by the warning text. */
  core.List<ReconcileGetWarning> warning;

  /** Create new ReconcileGet from JSON data */
  ReconcileGet.fromJson(core.Map json) {
    if (json.containsKey("candidate")) {
      candidate = json["candidate"].map((candidateItem) => new ReconcileCandidate.fromJson(candidateItem)).toList();
    }
    if (json.containsKey("costs")) {
      costs = new ReconcileGetCosts.fromJson(json["costs"]);
    }
    if (json.containsKey("match")) {
      match = new ReconcileCandidate.fromJson(json["match"]);
    }
    if (json.containsKey("warning")) {
      warning = json["warning"].map((warningItem) => new ReconcileGetWarning.fromJson(warningItem)).toList();
    }
  }

  /** Create JSON Object for ReconcileGet */
  core.Map toJson() {
    var output = new core.Map();

    if (candidate != null) {
      output["candidate"] = candidate.map((candidateItem) => candidateItem.toJson()).toList();
    }
    if (costs != null) {
      output["costs"] = costs.toJson();
    }
    if (match != null) {
      output["match"] = match.toJson();
    }
    if (warning != null) {
      output["warning"] = warning.map((warningItem) => warningItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ReconcileGet */
  core.String toString() => JSON.encode(this.toJson());

}

/** Server costs for reconciling. */
class ReconcileGetCosts {

  /** Total number of hits found. */
  core.int hits;

  /** Total milliseconds spent. */
  core.int ms;

  /** Create new ReconcileGetCosts from JSON data */
  ReconcileGetCosts.fromJson(core.Map json) {
    if (json.containsKey("hits")) {
      hits = json["hits"];
    }
    if (json.containsKey("ms")) {
      ms = json["ms"];
    }
  }

  /** Create JSON Object for ReconcileGetCosts */
  core.Map toJson() {
    var output = new core.Map();

    if (hits != null) {
      output["hits"] = hits;
    }
    if (ms != null) {
      output["ms"] = ms;
    }

    return output;
  }

  /** Return String representation of ReconcileGetCosts */
  core.String toString() => JSON.encode(this.toJson());

}

class ReconcileGetWarning {

  /** Location of warning in the request e.g. invalid predicate. */
  core.String location;

  /** Warning message to display to the user. */
  core.String message;

  /** Code for identifying classes of warnings. */
  core.String reason;

  /** Create new ReconcileGetWarning from JSON data */
  ReconcileGetWarning.fromJson(core.Map json) {
    if (json.containsKey("location")) {
      location = json["location"];
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
    if (json.containsKey("reason")) {
      reason = json["reason"];
    }
  }

  /** Create JSON Object for ReconcileGetWarning */
  core.Map toJson() {
    var output = new core.Map();

    if (location != null) {
      output["location"] = location;
    }
    if (message != null) {
      output["message"] = message;
    }
    if (reason != null) {
      output["reason"] = reason;
    }

    return output;
  }

  /** Return String representation of ReconcileGetWarning */
  core.String toString() => JSON.encode(this.toJson());

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
