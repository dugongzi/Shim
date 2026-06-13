// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inject_script_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InjectScriptDto {

 String get id; String get filePath; ScriptMetadataDto get metadata; String get code;
/// Create a copy of InjectScriptDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InjectScriptDtoCopyWith<InjectScriptDto> get copyWith => _$InjectScriptDtoCopyWithImpl<InjectScriptDto>(this as InjectScriptDto, _$identity);

  /// Serializes this InjectScriptDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InjectScriptDto&&(identical(other.id, id) || other.id == id)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,filePath,metadata,code);

@override
String toString() {
  return 'InjectScriptDto(id: $id, filePath: $filePath, metadata: $metadata, code: $code)';
}


}

/// @nodoc
abstract mixin class $InjectScriptDtoCopyWith<$Res>  {
  factory $InjectScriptDtoCopyWith(InjectScriptDto value, $Res Function(InjectScriptDto) _then) = _$InjectScriptDtoCopyWithImpl;
@useResult
$Res call({
 String id, String filePath, ScriptMetadataDto metadata, String code
});


$ScriptMetadataDtoCopyWith<$Res> get metadata;

}
/// @nodoc
class _$InjectScriptDtoCopyWithImpl<$Res>
    implements $InjectScriptDtoCopyWith<$Res> {
  _$InjectScriptDtoCopyWithImpl(this._self, this._then);

  final InjectScriptDto _self;
  final $Res Function(InjectScriptDto) _then;

/// Create a copy of InjectScriptDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? filePath = null,Object? metadata = null,Object? code = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as ScriptMetadataDto,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of InjectScriptDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScriptMetadataDtoCopyWith<$Res> get metadata {
  
  return $ScriptMetadataDtoCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [InjectScriptDto].
extension InjectScriptDtoPatterns on InjectScriptDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InjectScriptDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InjectScriptDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InjectScriptDto value)  $default,){
final _that = this;
switch (_that) {
case _InjectScriptDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InjectScriptDto value)?  $default,){
final _that = this;
switch (_that) {
case _InjectScriptDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String filePath,  ScriptMetadataDto metadata,  String code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InjectScriptDto() when $default != null:
return $default(_that.id,_that.filePath,_that.metadata,_that.code);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String filePath,  ScriptMetadataDto metadata,  String code)  $default,) {final _that = this;
switch (_that) {
case _InjectScriptDto():
return $default(_that.id,_that.filePath,_that.metadata,_that.code);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String filePath,  ScriptMetadataDto metadata,  String code)?  $default,) {final _that = this;
switch (_that) {
case _InjectScriptDto() when $default != null:
return $default(_that.id,_that.filePath,_that.metadata,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InjectScriptDto extends InjectScriptDto {
  const _InjectScriptDto({this.id = '', this.filePath = '', this.metadata = const ScriptMetadataDto(), this.code = ''}): super._();
  factory _InjectScriptDto.fromJson(Map<String, dynamic> json) => _$InjectScriptDtoFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String filePath;
@override@JsonKey() final  ScriptMetadataDto metadata;
@override@JsonKey() final  String code;

/// Create a copy of InjectScriptDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InjectScriptDtoCopyWith<_InjectScriptDto> get copyWith => __$InjectScriptDtoCopyWithImpl<_InjectScriptDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InjectScriptDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InjectScriptDto&&(identical(other.id, id) || other.id == id)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,filePath,metadata,code);

@override
String toString() {
  return 'InjectScriptDto(id: $id, filePath: $filePath, metadata: $metadata, code: $code)';
}


}

/// @nodoc
abstract mixin class _$InjectScriptDtoCopyWith<$Res> implements $InjectScriptDtoCopyWith<$Res> {
  factory _$InjectScriptDtoCopyWith(_InjectScriptDto value, $Res Function(_InjectScriptDto) _then) = __$InjectScriptDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String filePath, ScriptMetadataDto metadata, String code
});


@override $ScriptMetadataDtoCopyWith<$Res> get metadata;

}
/// @nodoc
class __$InjectScriptDtoCopyWithImpl<$Res>
    implements _$InjectScriptDtoCopyWith<$Res> {
  __$InjectScriptDtoCopyWithImpl(this._self, this._then);

  final _InjectScriptDto _self;
  final $Res Function(_InjectScriptDto) _then;

/// Create a copy of InjectScriptDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? filePath = null,Object? metadata = null,Object? code = null,}) {
  return _then(_InjectScriptDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as ScriptMetadataDto,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of InjectScriptDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScriptMetadataDtoCopyWith<$Res> get metadata {
  
  return $ScriptMetadataDtoCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}

// dart format on
