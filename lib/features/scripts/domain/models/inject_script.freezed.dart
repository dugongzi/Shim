// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inject_script.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InjectScript {

 String get id; String get filePath; ScriptMetadata get metadata; String get code;
/// Create a copy of InjectScript
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InjectScriptCopyWith<InjectScript> get copyWith => _$InjectScriptCopyWithImpl<InjectScript>(this as InjectScript, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InjectScript&&(identical(other.id, id) || other.id == id)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,id,filePath,metadata,code);

@override
String toString() {
  return 'InjectScript(id: $id, filePath: $filePath, metadata: $metadata, code: $code)';
}


}

/// @nodoc
abstract mixin class $InjectScriptCopyWith<$Res>  {
  factory $InjectScriptCopyWith(InjectScript value, $Res Function(InjectScript) _then) = _$InjectScriptCopyWithImpl;
@useResult
$Res call({
 String id, String filePath, ScriptMetadata metadata, String code
});


$ScriptMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class _$InjectScriptCopyWithImpl<$Res>
    implements $InjectScriptCopyWith<$Res> {
  _$InjectScriptCopyWithImpl(this._self, this._then);

  final InjectScript _self;
  final $Res Function(InjectScript) _then;

/// Create a copy of InjectScript
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? filePath = null,Object? metadata = null,Object? code = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as ScriptMetadata,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of InjectScript
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScriptMetadataCopyWith<$Res> get metadata {
  
  return $ScriptMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [InjectScript].
extension InjectScriptPatterns on InjectScript {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InjectScript value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InjectScript() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InjectScript value)  $default,){
final _that = this;
switch (_that) {
case _InjectScript():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InjectScript value)?  $default,){
final _that = this;
switch (_that) {
case _InjectScript() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String filePath,  ScriptMetadata metadata,  String code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InjectScript() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String filePath,  ScriptMetadata metadata,  String code)  $default,) {final _that = this;
switch (_that) {
case _InjectScript():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String filePath,  ScriptMetadata metadata,  String code)?  $default,) {final _that = this;
switch (_that) {
case _InjectScript() when $default != null:
return $default(_that.id,_that.filePath,_that.metadata,_that.code);case _:
  return null;

}
}

}

/// @nodoc


class _InjectScript extends InjectScript {
  const _InjectScript({required this.id, required this.filePath, required this.metadata, required this.code}): super._();
  

@override final  String id;
@override final  String filePath;
@override final  ScriptMetadata metadata;
@override final  String code;

/// Create a copy of InjectScript
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InjectScriptCopyWith<_InjectScript> get copyWith => __$InjectScriptCopyWithImpl<_InjectScript>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InjectScript&&(identical(other.id, id) || other.id == id)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,id,filePath,metadata,code);

@override
String toString() {
  return 'InjectScript(id: $id, filePath: $filePath, metadata: $metadata, code: $code)';
}


}

/// @nodoc
abstract mixin class _$InjectScriptCopyWith<$Res> implements $InjectScriptCopyWith<$Res> {
  factory _$InjectScriptCopyWith(_InjectScript value, $Res Function(_InjectScript) _then) = __$InjectScriptCopyWithImpl;
@override @useResult
$Res call({
 String id, String filePath, ScriptMetadata metadata, String code
});


@override $ScriptMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class __$InjectScriptCopyWithImpl<$Res>
    implements _$InjectScriptCopyWith<$Res> {
  __$InjectScriptCopyWithImpl(this._self, this._then);

  final _InjectScript _self;
  final $Res Function(_InjectScript) _then;

/// Create a copy of InjectScript
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? filePath = null,Object? metadata = null,Object? code = null,}) {
  return _then(_InjectScript(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as ScriptMetadata,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of InjectScript
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScriptMetadataCopyWith<$Res> get metadata {
  
  return $ScriptMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}

// dart format on
