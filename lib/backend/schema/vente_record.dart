import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'vente_record.g.dart';

abstract class VenteRecord implements Built<VenteRecord, VenteRecordBuilder> {
  static Serializer<VenteRecord> get serializer => _$venteRecordSerializer;

  @nullable
  String get marque;

  @nullable
  String get transmission;

  @nullable
  int get prix;

  @nullable
  int get annee;

  @nullable
  int get kilometrage;

  @nullable
  @BuiltValueField(wireName: 'nb_siege')
  int get nbSiege;

  @nullable
  String get carburant;

  @nullable
  int get categories;

  @nullable
  bool get audi;

  @nullable
  bool get bmw;

  @nullable
  bool get ford;

  @nullable
  bool get hyundai;

  @nullable
  bool get kia;

  @nullable
  bool get mazda;

  @nullable
  bool get mercedes;

  @nullable
  bool get mitsubishi;

  @nullable
  bool get rangerover;

  @nullable
  bool get peugeot;

  @nullable
  bool get toyota;

  @nullable
  bool get volkswagen;

  @nullable
  bool get favoris;

  @nullable
  @BuiltValueField(wireName: 'liked_by')
  BuiltList<DocumentReference> get likedBy;

  @nullable
  DocumentReference get gerant;

  @nullable
  BuiltList<String> get images;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(VenteRecordBuilder builder) => builder
    ..marque = ''
    ..transmission = ''
    ..prix = 0
    ..annee = 0
    ..kilometrage = 0
    ..nbSiege = 0
    ..carburant = ''
    ..categories = 0
    ..audi = false
    ..bmw = false
    ..ford = false
    ..hyundai = false
    ..kia = false
    ..mazda = false
    ..mercedes = false
    ..mitsubishi = false
    ..rangerover = false
    ..peugeot = false
    ..toyota = false
    ..volkswagen = false
    ..favoris = false
    ..likedBy = ListBuilder()
    ..images = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Vente');

  static Stream<VenteRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<VenteRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  VenteRecord._();
  factory VenteRecord([void Function(VenteRecordBuilder) updates]) =
      _$VenteRecord;

  static VenteRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createVenteRecordData({
  String marque,
  String transmission,
  int prix,
  int annee,
  int kilometrage,
  int nbSiege,
  String carburant,
  int categories,
  bool audi,
  bool bmw,
  bool ford,
  bool hyundai,
  bool kia,
  bool mazda,
  bool mercedes,
  bool mitsubishi,
  bool rangerover,
  bool peugeot,
  bool toyota,
  bool volkswagen,
  bool favoris,
  DocumentReference gerant,
}) =>
    serializers.toFirestore(
        VenteRecord.serializer,
        VenteRecord((v) => v
          ..marque = marque
          ..transmission = transmission
          ..prix = prix
          ..annee = annee
          ..kilometrage = kilometrage
          ..nbSiege = nbSiege
          ..carburant = carburant
          ..categories = categories
          ..audi = audi
          ..bmw = bmw
          ..ford = ford
          ..hyundai = hyundai
          ..kia = kia
          ..mazda = mazda
          ..mercedes = mercedes
          ..mitsubishi = mitsubishi
          ..rangerover = rangerover
          ..peugeot = peugeot
          ..toyota = toyota
          ..volkswagen = volkswagen
          ..favoris = favoris
          ..likedBy = null
          ..gerant = gerant
          ..images = null));
