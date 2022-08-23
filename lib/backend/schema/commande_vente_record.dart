import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'commande_vente_record.g.dart';

abstract class CommandeVenteRecord
    implements Built<CommandeVenteRecord, CommandeVenteRecordBuilder> {
  static Serializer<CommandeVenteRecord> get serializer =>
      _$commandeVenteRecordSerializer;

  DateTime? get date;

  DocumentReference? get client;

  DocumentReference? get vehicule;

  DocumentReference? get gerant;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CommandeVenteRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CommandeVente');

  static Stream<CommandeVenteRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CommandeVenteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CommandeVenteRecord._();
  factory CommandeVenteRecord(
          [void Function(CommandeVenteRecordBuilder) updates]) =
      _$CommandeVenteRecord;

  static CommandeVenteRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCommandeVenteRecordData({
  DateTime? date,
  DocumentReference? client,
  DocumentReference? vehicule,
  DocumentReference? gerant,
}) {
  final firestoreData = serializers.toFirestore(
    CommandeVenteRecord.serializer,
    CommandeVenteRecord(
      (c) => c
        ..date = date
        ..client = client
        ..vehicule = vehicule
        ..gerant = gerant,
    ),
  );

  return firestoreData;
}
