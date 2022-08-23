// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocationRecord> _$locationRecordSerializer =
    new _$LocationRecordSerializer();

class _$LocationRecordSerializer
    implements StructuredSerializer<LocationRecord> {
  @override
  final Iterable<Type> types = const [LocationRecord, _$LocationRecord];
  @override
  final String wireName = 'LocationRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LocationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.marque;
    if (value != null) {
      result
        ..add('marque')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.transmission;
    if (value != null) {
      result
        ..add('transmission')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prix;
    if (value != null) {
      result
        ..add('prix')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.annee;
    if (value != null) {
      result
        ..add('annee')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.nbSiege;
    if (value != null) {
      result
        ..add('nb_siege')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.carburant;
    if (value != null) {
      result
        ..add('carburant')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.favoris;
    if (value != null) {
      result
        ..add('favoris')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.likedBy;
    if (value != null) {
      result
        ..add('liked_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.gerant;
    if (value != null) {
      result
        ..add('gerant')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.images;
    if (value != null) {
      result
        ..add('images')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.typeDeVoiture;
    if (value != null) {
      result
        ..add('type_de_voiture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  LocationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'marque':
          result.marque = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'transmission':
          result.transmission = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'prix':
          result.prix = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'annee':
          result.annee = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'nb_siege':
          result.nbSiege = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'carburant':
          result.carburant = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'favoris':
          result.favoris = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'liked_by':
          result.likedBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'gerant':
          result.gerant = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'type_de_voiture':
          result.typeDeVoiture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$LocationRecord extends LocationRecord {
  @override
  final String? marque;
  @override
  final String? transmission;
  @override
  final int? prix;
  @override
  final int? annee;
  @override
  final int? nbSiege;
  @override
  final String? carburant;
  @override
  final bool? favoris;
  @override
  final BuiltList<DocumentReference<Object?>>? likedBy;
  @override
  final DocumentReference<Object?>? gerant;
  @override
  final BuiltList<String>? images;
  @override
  final String? typeDeVoiture;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LocationRecord([void Function(LocationRecordBuilder)? updates]) =>
      (new LocationRecordBuilder()..update(updates))._build();

  _$LocationRecord._(
      {this.marque,
      this.transmission,
      this.prix,
      this.annee,
      this.nbSiege,
      this.carburant,
      this.favoris,
      this.likedBy,
      this.gerant,
      this.images,
      this.typeDeVoiture,
      this.ffRef})
      : super._();

  @override
  LocationRecord rebuild(void Function(LocationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationRecordBuilder toBuilder() =>
      new LocationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocationRecord &&
        marque == other.marque &&
        transmission == other.transmission &&
        prix == other.prix &&
        annee == other.annee &&
        nbSiege == other.nbSiege &&
        carburant == other.carburant &&
        favoris == other.favoris &&
        likedBy == other.likedBy &&
        gerant == other.gerant &&
        images == other.images &&
        typeDeVoiture == other.typeDeVoiture &&
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
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, marque.hashCode),
                                                transmission.hashCode),
                                            prix.hashCode),
                                        annee.hashCode),
                                    nbSiege.hashCode),
                                carburant.hashCode),
                            favoris.hashCode),
                        likedBy.hashCode),
                    gerant.hashCode),
                images.hashCode),
            typeDeVoiture.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LocationRecord')
          ..add('marque', marque)
          ..add('transmission', transmission)
          ..add('prix', prix)
          ..add('annee', annee)
          ..add('nbSiege', nbSiege)
          ..add('carburant', carburant)
          ..add('favoris', favoris)
          ..add('likedBy', likedBy)
          ..add('gerant', gerant)
          ..add('images', images)
          ..add('typeDeVoiture', typeDeVoiture)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LocationRecordBuilder
    implements Builder<LocationRecord, LocationRecordBuilder> {
  _$LocationRecord? _$v;

  String? _marque;
  String? get marque => _$this._marque;
  set marque(String? marque) => _$this._marque = marque;

  String? _transmission;
  String? get transmission => _$this._transmission;
  set transmission(String? transmission) => _$this._transmission = transmission;

  int? _prix;
  int? get prix => _$this._prix;
  set prix(int? prix) => _$this._prix = prix;

  int? _annee;
  int? get annee => _$this._annee;
  set annee(int? annee) => _$this._annee = annee;

  int? _nbSiege;
  int? get nbSiege => _$this._nbSiege;
  set nbSiege(int? nbSiege) => _$this._nbSiege = nbSiege;

  String? _carburant;
  String? get carburant => _$this._carburant;
  set carburant(String? carburant) => _$this._carburant = carburant;

  bool? _favoris;
  bool? get favoris => _$this._favoris;
  set favoris(bool? favoris) => _$this._favoris = favoris;

  ListBuilder<DocumentReference<Object?>>? _likedBy;
  ListBuilder<DocumentReference<Object?>> get likedBy =>
      _$this._likedBy ??= new ListBuilder<DocumentReference<Object?>>();
  set likedBy(ListBuilder<DocumentReference<Object?>>? likedBy) =>
      _$this._likedBy = likedBy;

  DocumentReference<Object?>? _gerant;
  DocumentReference<Object?>? get gerant => _$this._gerant;
  set gerant(DocumentReference<Object?>? gerant) => _$this._gerant = gerant;

  ListBuilder<String>? _images;
  ListBuilder<String> get images =>
      _$this._images ??= new ListBuilder<String>();
  set images(ListBuilder<String>? images) => _$this._images = images;

  String? _typeDeVoiture;
  String? get typeDeVoiture => _$this._typeDeVoiture;
  set typeDeVoiture(String? typeDeVoiture) =>
      _$this._typeDeVoiture = typeDeVoiture;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LocationRecordBuilder() {
    LocationRecord._initializeBuilder(this);
  }

  LocationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _marque = $v.marque;
      _transmission = $v.transmission;
      _prix = $v.prix;
      _annee = $v.annee;
      _nbSiege = $v.nbSiege;
      _carburant = $v.carburant;
      _favoris = $v.favoris;
      _likedBy = $v.likedBy?.toBuilder();
      _gerant = $v.gerant;
      _images = $v.images?.toBuilder();
      _typeDeVoiture = $v.typeDeVoiture;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocationRecord;
  }

  @override
  void update(void Function(LocationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocationRecord build() => _build();

  _$LocationRecord _build() {
    _$LocationRecord _$result;
    try {
      _$result = _$v ??
          new _$LocationRecord._(
              marque: marque,
              transmission: transmission,
              prix: prix,
              annee: annee,
              nbSiege: nbSiege,
              carburant: carburant,
              favoris: favoris,
              likedBy: _likedBy?.build(),
              gerant: gerant,
              images: _images?.build(),
              typeDeVoiture: typeDeVoiture,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'likedBy';
        _likedBy?.build();

        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LocationRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
