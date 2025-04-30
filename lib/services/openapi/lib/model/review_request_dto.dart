//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReviewRequestDTO {
  /// Returns a new [ReviewRequestDTO] instance.
  ReviewRequestDTO({
    this.id,
    this.title,
    this.content,
    this.files = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

  List<FileDTO> files;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReviewRequestDTO &&
    other.id == id &&
    other.title == title &&
    other.content == content &&
    _deepEquality.equals(other.files, files);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (content == null ? 0 : content!.hashCode) +
    (files.hashCode);

  @override
  String toString() => 'ReviewRequestDTO[id=$id, title=$title, content=$content, files=$files]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
      json[r'files'] = this.files;
    return json;
  }

  /// Returns a new [ReviewRequestDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReviewRequestDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReviewRequestDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReviewRequestDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReviewRequestDTO(
        id: mapValueOfType<int>(json, r'id'),
        title: mapValueOfType<String>(json, r'title'),
        content: mapValueOfType<String>(json, r'content'),
        files: FileDTO.listFromJson(json[r'files']),
      );
    }
    return null;
  }

  static List<ReviewRequestDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReviewRequestDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReviewRequestDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReviewRequestDTO> mapFromJson(dynamic json) {
    final map = <String, ReviewRequestDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReviewRequestDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReviewRequestDTO-objects as value to a dart map
  static Map<String, List<ReviewRequestDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReviewRequestDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReviewRequestDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

