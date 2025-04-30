//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReviewResponseDTO {
  /// Returns a new [ReviewResponseDTO] instance.
  ReviewResponseDTO({
    this.id,
    this.user,
    this.title,
    this.content,
    this.publicationDate,
    this.images = const [],
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
  UserResponseDTO? user;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? publicationDate;

  List<ImageDTO> images;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReviewResponseDTO &&
    other.id == id &&
    other.user == user &&
    other.title == title &&
    other.content == content &&
    other.publicationDate == publicationDate &&
    _deepEquality.equals(other.images, images);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (user == null ? 0 : user!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (content == null ? 0 : content!.hashCode) +
    (publicationDate == null ? 0 : publicationDate!.hashCode) +
    (images.hashCode);

  @override
  String toString() => 'ReviewResponseDTO[id=$id, user=$user, title=$title, content=$content, publicationDate=$publicationDate, images=$images]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
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
    if (this.publicationDate != null) {
      json[r'publicationDate'] = this.publicationDate!.toUtc().toIso8601String();
    } else {
      json[r'publicationDate'] = null;
    }
      json[r'images'] = this.images;
    return json;
  }

  /// Returns a new [ReviewResponseDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReviewResponseDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReviewResponseDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReviewResponseDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReviewResponseDTO(
        id: mapValueOfType<int>(json, r'id'),
        user: UserResponseDTO.fromJson(json[r'user']),
        title: mapValueOfType<String>(json, r'title'),
        content: mapValueOfType<String>(json, r'content'),
        publicationDate: mapDateTime(json, r'publicationDate', r''),
        images: ImageDTO.listFromJson(json[r'images']),
      );
    }
    return null;
  }

  static List<ReviewResponseDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReviewResponseDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReviewResponseDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReviewResponseDTO> mapFromJson(dynamic json) {
    final map = <String, ReviewResponseDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReviewResponseDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReviewResponseDTO-objects as value to a dart map
  static Map<String, List<ReviewResponseDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReviewResponseDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReviewResponseDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

