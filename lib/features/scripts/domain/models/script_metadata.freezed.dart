// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'script_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ScriptMetadata {

 String get name; String get description; String get version; String get author;
/// Create a copy of ScriptMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScriptMetadataCopyWith<ScriptMetadata> get copyWith => _$ScriptMetadataCopyWithImpl<ScriptMetadata>(this as ScriptMetadata, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScriptMetadata&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.version, version) || other.version == version)&&(identical(other.author, author) || other.author == author));
}


@override
int get hashCode => Object.hash(runtimeType,name,description,version,author);

@override
String toString() {
  return 'ScriptMetadata(name: $name, description: $description, version: $version, author: $author)';
}


}

/// @nodoc
abstract mixin class $ScriptMetadataCopyWith<$Res>  {
  factory $ScriptMetadataCopyWith(ScriptMetadata value, $Res Function(ScriptMetadata) _then) = _$ScriptMetadataCopyWithImpl;
@useResult
$Res call({
 String name, String description, String version, String author
});




}
/// @nodoc
class _$ScriptMetadataCopyWithImpl<$Res>
    implements $ScriptMetadataCopyWith<$Res> {
  _$ScriptMetadataCopyWithImpl(this._self, this._then);

  final ScriptMetadata _self;
  final $Res Function(ScriptMetadata) _then;

/// Create a copy of ScriptMetadata
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


/// Adds pattern-matching-related methods to [ScriptMetadata].
extension ScriptMetadataPatterns on ScriptMetadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScriptMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScriptMetadata() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScriptMetadata value)  $default,){
final _that = this;
switch (_that) {
case _ScriptMetadata():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScriptMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _ScriptMetadata() when $default != null:
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
case _ScriptMetadata() when $default != null:
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
case _ScriptMetadata():
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
case _ScriptMetadata() when $default != null:
return $default(_that.name,_that.description,_that.version,_that.author);case _:
  return null;

}
}

}

/// @nodoc


class _ScriptMetadata extends ScriptMetadata {
  const _ScriptMetadata({required this.name, required this.description, required this.version, required this.author}): super._();
  

@override final  String name;
@override final  String description;
@override final  String version;
@override final  String author;

/// Create a copy of ScriptMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScriptMetadataCopyWith<_ScriptMetadata> get copyWith => __$ScriptMetadataCopyWithImpl<_ScriptMetadata>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScriptMetadata&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.version, version) || other.version == version)&&(identical(other.author, author) || other.author == author));
}


@override
int get hashCode => Object.hash(runtimeType,name,description,version,author);

@override
String toString() {
  return 'ScriptMetadata(name: $name, description: $description, version: $version, author: $author)';
}


}

/// @nodoc
abstract mixin class _$ScriptMetadataCopyWith<$Res> implements $ScriptMetadataCopyWith<$Res> {
  factory _$ScriptMetadataCopyWith(_ScriptMetadata value, $Res Function(_ScriptMetadata) _then) = __$ScriptMetadataCopyWithImpl;
@override @useResult
$Res call({
 String name, String description, String version, String author
});




}
/// @nodoc
class __$ScriptMetadataCopyWithImpl<$Res>
    implements _$ScriptMetadataCopyWith<$Res> {
  __$ScriptMetadataCopyWithImpl(this._self, this._then);

  final _ScriptMetadata _self;
  final $Res Function(_ScriptMetadata) _then;

/// Create a copy of ScriptMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = null,Object? version = null,Object? author = null,}) {
  return _then(_ScriptMetadata(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,author: null == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
