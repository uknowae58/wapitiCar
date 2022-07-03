import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'commande_location_record.g.dart';

abstract class CommandeLocationRecord
    implements Built<CommandeLocationRecord, CommandeLocationRecordBuilder> {
  static Serializer<CommandeLocationRecord> get serializer =>
      _$commandeLocationRecordSerializer;

  @nullable
  DocumentReference get client;

  @nullable
  DateTime get dateDebut;

  @nullable
  DocumentReference get vehicule;

  @nullable
  String get chauffeur;

  @nullable
  String get faireLePlein;

  @nullable
  @BuiltValueField(wireName: 'nb_jour')
  int get nbJour;

  @nullable
  String get prixtotal;

  @nullable
  DocumentReference get gerant;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CommandeLocationRecordBuilder builder) =>
      builder
        ..chauffeur = ''
        ..faireLePlein = ''
        ..nbJour = 0
        ..prixtotal = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CommandeLocation');

  static Stream<CommandeLocationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CommandeLocationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  CommandeLocationRecord._();
  factory CommandeLocationRecord(
          [void Function(CommandeLocationRecordBuilder) updates]) =
      _$CommandeLocationRecord;

  static CommandeLocationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCommandeLocationRecordData({
  DocumentReference client,
  DateTime dateDebut,
  DocumentReference vehicule,
  String chauffeur,
  String faireLePlein,
  int nbJour,
  String prixtotal,
  DocumentReference gerant,
}) =>
    serializers.toFirestore(
        CommandeLocationRecord.serializer,
        CommandeLocationRecord((c) => c
          ..client = client
          ..dateDebut = dateDebut
          ..vehicule = vehicule
          ..chauffeur = chauffeur
          ..faireLePlein = faireLePlein
          ..nbJour = nbJour
          ..prixtotal = prixtotal
          ..gerant = gerant));
