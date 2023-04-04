// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opportunities_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OpportunitiesRecord> _$opportunitiesRecordSerializer =
    new _$OpportunitiesRecordSerializer();

class _$OpportunitiesRecordSerializer
    implements StructuredSerializer<OpportunitiesRecord> {
  @override
  final Iterable<Type> types = const [
    OpportunitiesRecord,
    _$OpportunitiesRecord
  ];
  @override
  final String wireName = 'OpportunitiesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, OpportunitiesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.opDesc;
    if (value != null) {
      result
        ..add('OpDesc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sdate;
    if (value != null) {
      result
        ..add('Sdate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.edate;
    if (value != null) {
      result
        ..add('Edate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.opProvider;
    if (value != null) {
      result
        ..add('OpProvider')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.opProviderLogo;
    if (value != null) {
      result
        ..add('OpProviderLogo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('Category')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.opQ;
    if (value != null) {
      result
        ..add('OpQ')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.oppName;
    if (value != null) {
      result
        ..add('oppName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.opSkills;
    if (value != null) {
      result
        ..add('OpSkills')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.opID;
    if (value != null) {
      result
        ..add('OpID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.opProviderEmail;
    if (value != null) {
      result
        ..add('OpProvider_email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastD2apply;
    if (value != null) {
      result
        ..add('LastD2apply')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  OpportunitiesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OpportunitiesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'OpDesc':
          result.opDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Sdate':
          result.sdate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Edate':
          result.edate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'OpProvider':
          result.opProvider = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'OpProviderLogo':
          result.opProviderLogo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Category':
          result.category.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'OpQ':
          result.opQ = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'oppName':
          result.oppName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'OpSkills':
          result.opSkills.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'OpID':
          result.opID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'OpProvider_email':
          result.opProviderEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'LastD2apply':
          result.lastD2apply = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$OpportunitiesRecord extends OpportunitiesRecord {
  @override
  final String? opDesc;
  @override
  final DateTime? sdate;
  @override
  final DateTime? edate;
  @override
  final String? opProvider;
  @override
  final String? opProviderLogo;
  @override
  final BuiltList<String>? category;
  @override
  final int? opQ;
  @override
  final String? oppName;
  @override
  final String? status;
  @override
  final BuiltList<String>? opSkills;
  @override
  final String? opID;
  @override
  final String? opProviderEmail;
  @override
  final DateTime? lastD2apply;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$OpportunitiesRecord(
          [void Function(OpportunitiesRecordBuilder)? updates]) =>
      (new OpportunitiesRecordBuilder()..update(updates))._build();

  _$OpportunitiesRecord._(
      {this.opDesc,
      this.sdate,
      this.edate,
      this.opProvider,
      this.opProviderLogo,
      this.category,
      this.opQ,
      this.oppName,
      this.status,
      this.opSkills,
      this.opID,
      this.opProviderEmail,
      this.lastD2apply,
      this.ffRef})
      : super._();

  @override
  OpportunitiesRecord rebuild(
          void Function(OpportunitiesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OpportunitiesRecordBuilder toBuilder() =>
      new OpportunitiesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OpportunitiesRecord &&
        opDesc == other.opDesc &&
        sdate == other.sdate &&
        edate == other.edate &&
        opProvider == other.opProvider &&
        opProviderLogo == other.opProviderLogo &&
        category == other.category &&
        opQ == other.opQ &&
        oppName == other.oppName &&
        status == other.status &&
        opSkills == other.opSkills &&
        opID == other.opID &&
        opProviderEmail == other.opProviderEmail &&
        lastD2apply == other.lastD2apply &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, opDesc.hashCode);
    _$hash = $jc(_$hash, sdate.hashCode);
    _$hash = $jc(_$hash, edate.hashCode);
    _$hash = $jc(_$hash, opProvider.hashCode);
    _$hash = $jc(_$hash, opProviderLogo.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, opQ.hashCode);
    _$hash = $jc(_$hash, oppName.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, opSkills.hashCode);
    _$hash = $jc(_$hash, opID.hashCode);
    _$hash = $jc(_$hash, opProviderEmail.hashCode);
    _$hash = $jc(_$hash, lastD2apply.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OpportunitiesRecord')
          ..add('opDesc', opDesc)
          ..add('sdate', sdate)
          ..add('edate', edate)
          ..add('opProvider', opProvider)
          ..add('opProviderLogo', opProviderLogo)
          ..add('category', category)
          ..add('opQ', opQ)
          ..add('oppName', oppName)
          ..add('status', status)
          ..add('opSkills', opSkills)
          ..add('opID', opID)
          ..add('opProviderEmail', opProviderEmail)
          ..add('lastD2apply', lastD2apply)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class OpportunitiesRecordBuilder
    implements Builder<OpportunitiesRecord, OpportunitiesRecordBuilder> {
  _$OpportunitiesRecord? _$v;

  String? _opDesc;
  String? get opDesc => _$this._opDesc;
  set opDesc(String? opDesc) => _$this._opDesc = opDesc;

  DateTime? _sdate;
  DateTime? get sdate => _$this._sdate;
  set sdate(DateTime? sdate) => _$this._sdate = sdate;

  DateTime? _edate;
  DateTime? get edate => _$this._edate;
  set edate(DateTime? edate) => _$this._edate = edate;

  String? _opProvider;
  String? get opProvider => _$this._opProvider;
  set opProvider(String? opProvider) => _$this._opProvider = opProvider;

  String? _opProviderLogo;
  String? get opProviderLogo => _$this._opProviderLogo;
  set opProviderLogo(String? opProviderLogo) =>
      _$this._opProviderLogo = opProviderLogo;

  ListBuilder<String>? _category;
  ListBuilder<String> get category =>
      _$this._category ??= new ListBuilder<String>();
  set category(ListBuilder<String>? category) => _$this._category = category;

  int? _opQ;
  int? get opQ => _$this._opQ;
  set opQ(int? opQ) => _$this._opQ = opQ;

  String? _oppName;
  String? get oppName => _$this._oppName;
  set oppName(String? oppName) => _$this._oppName = oppName;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<String>? _opSkills;
  ListBuilder<String> get opSkills =>
      _$this._opSkills ??= new ListBuilder<String>();
  set opSkills(ListBuilder<String>? opSkills) => _$this._opSkills = opSkills;

  String? _opID;
  String? get opID => _$this._opID;
  set opID(String? opID) => _$this._opID = opID;

  String? _opProviderEmail;
  String? get opProviderEmail => _$this._opProviderEmail;
  set opProviderEmail(String? opProviderEmail) =>
      _$this._opProviderEmail = opProviderEmail;

  DateTime? _lastD2apply;
  DateTime? get lastD2apply => _$this._lastD2apply;
  set lastD2apply(DateTime? lastD2apply) => _$this._lastD2apply = lastD2apply;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  OpportunitiesRecordBuilder() {
    OpportunitiesRecord._initializeBuilder(this);
  }

  OpportunitiesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _opDesc = $v.opDesc;
      _sdate = $v.sdate;
      _edate = $v.edate;
      _opProvider = $v.opProvider;
      _opProviderLogo = $v.opProviderLogo;
      _category = $v.category?.toBuilder();
      _opQ = $v.opQ;
      _oppName = $v.oppName;
      _status = $v.status;
      _opSkills = $v.opSkills?.toBuilder();
      _opID = $v.opID;
      _opProviderEmail = $v.opProviderEmail;
      _lastD2apply = $v.lastD2apply;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OpportunitiesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OpportunitiesRecord;
  }

  @override
  void update(void Function(OpportunitiesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OpportunitiesRecord build() => _build();

  _$OpportunitiesRecord _build() {
    _$OpportunitiesRecord _$result;
    try {
      _$result = _$v ??
          new _$OpportunitiesRecord._(
              opDesc: opDesc,
              sdate: sdate,
              edate: edate,
              opProvider: opProvider,
              opProviderLogo: opProviderLogo,
              category: _category?.build(),
              opQ: opQ,
              oppName: oppName,
              status: status,
              opSkills: _opSkills?.build(),
              opID: opID,
              opProviderEmail: opProviderEmail,
              lastD2apply: lastD2apply,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'category';
        _category?.build();

        _$failedField = 'opSkills';
        _opSkills?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OpportunitiesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
