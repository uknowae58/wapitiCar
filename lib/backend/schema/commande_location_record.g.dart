// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commande_location_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommandeLocationRecord> _$commandeLocationRecordSerializer =
    new _$CommandeLocationRecordSerializer();

class _$CommandeLocationRecordSerializer
    implements StructuredSerializer<CommandeLocationRecord> {
  @override
  final Iterable<Type> types = const [
    CommandeLocationRecord,
    _$CommandeLocationRecord
  ];
  @override
  final String wireName = 'CommandeLocationRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CommandeLocationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.client;
    if (value != null) {
      result
        ..add('client')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.dateDebut;
    if (value != null) {
      result
        ..add('dateDebut')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.vehicule;
    if (value != null) {
      result
        ..add('vehicule')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.chauffeur;
    if (value != null) {
      result
        ..add('chauffeur')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.faireLePlein;
    if (value != null) {
      result
        ..add('faireLePlein')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nbJour;
    if (value != null) {
      result
        ..add('nb_jour')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.prixtotal;
    if (value != null) {
      result
        ..add('prixtotal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  CommandeLocationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommandeLocationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'client':
          result.client = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'dateDebut':
          result.dateDebut = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'vehicule':
          result.vehicule = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'chauffeur':
          result.chauffeur = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'faireLePlein':
          result.faireLePlein = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nb_jour':
          result.nbJour = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'prixtotal':
          result.prixtotal = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$CommandeLocationRecord extends CommandeLocationRecord {
  @override
  final DocumentReference<Object?>? client;
  @override
  final DateTime? dateDebut;
  @override
  final DocumentReference<Object?>? vehicule;
  @override
  final String? chauffeur;
  @override
  final String? faireLePlein;
  @override
  final int? nbJour;
  @override
  final String? prixtotal;
  @override
  final DocumentReference<Object?>? gerant;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CommandeLocationRecord(
          [void Function(CommandeLocationRecordBuilder)? updates]) =>
      (new CommandeLocationRecordBuilder()..update(updates))._build();

  _$CommandeLocationRecord._(
      {this.client,
      this.dateDebut,
      this.vehicule,
      this.chauffeur,
      this.faireLePlein,
      this.nbJour,
      this.prixtotal,
      this.gerant,
      this.ffRef})
      : super._();

  @override
  CommandeLocationRecord rebuild(
          void Function(CommandeLocationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommandeLocationRecordBuilder toBuilder() =>
      new CommandeLocationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommandeLocationRecord &&
        client == other.client &&
        dateDebut == other.dateDebut &&
        vehicule == other.vehicule &&
        chauffeur == other.chauffeur &&
        faireLePlein == other.faireLePlein &&
        nbJour == other.nbJour &&
        prixtotal == other.prixtotal &&
        gerant == other.gerant &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, client.hashCode),
                                    dateDebut.hashCode),
                                vehicule.hashCode),
                            chauffeur.hashCode),
                        faireLePlein.hashCode),
                    nbJour.hashCode),
                prixtotal.hashCode),
            gerant.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommandeLocationRecord')
          ..add('client', client)
          ..add('dateDebut', dateDebut)
          ..add('vehicule', vehicule)
          ..add('chauffeur', chauffeur)
          ..add('faireLePlein', faireLePlein)
          ..add('nbJour', nbJour)
          ..add('prixtotal', prixtotal)
          ..add('gerant', gerant)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CommandeLocationRecordBuilder
    implements Builder<CommandeLocationRecord, CommandeLocationRecordBuilder> {
  _$CommandeLocationRecord? _$v;

  DocumentReference<Object?>? _client;
  DocumentReference<Object?>? get client => _$this._client;
  set client(DocumentReference<Object?>? client) => _$this._client = client;

  DateTime? _dateDebut;
  DateTime? get dateDebut => _$this._dateDebut;
  set dateDebut(DateTime? dateDebut) => _$this._dateDebut = dateDebut;

  DocumentReference<Object?>? _vehicule;
  DocumentReference<Object?>? get vehicule => _$this._vehicule;
  set vehicule(DocumentReference<Object?>? vehicule) =>
      _$this._vehicule = vehicule;

  String? _chauffeur;
  String? get chauffeur => _$this._chauffeur;
  set chauffeur(String? chauffeur) => _$this._chauffeur = chauffeur;

  String? _faireLePlein;
  String? get faireLePlein => _$this._faireLePlein;
  set faireLePlein(String? faireLePlein) => _$this._faireLePlein = faireLePlein;

  int? _nbJour;
  int? get nbJour => _$this._nbJour;
  set nbJour(int? nbJour) => _$this._nbJour = nbJour;

  String? _prixtotal;
  String? get prixtotal => _$this._prixtotal;
  set prixtotal(String? prixtotal) => _$this._prixtotal = prixtotal;

  DocumentReference<Object?>? _gerant;
  DocumentReference<Object?>? get gerant => _$this._gerant;
  set gerant(DocumentReference<Object?>? gerant) => _$this._gerant = gerant;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CommandeLocationRecordBuilder() {
    CommandeLocationRecord._initializeBuilder(this);
  }

  CommandeLocationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _client = $v.client;
      _dateDebut = $v.dateDebut;
      _vehicule = $v.vehicule;
      _chauffeur = $v.chauffeur;
      _faireLePlein = $v.faireLePlein;
      _nbJour = $v.nbJour;
      _prixtotal = $v.prixtotal;
      _gerant = $v.gerant;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommandeLocationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommandeLocationRecord;
  }

  @override
  void update(void Function(CommandeLocationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommandeLocationRecord build() => _build();

  _$CommandeLocationRecord _build() {
    final _$result = _$v ??
        new _$CommandeLocationRecord._(
            client: client,
            dateDebut: dateDebut,
            vehicule: vehicule,
            chauffeur: chauffeur,
            faireLePlein: faireLePlein,
            nbJour: nbJour,
            prixtotal: prixtotal,
            gerant: gerant,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
