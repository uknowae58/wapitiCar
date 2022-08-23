import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'vente_record.g.dart';

abstract class VenteRecord implements Built<VenteRecord, VenteRecordBuilder> {
  static Serializer<VenteRecord> get serializer => _$venteRecordSerializer;

  String? get marque;

  String? get transmission;

  int? get prix;

  int? get annee;

  int? get kilometrage;

  @BuiltValueField(wireName: 'nb_siege')
  int? get nbSiege;

  String? get carburant;

  int? get categories;

  bool? get favoris;

  @BuiltValueField(wireName: 'liked_by')
  BuiltList<DocumentReference>? get likedBy;

  DocumentReference? get gerant;

  BuiltList<String>? get images;

  String? get cameraArriere;

  String? get cle;

  String? get bluetooth;

  String? get capteurs;

  @BuiltValueField(wireName: 'type_de_voiture')
  String? get typeDeVoiture;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VenteRecordBuilder builder) => builder
    ..marque = ''
    ..transmission = ''
    ..prix = 0
    ..annee = 0
    ..kilometrage = 0
    ..nbSiege = 0
    ..carburant = ''
    ..categories = 0
    ..favoris = false
    ..likedBy = ListBuilder()
    ..images = ListBuilder()
    ..cameraArriere = ''
    ..cle = ''
    ..bluetooth = ''
    ..capteurs = ''
    ..typeDeVoiture = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Vente');

  static Stream<VenteRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VenteRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VenteRecord._();
  factory VenteRecord([void Function(VenteRecordBuilder) updates]) =
      _$VenteRecord;

  static VenteRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVenteRecordData({
  String? marque,
  String? transmission,
  int? prix,
  int? annee,
  int? kilometrage,
  int? nbSiege,
  String? carburant,
  int? categories,
  bool? favoris,
  DocumentReference? gerant,
  String? cameraArriere,
  String? cle,
  String? bluetooth,
  String? capteurs,
  String? typeDeVoiture,
}) {
  final firestoreData = serializers.toFirestore(
    VenteRecord.serializer,
    VenteRecord(
      (v) => v
        ..marque = marque
        ..transmission = transmission
        ..prix = prix
        ..annee = annee
        ..kilometrage = kilometrage
        ..nbSiege = nbSiege
        ..carburant = carburant
        ..categories = categories
        ..favoris = favoris
        ..likedBy = null
        ..gerant = gerant
        ..images = null
        ..cameraArriere = cameraArriere
        ..cle = cle
        ..bluetooth = bluetooth
        ..capteurs = capteurs
        ..typeDeVoiture = typeDeVoiture,
    ),
  );

  return firestoreData;
}
