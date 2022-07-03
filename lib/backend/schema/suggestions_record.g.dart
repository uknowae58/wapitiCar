// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suggestions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SuggestionsRecord> _$suggestionsRecordSerializer =
    new _$SuggestionsRecordSerializer();

class _$SuggestionsRecordSerializer
    implements StructuredSerializer<SuggestionsRecord> {
  @override
  final Iterable<Type> types = const [SuggestionsRecord, _$SuggestionsRecord];
  @override
  final String wireName = 'SuggestionsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, SuggestionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.client;
    if (value != null) {
      result
        ..add('client')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.suggestions;
    if (value != null) {
      result
        ..add('suggestions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  SuggestionsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SuggestionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'client':
          result.client = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'suggestions':
          result.suggestions = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$SuggestionsRecord extends SuggestionsRecord {
  @override
  final DocumentReference<Object> client;
  @override
  final String suggestions;
  @override
  final String image;
  @override
  final DocumentReference<Object> reference;

  factory _$SuggestionsRecord(
          [void Function(SuggestionsRecordBuilder) updates]) =>
      (new SuggestionsRecordBuilder()..update(updates)).build();

  _$SuggestionsRecord._(
      {this.client, this.suggestions, this.image, this.reference})
      : super._();

  @override
  SuggestionsRecord rebuild(void Function(SuggestionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SuggestionsRecordBuilder toBuilder() =>
      new SuggestionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SuggestionsRecord &&
        client == other.client &&
        suggestions == other.suggestions &&
        image == other.image &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, client.hashCode), suggestions.hashCode), image.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SuggestionsRecord')
          ..add('client', client)
          ..add('suggestions', suggestions)
          ..add('image', image)
          ..add('reference', reference))
        .toString();
  }
}

class SuggestionsRecordBuilder
    implements Builder<SuggestionsRecord, SuggestionsRecordBuilder> {
  _$SuggestionsRecord _$v;

  DocumentReference<Object> _client;
  DocumentReference<Object> get client => _$this._client;
  set client(DocumentReference<Object> client) => _$this._client = client;

  String _suggestions;
  String get suggestions => _$this._suggestions;
  set suggestions(String suggestions) => _$this._suggestions = suggestions;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  SuggestionsRecordBuilder() {
    SuggestionsRecord._initializeBuilder(this);
  }

  SuggestionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _client = $v.client;
      _suggestions = $v.suggestions;
      _image = $v.image;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SuggestionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SuggestionsRecord;
  }

  @override
  void update(void Function(SuggestionsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SuggestionsRecord build() {
    final _$result = _$v ??
        new _$SuggestionsRecord._(
            client: client,
            suggestions: suggestions,
            image: image,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
