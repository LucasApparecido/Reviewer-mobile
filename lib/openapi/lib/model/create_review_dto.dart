//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateReviewDTO {
  /// Returns a new [CreateReviewDTO] instance.
  CreateReviewDTO({
    this.title,
    this.content,
    this.publicationDate,
    this.rating,
  });

  /// Título da review
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// Conteúdo da review
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

  /// Data de publicação
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? publicationDate;

  /// Avaliação da review
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rating;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateReviewDTO &&
    other.title == title &&
    other.content == content &&
    other.publicationDate == publicationDate &&
    other.rating == rating;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title == null ? 0 : title!.hashCode) +
    (content == null ? 0 : content!.hashCode) +
    (publicationDate == null ? 0 : publicationDate!.hashCode) +
    (rating == null ? 0 : rating!.hashCode);

  @override
  String toString() => 'CreateReviewDTO[title=$title, content=$content, publicationDate=$publicationDate, rating=$rating]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.publicationDate != null) {
      json[r'publicationDate'] = this.publicationDate!.toUtc().toIso8601String();
    } else {
      json[r'publicationDate'] = null;
    }
    if (this.rating != null) {
      json[r'rating'] = this.rating;
    } else {
      json[r'rating'] = null;
    }
    return json;
  }

  /// Returns a new [CreateReviewDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateReviewDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateReviewDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateReviewDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateReviewDTO(
        title: mapValueOfType<String>(json, r'title'),
        content: mapValueOfType<String>(json, r'content'),
        publicationDate: mapDateTime(json, r'publicationDate', r''),
        rating: mapValueOfType<int>(json, r'rating'),
      );
    }
    return null;
  }

  static List<CreateReviewDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateReviewDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateReviewDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateReviewDTO> mapFromJson(dynamic json) {
    final map = <String, CreateReviewDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateReviewDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateReviewDTO-objects as value to a dart map
  static Map<String, List<CreateReviewDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateReviewDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateReviewDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

