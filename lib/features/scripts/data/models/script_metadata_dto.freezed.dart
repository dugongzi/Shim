// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'script_metadata_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScriptMetadataDto {

 String get name; String get description; String get version; String get author;
/// Create a copy of ScriptMetadataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScriptMetadataDtoCopyWith<ScriptMetadataDto> get copyWith => _$ScriptMetadataDtoCopyWithImpl<ScriptMetadataDto>(this as ScriptMetadataDto, _$identity);

  /// Serializes this ScriptMetadataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScriptMetadataDto&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.version, version) || other.version == version)&&(identical(other.author, author) || other.author == author));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,version,author);

@override
String toString() {
  return 'ScriptMetadataDto(name: $name, description: $description, version: $version, author: $author)';
}


}

/// @nodoc
abstract mixin class $ScriptMetadataDtoCopyWith<$Res>  {
  factory $ScriptMetadataDtoCopyWith(ScriptMetadataDto value, $Res Function(ScriptMetadataDto) _then) = _$ScriptMetadataDtoCopyWithImpl;
@useResult
$Res call({
 String name, String description, String version, String author
});




}
/// @nodoc
class _$ScriptMetadataDtoCopyWithImpl<$Res>
    implements $ScriptMetadataDtoCopyWith<$Res> {
  _$ScriptMetadataDtoCopyWithImpl(this._self, this._then);

  final ScriptMetadataDto _self;
  final $Res Function(ScriptMetadataDto) _then;

/// Create a copy of ScriptMetadataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = null,Object? version = null,Object? author = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ScriptMetadataDto].
extension ScriptMetadataDtoPatterns on ScriptMetadataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScriptMetadataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScriptMetadataDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScriptMetadataDto value)  $default,){
final _that = this;
switch (_that) {
case _ScriptMetadataDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScriptMetadataDto value)?  $default,){
final _that = this;
switch (_that) {
case _ScriptMetadataDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String description,  String version,  String author)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScriptMetadataDto() when $default != null:
return $default(_that.name,_that.description,_that.version,_that.author);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String description,  String version,  String author)  $default,) {final _that = this;
switch (_that) {
case _ScriptMetadataDto():
return $default(_that.name,_that.description,_that.version,_that.author);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String description,  String version,  String author)?  $default,) {final _that = this;
switch (_that) {
case _ScriptMetadataDto() when $default != null:
return $default(_that.name,_that.description,_that.version,_that.author);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScriptMetadataDto extends ScriptMetadataDto {
  const _ScriptMetadataDto({this.name = '', this.description = '', this.version = '', this.author = ''}): super._();
  factory _ScriptMetadataDto.fromJson(Map<String, dynamic> json) => _$ScriptMetadataDtoFromJson(json);

@override@JsonKey() final  String name;
@override@JsonKey() final  String description;
@override@JsonKey() final  String version;
@override@JsonKey() final  String author;

/// Create a copy of ScriptMetadataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScriptMetadataDtoCopyWith<_ScriptMetadataDto> get copyWith => __$ScriptMetadataDtoCopyWithImpl<_ScriptMetadataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScriptMetadataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScriptMetadataDto&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.version, version) || other.version == version)&&(identical(other.author, author) || other.author == author));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,description,version,author);

@override
String toString() {
  return 'ScriptMetadataDto(name: $name, description: $description, version: $version, author: $author)';
}


}

/// @nodoc
abstract mixin class _$ScriptMetadataDtoCopyWith<$Res> implements $ScriptMetadataDtoCopyWith<$Res> {
  factory _$ScriptMetadataDtoCopyWith(_ScriptMetadataDto value, $Res Function(_ScriptMetadataDto) _then) = __$ScriptMetadataDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, String description, String version, String author
});




}
/// @nodoc
class __$ScriptMetadataDtoCopyWithImpl<$Res>
    implements _$ScriptMetadataDtoCopyWith<$Res> {
  __$ScriptMetadataDtoCopyWithImpl(this._self, this._then);

  final _ScriptMetadataDto _self;
  final $Res Function(_ScriptMetadataDto) _then;

/// Create a copy of ScriptMetadataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = null,Object? version = null,Object? author = null,}) {
  return _then(_ScriptMetadataDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
