// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_all_of.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class PetAllOfBuilder {
  void replace(PetAllOf other);
  void update(void Function(PetAllOfBuilder) updates);
  int? get id;
  set id(int? id);
}

class _$$PetAllOf extends $PetAllOf {
  @override
  final int id;

  factory _$$PetAllOf([void Function($PetAllOfBuilder)? updates]) =>
      (new $PetAllOfBuilder()..update(updates))._build();

  _$$PetAllOf._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'$PetAllOf', 'id');
  }

  @override
  $PetAllOf rebuild(void Function($PetAllOfBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $PetAllOfBuilder toBuilder() => new $PetAllOfBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $PetAllOf && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$PetAllOf')..add('id', id))
        .toString();
  }
}

class $PetAllOfBuilder
    implements Builder<$PetAllOf, $PetAllOfBuilder>, PetAllOfBuilder {
  _$$PetAllOf? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(covariant int? id) => _$this._id = id;

  $PetAllOfBuilder() {
    $PetAllOf._defaults(this);
  }

  $PetAllOfBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $PetAllOf other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$PetAllOf;
  }

  @override
  void update(void Function($PetAllOfBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $PetAllOf build() => _build();

  _$$PetAllOf _build() {
    final _$result = _$v ??
        new _$$PetAllOf._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'$PetAllOf', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
