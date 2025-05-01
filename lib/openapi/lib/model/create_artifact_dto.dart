//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateArtifactDTO {
  /// Returns a new [CreateArtifactDTO] instance.
  CreateArtifactDTO({
    this.artifactNumber,
    this.artifactName,
    this.provenance,
    this.collectorDonor,
    this.familyTaxon,
    this.collectionYear,
    this.locationInCollection,
    this.periodEpochAge,
    this.collection,
    this.artifactDescription,
    this.tombingDate,
    this.registrationDate,
    this.status,
  });

  /// Número da peça
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? artifactNumber;

  /// Nome da peça
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? artifactName;

  /// Proveniência
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provenance;

  /// Coletor/Doador
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? collectorDonor;

  /// Família Taxonômica
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? familyTaxon;

  /// Ano de Coleta
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? collectionYear;

  /// Localização no Acervo
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locationInCollection;

  /// Período/Época/Idade
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? periodEpochAge;

  /// Coleção
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? collection;

  /// Descrição da Peça
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? artifactDescription;

  /// Data de Tombamento
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? tombingDate;

  /// Data de Registro
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? registrationDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateArtifactDTO &&
    other.artifactNumber == artifactNumber &&
    other.artifactName == artifactName &&
    other.provenance == provenance &&
    other.collectorDonor == collectorDonor &&
    other.familyTaxon == familyTaxon &&
    other.collectionYear == collectionYear &&
    other.locationInCollection == locationInCollection &&
    other.periodEpochAge == periodEpochAge &&
    other.collection == collection &&
    other.artifactDescription == artifactDescription &&
    other.tombingDate == tombingDate &&
    other.registrationDate == registrationDate &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (artifactNumber == null ? 0 : artifactNumber!.hashCode) +
    (artifactName == null ? 0 : artifactName!.hashCode) +
    (provenance == null ? 0 : provenance!.hashCode) +
    (collectorDonor == null ? 0 : collectorDonor!.hashCode) +
    (familyTaxon == null ? 0 : familyTaxon!.hashCode) +
    (collectionYear == null ? 0 : collectionYear!.hashCode) +
    (locationInCollection == null ? 0 : locationInCollection!.hashCode) +
    (periodEpochAge == null ? 0 : periodEpochAge!.hashCode) +
    (collection == null ? 0 : collection!.hashCode) +
    (artifactDescription == null ? 0 : artifactDescription!.hashCode) +
    (tombingDate == null ? 0 : tombingDate!.hashCode) +
    (registrationDate == null ? 0 : registrationDate!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'CreateArtifactDTO[artifactNumber=$artifactNumber, artifactName=$artifactName, provenance=$provenance, collectorDonor=$collectorDonor, familyTaxon=$familyTaxon, collectionYear=$collectionYear, locationInCollection=$locationInCollection, periodEpochAge=$periodEpochAge, collection=$collection, artifactDescription=$artifactDescription, tombingDate=$tombingDate, registrationDate=$registrationDate, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.artifactNumber != null) {
      json[r'artifactNumber'] = this.artifactNumber;
    } else {
      json[r'artifactNumber'] = null;
    }
    if (this.artifactName != null) {
      json[r'artifactName'] = this.artifactName;
    } else {
      json[r'artifactName'] = null;
    }
    if (this.provenance != null) {
      json[r'provenance'] = this.provenance;
    } else {
      json[r'provenance'] = null;
    }
    if (this.collectorDonor != null) {
      json[r'collectorDonor'] = this.collectorDonor;
    } else {
      json[r'collectorDonor'] = null;
    }
    if (this.familyTaxon != null) {
      json[r'familyTaxon'] = this.familyTaxon;
    } else {
      json[r'familyTaxon'] = null;
    }
    if (this.collectionYear != null) {
      json[r'collectionYear'] = this.collectionYear;
    } else {
      json[r'collectionYear'] = null;
    }
    if (this.locationInCollection != null) {
      json[r'locationInCollection'] = this.locationInCollection;
    } else {
      json[r'locationInCollection'] = null;
    }
    if (this.periodEpochAge != null) {
      json[r'periodEpochAge'] = this.periodEpochAge;
    } else {
      json[r'periodEpochAge'] = null;
    }
    if (this.collection != null) {
      json[r'collection'] = this.collection;
    } else {
      json[r'collection'] = null;
    }
    if (this.artifactDescription != null) {
      json[r'artifactDescription'] = this.artifactDescription;
    } else {
      json[r'artifactDescription'] = null;
    }
    if (this.tombingDate != null) {
      json[r'tombingDate'] = _dateFormatter.format(this.tombingDate!.toUtc());
    } else {
      json[r'tombingDate'] = null;
    }
    if (this.registrationDate != null) {
      json[r'registrationDate'] = _dateFormatter.format(this.registrationDate!.toUtc());
    } else {
      json[r'registrationDate'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [CreateArtifactDTO] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateArtifactDTO? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateArtifactDTO[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateArtifactDTO[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateArtifactDTO(
        artifactNumber: mapValueOfType<String>(json, r'artifactNumber'),
        artifactName: mapValueOfType<String>(json, r'artifactName'),
        provenance: mapValueOfType<String>(json, r'provenance'),
        collectorDonor: mapValueOfType<String>(json, r'collectorDonor'),
        familyTaxon: mapValueOfType<String>(json, r'familyTaxon'),
        collectionYear: mapValueOfType<int>(json, r'collectionYear'),
        locationInCollection: mapValueOfType<String>(json, r'locationInCollection'),
        periodEpochAge: mapValueOfType<String>(json, r'periodEpochAge'),
        collection: mapValueOfType<String>(json, r'collection'),
        artifactDescription: mapValueOfType<String>(json, r'artifactDescription'),
        tombingDate: mapDateTime(json, r'tombingDate', r''),
        registrationDate: mapDateTime(json, r'registrationDate', r''),
        status: mapValueOfType<bool>(json, r'status'),
      );
    }
    return null;
  }

  static List<CreateArtifactDTO> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateArtifactDTO>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateArtifactDTO.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateArtifactDTO> mapFromJson(dynamic json) {
    final map = <String, CreateArtifactDTO>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateArtifactDTO.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateArtifactDTO-objects as value to a dart map
  static Map<String, List<CreateArtifactDTO>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateArtifactDTO>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateArtifactDTO.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

