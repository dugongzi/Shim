// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'codex_project_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CodexProjectDto {

 String get cwd; int get sessionCount; int get lastActiveMs;
/// Create a copy of CodexProjectDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CodexProjectDtoCopyWith<CodexProjectDto> get copyWith => _$CodexProjectDtoCopyWithImpl<CodexProjectDto>(this as CodexProjectDto, _$identity);

  /// Serializes this CodexProjectDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CodexProjectDto&&(identical(other.cwd, cwd) || other.cwd == cwd)&&(identical(other.sessionCount, sessionCount) || other.sessionCount == sessionCount)&&(identical(other.lastActiveMs, lastActiveMs) || other.lastActiveMs == lastActiveMs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cwd,sessionCount,lastActiveMs);

@override
String toString() {
  return 'CodexProjectDto(cwd: $cwd, sessionCount: $sessionCount, lastActiveMs: $lastActiveMs)';
}


}

/// @nodoc
abstract mixin class $CodexProjectDtoCopyWith<$Res>  {
  factory $CodexProjectDtoCopyWith(CodexProjectDto value, $Res Function(CodexProjectDto) _then) = _$CodexProjectDtoCopyWithImpl;
@useResult
$Res call({
 String cwd, int sessionCount, int lastActiveMs
});




}
/// @nodoc
class _$CodexProjectDtoCopyWithImpl<$Res>
    implements $CodexProjectDtoCopyWith<$Res> {
  _$CodexProjectDtoCopyWithImpl(this._self, this._then);

  final CodexProjectDto _self;
  final $Res Function(CodexProjectDto) _then;

/// Create a copy of CodexProjectDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cwd = null,Object? sessionCount = null,Object? lastActiveMs = null,}) {
  return _then(_self.copyWith(
cwd: null == cwd ? _self.cwd : cwd // ignore: cast_nullable_to_non_nullable
as String,sessionCount: null == sessionCount ? _self.sessionCount : sessionCount // ignore: cast_nullable_to_non_nullable
as int,lastActiveMs: null == lastActiveMs ? _self.lastActiveMs : lastActiveMs // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CodexProjectDto].
extension CodexProjectDtoPatterns on CodexProjectDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CodexProjectDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CodexProjectDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CodexProjectDto value)  $default,){
final _that = this;
switch (_that) {
case _CodexProjectDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CodexProjectDto value)?  $default,){
final _that = this;
switch (_that) {
case _CodexProjectDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String cwd,  int sessionCount,  int lastActiveMs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CodexProjectDto() when $default != null:
return $default(_that.cwd,_that.sessionCount,_that.lastActiveMs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String cwd,  int sessionCount,  int lastActiveMs)  $default,) {final _that = this;
switch (_that) {
case _CodexProjectDto():
return $default(_that.cwd,_that.sessionCount,_that.lastActiveMs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String cwd,  int sessionCount,  int lastActiveMs)?  $default,) {final _that = this;
switch (_that) {
case _CodexProjectDto() when $default != null:
return $default(_that.cwd,_that.sessionCount,_that.lastActiveMs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CodexProjectDto extends CodexProjectDto {
  const _CodexProjectDto({this.cwd = '', this.sessionCount = 0, this.lastActiveMs = 0}): super._();
  factory _CodexProjectDto.fromJson(Map<String, dynamic> json) => _$CodexProjectDtoFromJson(json);

@override@JsonKey() final  String cwd;
@override@JsonKey() final  int sessionCount;
@override@JsonKey() final  int lastActiveMs;

/// Create a copy of CodexProjectDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CodexProjectDtoCopyWith<_CodexProjectDto> get copyWith => __$CodexProjectDtoCopyWithImpl<_CodexProjectDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CodexProjectDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CodexProjectDto&&(identical(other.cwd, cwd) || other.cwd == cwd)&&(identical(other.sessionCount, sessionCount) || other.sessionCount == sessionCount)&&(identical(other.lastActiveMs, lastActiveMs) || other.lastActiveMs == lastActiveMs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cwd,sessionCount,lastActiveMs);

@override
String toString() {
  return 'CodexProjectDto(cwd: $cwd, sessionCount: $sessionCount, lastActiveMs: $lastActiveMs)';
}


}

/// @nodoc
abstract mixin class _$CodexProjectDtoCopyWith<$Res> implements $CodexProjectDtoCopyWith<$Res> {
  factory _$CodexProjectDtoCopyWith(_CodexProjectDto value, $Res Function(_CodexProjectDto) _then) = __$CodexProjectDtoCopyWithImpl;
@override @useResult
$Res call({
 String cwd, int sessionCount, int lastActiveMs
});




}
/// @nodoc
class __$CodexProjectDtoCopyWithImpl<$Res>
    implements _$CodexProjectDtoCopyWith<$Res> {
  __$CodexProjectDtoCopyWithImpl(this._self, this._then);

  final _CodexProjectDto _self;
  final $Res Function(_CodexProjectDto) _then;

/// Create a copy of CodexProjectDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cwd = null,Object? sessionCount = null,Object? lastActiveMs = null,}) {
  return _then(_CodexProjectDto(
cwd: null == cwd ? _self.cwd : cwd // ignore: cast_nullable_to_non_nullable
as String,sessionCount: null == sessionCount ? _self.sessionCount : sessionCount // ignore: cast_nullable_to_non_nullable
as int,lastActiveMs: null == lastActiveMs ? _self.lastActiveMs : lastActiveMs // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
