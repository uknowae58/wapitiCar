import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'suggestions_record.g.dart';

abstract class SuggestionsRecord
    implements Built<SuggestionsRecord, SuggestionsRecordBuilder> {
  static Serializer<SuggestionsRecord> get serializer =>
      _$suggestionsRecordSerializer;

  DocumentReference? get client;

  String? get suggestions;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SuggestionsRecordBuilder builder) => builder
    ..suggestions = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Suggestions');

  static Stream<SuggestionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SuggestionsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SuggestionsRecord._();
  factory SuggestionsRecord([void Function(SuggestionsRecordBuilder) updates]) =
      _$SuggestionsRecord;

  static SuggestionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSuggestionsRecordData({
  DocumentReference? client,
  String? suggestions,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    SuggestionsRecord.serializer,
    SuggestionsRecord(
      (s) => s
        ..client = client
        ..suggestions = suggestions
        ..image = image,
    ),
  );

  return firestoreData;
}
