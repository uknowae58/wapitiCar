// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commande_vente_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommandeVenteRecord> _$commandeVenteRecordSerializer =
    new _$CommandeVenteRecordSerializer();

class _$CommandeVenteRecordSerializer
    implements StructuredSerializer<CommandeVenteRecord> {
  @override
  final Iterable<Type> types = const [
    CommandeVenteRecord,
    _$CommandeVenteRecord
  ];
  @override
  final String wireName = 'CommandeVenteRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CommandeVenteRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.client;
    if (value != null) {
      result
        ..add('client')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.vehicule;
    if (value != null) {
      result
        ..add('vehicule')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.gerant;
    if (value != null) {
      result
        ..add('gerant')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  CommandeVenteRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommandeVenteRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'client':
          result.client = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'vehicule':
          result.vehicule = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'gerant':
          result.gerant = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$CommandeVenteRecord extends CommandeVenteRecord {
  @override
  final DateTime? date;
  @override
  final DocumentReference<Object?>? client;
  @override
  final DocumentReference<Object?>? vehicule;
  @override
  final DocumentReference<Object?>? gerant;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CommandeVenteRecord(
          [void Function(CommandeVenteRecordBuilder)? updates]) =>
      (new CommandeVenteRecordBuilder()..update(updates))._build();

  _$CommandeVenteRecord._(
      {this.date, this.client, this.vehicule, this.gerant, this.ffRef})
      : super._();

  @override
  CommandeVenteRecord rebuild(
          void Function(CommandeVenteRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommandeVenteRecordBuilder toBuilder() =>
      new CommandeVenteRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommandeVenteRecord &&
        date == other.date &&
        client == other.client &&
        vehicule == other.vehicule &&
        gerant == other.gerant &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, date.hashCode), client.hashCode), vehicule.hashCode),
            gerant.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommandeVenteRecord')
          ..add('date', date)
          ..add('client', client)
          ..add('vehicule', vehicule)
          ..add('gerant', gerant)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CommandeVenteRecordBuilder
    implements Builder<CommandeVenteRecord, CommandeVenteRecordBuilder> {
  _$CommandeVenteRecord? _$v;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  DocumentReference<Object?>? _client;
  DocumentReference<Object?>? get client => _$this._client;
  set client(DocumentReference<Object?>? client) => _$this._client = client;

  DocumentReference<Object?>? _vehicule;
  DocumentReference<Object?>? get vehicule => _$this._vehicule;
  set vehicule(DocumentReference<Object?>? vehicule) =>
      _$this._vehicule = vehicule;

  DocumentReference<Object?>? _gerant;
  DocumentReference<Object?>? get gerant => _$this._gerant;
  set gerant(DocumentReference<Object?>? gerant) => _$this._gerant = gerant;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CommandeVenteRecordBuilder() {
    CommandeVenteRecord._initializeBuilder(this);
  }

  CommandeVenteRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _client = $v.client;
      _vehicule = $v.vehicule;
      _gerant = $v.gerant;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommandeVenteRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommandeVenteRecord;
  }

  @override
  void update(void Function(CommandeVenteRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommandeVenteRecord build() => _build();

  _$CommandeVenteRecord _build() {
    final _$result = _$v ??
        new _$CommandeVenteRecord._(
            date: date,
            client: client,
            vehicule: vehicule,
            gerant: gerant,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
