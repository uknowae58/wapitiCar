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
  Iterable<Object> serialize(Serializers serializers, LocationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
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
    value = object.audi;
    if (value != null) {
      result
        ..add('audi')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.bmw;
    if (value != null) {
      result
        ..add('bmw')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ford;
    if (value != null) {
      result
        ..add('ford')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.hyundai;
    if (value != null) {
      result
        ..add('hyundai')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.kia;
    if (value != null) {
      result
        ..add('kia')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.mazda;
    if (value != null) {
      result
        ..add('mazda')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.mercedes;
    if (value != null) {
      result
        ..add('mercedes')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.mitsubishi;
    if (value != null) {
      result
        ..add('mitsubishi')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.rangerover;
    if (value != null) {
      result
        ..add('rangerover')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.peugeot;
    if (value != null) {
      result
        ..add('peugeot')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.toyota;
    if (value != null) {
      result
        ..add('toyota')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.volkswagen;
    if (value != null) {
      result
        ..add('volkswagen')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.gerant;
    if (value != null) {
      result
        ..add('gerant')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.images;
    if (value != null) {
      result
        ..add('images')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  LocationRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'marque':
          result.marque = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'transmission':
          result.transmission = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prix':
          result.prix = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'annee':
          result.annee = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'nb_siege':
          result.nbSiege = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'carburant':
          result.carburant = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'audi':
          result.audi = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'bmw':
          result.bmw = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'ford':
          result.ford = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'hyundai':
          result.hyundai = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'kia':
          result.kia = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'mazda':
          result.mazda = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'mercedes':
          result.mercedes = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'mitsubishi':
          result.mitsubishi = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'rangerover':
          result.rangerover = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'peugeot':
          result.peugeot = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'toyota':
          result.toyota = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'volkswagen':
          result.volkswagen = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'favoris':
          result.favoris = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'liked_by':
          result.likedBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'gerant':
          result.gerant = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
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

class _$LocationRecord extends LocationRecord {
  @override
  final String marque;
  @override
  final String transmission;
  @override
  final int prix;
  @override
  final int annee;
  @override
  final int nbSiege;
  @override
  final String carburant;
  @override
  final bool audi;
  @override
  final bool bmw;
  @override
  final bool ford;
  @override
  final bool hyundai;
  @override
  final bool kia;
  @override
  final bool mazda;
  @override
  final bool mercedes;
  @override
  final bool mitsubishi;
  @override
  final bool rangerover;
  @override
  final bool peugeot;
  @override
  final bool toyota;
  @override
  final bool volkswagen;
  @override
  final bool favoris;
  @override
  final BuiltList<DocumentReference<Object>> likedBy;
  @override
  final DocumentReference<Object> gerant;
  @override
  final BuiltList<String> images;
  @override
  final DocumentReference<Object> reference;

  factory _$LocationRecord([void Function(LocationRecordBuilder) updates]) =>
      (new LocationRecordBuilder()..update(updates)).build();

  _$LocationRecord._(
      {this.marque,
      this.transmission,
      this.prix,
      this.annee,
      this.nbSiege,
      this.carburant,
      this.audi,
      this.bmw,
      this.ford,
      this.hyundai,
      this.kia,
      this.mazda,
      this.mercedes,
      this.mitsubishi,
      this.rangerover,
      this.peugeot,
      this.toyota,
      this.volkswagen,
      this.favoris,
      this.likedBy,
      this.gerant,
      this.images,
      this.reference})
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
        audi == other.audi &&
        bmw == other.bmw &&
        ford == other.ford &&
        hyundai == other.hyundai &&
        kia == other.kia &&
        mazda == other.mazda &&
        mercedes == other.mercedes &&
        mitsubishi == other.mitsubishi &&
        rangerover == other.rangerover &&
        peugeot == other.peugeot &&
        toyota == other.toyota &&
        volkswagen == other.volkswagen &&
        favoris == other.favoris &&
        likedBy == other.likedBy &&
        gerant == other.gerant &&
        images == other.images &&
        reference == other.reference;
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
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc(0, marque.hashCode), transmission.hashCode), prix.hashCode), annee.hashCode),
                                                                                nbSiege.hashCode),
                                                                            carburant.hashCode),
                                                                        audi.hashCode),
                                                                    bmw.hashCode),
                                                                ford.hashCode),
                                                            hyundai.hashCode),
                                                        kia.hashCode),
                                                    mazda.hashCode),
                                                mercedes.hashCode),
                                            mitsubishi.hashCode),
                                        rangerover.hashCode),
                                    peugeot.hashCode),
                                toyota.hashCode),
                            volkswagen.hashCode),
                        favoris.hashCode),
                    likedBy.hashCode),
                gerant.hashCode),
            images.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LocationRecord')
          ..add('marque', marque)
          ..add('transmission', transmission)
          ..add('prix', prix)
          ..add('annee', annee)
          ..add('nbSiege', nbSiege)
          ..add('carburant', carburant)
          ..add('audi', audi)
          ..add('bmw', bmw)
          ..add('ford', ford)
          ..add('hyundai', hyundai)
          ..add('kia', kia)
          ..add('mazda', mazda)
          ..add('mercedes', mercedes)
          ..add('mitsubishi', mitsubishi)
          ..add('rangerover', rangerover)
          ..add('peugeot', peugeot)
          ..add('toyota', toyota)
          ..add('volkswagen', volkswagen)
          ..add('favoris', favoris)
          ..add('likedBy', likedBy)
          ..add('gerant', gerant)
          ..add('images', images)
          ..add('reference', reference))
        .toString();
  }
}

class LocationRecordBuilder
    implements Builder<LocationRecord, LocationRecordBuilder> {
  _$LocationRecord _$v;

  String _marque;
  String get marque => _$this._marque;
  set marque(String marque) => _$this._marque = marque;

  String _transmission;
  String get transmission => _$this._transmission;
  set transmission(String transmission) => _$this._transmission = transmission;

  int _prix;
  int get prix => _$this._prix;
  set prix(int prix) => _$this._prix = prix;

  int _annee;
  int get annee => _$this._annee;
  set annee(int annee) => _$this._annee = annee;

  int _nbSiege;
  int get nbSiege => _$this._nbSiege;
  set nbSiege(int nbSiege) => _$this._nbSiege = nbSiege;

  String _carburant;
  String get carburant => _$this._carburant;
  set carburant(String carburant) => _$this._carburant = carburant;

  bool _audi;
  bool get audi => _$this._audi;
  set audi(bool audi) => _$this._audi = audi;

  bool _bmw;
  bool get bmw => _$this._bmw;
  set bmw(bool bmw) => _$this._bmw = bmw;

  bool _ford;
  bool get ford => _$this._ford;
  set ford(bool ford) => _$this._ford = ford;

  bool _hyundai;
  bool get hyundai => _$this._hyundai;
  set hyundai(bool hyundai) => _$this._hyundai = hyundai;

  bool _kia;
  bool get kia => _$this._kia;
  set kia(bool kia) => _$this._kia = kia;

  bool _mazda;
  bool get mazda => _$this._mazda;
  set mazda(bool mazda) => _$this._mazda = mazda;

  bool _mercedes;
  bool get mercedes => _$this._mercedes;
  set mercedes(bool mercedes) => _$this._mercedes = mercedes;

  bool _mitsubishi;
  bool get mitsubishi => _$this._mitsubishi;
  set mitsubishi(bool mitsubishi) => _$this._mitsubishi = mitsubishi;

  bool _rangerover;
  bool get rangerover => _$this._rangerover;
  set rangerover(bool rangerover) => _$this._rangerover = rangerover;

  bool _peugeot;
  bool get peugeot => _$this._peugeot;
  set peugeot(bool peugeot) => _$this._peugeot = peugeot;

  bool _toyota;
  bool get toyota => _$this._toyota;
  set toyota(bool toyota) => _$this._toyota = toyota;

  bool _volkswagen;
  bool get volkswagen => _$this._volkswagen;
  set volkswagen(bool volkswagen) => _$this._volkswagen = volkswagen;

  bool _favoris;
  bool get favoris => _$this._favoris;
  set favoris(bool favoris) => _$this._favoris = favoris;

  ListBuilder<DocumentReference<Object>> _likedBy;
  ListBuilder<DocumentReference<Object>> get likedBy =>
      _$this._likedBy ??= new ListBuilder<DocumentReference<Object>>();
  set likedBy(ListBuilder<DocumentReference<Object>> likedBy) =>
      _$this._likedBy = likedBy;

  DocumentReference<Object> _gerant;
  DocumentReference<Object> get gerant => _$this._gerant;
  set gerant(DocumentReference<Object> gerant) => _$this._gerant = gerant;

  ListBuilder<String> _images;
  ListBuilder<String> get images =>
      _$this._images ??= new ListBuilder<String>();
  set images(ListBuilder<String> images) => _$this._images = images;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

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
      _audi = $v.audi;
      _bmw = $v.bmw;
      _ford = $v.ford;
      _hyundai = $v.hyundai;
      _kia = $v.kia;
      _mazda = $v.mazda;
      _mercedes = $v.mercedes;
      _mitsubishi = $v.mitsubishi;
      _rangerover = $v.rangerover;
      _peugeot = $v.peugeot;
      _toyota = $v.toyota;
      _volkswagen = $v.volkswagen;
      _favoris = $v.favoris;
      _likedBy = $v.likedBy?.toBuilder();
      _gerant = $v.gerant;
      _images = $v.images?.toBuilder();
      _reference = $v.reference;
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
  void update(void Function(LocationRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LocationRecord build() {
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
              audi: audi,
              bmw: bmw,
              ford: ford,
              hyundai: hyundai,
              kia: kia,
              mazda: mazda,
              mercedes: mercedes,
              mitsubishi: mitsubishi,
              rangerover: rangerover,
              peugeot: peugeot,
              toyota: toyota,
              volkswagen: volkswagen,
              favoris: favoris,
              likedBy: _likedBy?.build(),
              gerant: gerant,
              images: _images?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'likedBy';
        _likedBy?.build();

        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LocationRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
