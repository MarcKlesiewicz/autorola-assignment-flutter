// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_pet.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract class NewPetBuilder {
  void replace(NewPet other);
  void update(void Function(NewPetBuilder) updates);
  String? get name;
  set name(String? name);

  String? get tag;
  set tag(String? tag);
}

class _$$NewPet extends $NewPet {
  @override
  final String name;
  @override
  final String? tag;

  factory _$$NewPet([void Function($NewPetBuilder)? updates]) =>
      (new $NewPetBuilder()..update(updates))._build();

  _$$NewPet._({required this.name, this.tag}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'$NewPet', 'name');
  }

  @override
  $NewPet rebuild(void Function($NewPetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $NewPetBuilder toBuilder() => new $NewPetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $NewPet && name == other.name && tag == other.tag;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, tag.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$NewPet')
          ..add('name', name)
          ..add('tag', tag))
        .toString();
  }
}

class $NewPetBuilder
    implements Builder<$NewPet, $NewPetBuilder>, NewPetBuilder {
  _$$NewPet? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  String? _tag;
  String? get tag => _$this._tag;
  set tag(covariant String? tag) => _$this._tag = tag;

  $NewPetBuilder() {
    $NewPet._defaults(this);
  }

  $NewPetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _tag = $v.tag;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $NewPet other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$$NewPet;
  }

  @override
  void update(void Function($NewPetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $NewPet build() => _build();

  _$$NewPet _build() {
    final _$result = _$v ??
        new _$$NewPet._(
            name:
                BuiltValueNullFieldError.checkNotNull(name, r'$NewPet', 'name'),
            tag: tag);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
