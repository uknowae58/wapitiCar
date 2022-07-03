import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'suggestions_record.g.dart';

abstract class SuggestionsRecord
    implements Built<SuggestionsRecord, SuggestionsRecordBuilder> {
  static Serializer<SuggestionsRecord> get serializer =>
      _$suggestionsRecordSerializer;

  @nullable
  DocumentReference get client;

  @nullable
  String get suggestions;

  @nullable
  String get image;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SuggestionsRecordBuilder builder) => builder
    ..suggestions = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Suggestions');

  static Stream<SuggestionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SuggestionsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SuggestionsRecord._();
  factory SuggestionsRecord([void Function(SuggestionsRecordBuilder) updates]) =
      _$SuggestionsRecord;

  static SuggestionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSuggestionsRecordData({
  DocumentReference client,
  String suggestions,
  String image,
}) =>
    serializers.toFirestore(
        SuggestionsRecord.serializer,
        SuggestionsRecord((s) => s
          ..client = client
          ..suggestions = suggestions
          ..image = image));
