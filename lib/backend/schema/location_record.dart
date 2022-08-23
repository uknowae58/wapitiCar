import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'location_record.g.dart';

abstract class LocationRecord
    implements Built<LocationRecord, LocationRecordBuilder> {
  static Serializer<LocationRecord> get serializer =>
      _$locationRecordSerializer;

  String? get marque;

  String? get transmission;

  int? get prix;

  int? get annee;

  @BuiltValueField(wireName: 'nb_siege')
  int? get nbSiege;

  String? get carburant;

  bool? get favoris;

  @BuiltValueField(wireName: 'liked_by')
  BuiltList<DocumentReference>? get likedBy;

  DocumentReference? get gerant;

  BuiltList<String>? get images;

  @BuiltValueField(wireName: 'type_de_voiture')
  String? get typeDeVoiture;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LocationRecordBuilder builder) => builder
    ..marque = ''
    ..transmission = ''
    ..prix = 0
    ..annee = 0
    ..nbSiege = 0
    ..carburant = ''
    ..favoris = false
    ..likedBy = ListBuilder()
    ..images = ListBuilder()
    ..typeDeVoiture = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Location');

  static Stream<LocationRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LocationRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LocationRecord._();
  factory LocationRecord([void Function(LocationRecordBuilder) updates]) =
      _$LocationRecord;

  static LocationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLocationRecordData({
  String? marque,
  String? transmission,
  int? prix,
  int? annee,
  int? nbSiege,
  String? carburant,
  bool? favoris,
  DocumentReference? gerant,
  String? typeDeVoiture,
}) {
  final firestoreData = serializers.toFirestore(
    LocationRecord.serializer,
    LocationRecord(
      (l) => l
        ..marque = marque
        ..transmission = transmission
        ..prix = prix
        ..annee = annee
        ..nbSiege = nbSiege
        ..carburant = carburant
        ..favoris = favoris
        ..likedBy = null
        ..gerant = gerant
        ..images = null
        ..typeDeVoiture = typeDeVoiture,
    ),
  );

  return firestoreData;
}
