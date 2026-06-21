// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'codex_thread_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CodexThreadDetailDto {

 String get id; String get title; String get cwd; int get createdAtMs; int get updatedAtMs; String get modelProvider; String get model; String get cliVersion; String get rolloutPath; List<CodexThreadMessageDto> get messages;
/// Create a copy of CodexThreadDetailDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CodexThreadDetailDtoCopyWith<CodexThreadDetailDto> get copyWith => _$CodexThreadDetailDtoCopyWithImpl<CodexThreadDetailDto>(this as CodexThreadDetailDto, _$identity);

  /// Serializes this CodexThreadDetailDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CodexThreadDetailDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.cwd, cwd) || other.cwd == cwd)&&(identical(other.createdAtMs, createdAtMs) || other.createdAtMs == createdAtMs)&&(identical(other.updatedAtMs, updatedAtMs) || other.updatedAtMs == updatedAtMs)&&(identical(other.modelProvider, modelProvider) || other.modelProvider == modelProvider)&&(identical(other.model, model) || other.model == model)&&(identical(other.cliVersion, cliVersion) || other.cliVersion == cliVersion)&&(identical(other.rolloutPath, rolloutPath) || other.rolloutPath == rolloutPath)&&const DeepCollectionEquality().equals(other.messages, messages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,cwd,createdAtMs,updatedAtMs,modelProvider,model,cliVersion,rolloutPath,const DeepCollectionEquality().hash(messages));

@override
String toString() {
  return 'CodexThreadDetailDto(id: $id, title: $title, cwd: $cwd, createdAtMs: $createdAtMs, updatedAtMs: $updatedAtMs, modelProvider: $modelProvider, model: $model, cliVersion: $cliVersion, rolloutPath: $rolloutPath, messages: $messages)';
}


}

/// @nodoc
abstract mixin class $CodexThreadDetailDtoCopyWith<$Res>  {
  factory $CodexThreadDetailDtoCopyWith(CodexThreadDetailDto value, $Res Function(CodexThreadDetailDto) _then) = _$CodexThreadDetailDtoCopyWithImpl;
@useResult
$Res call({
 String id, String title, String cwd, int createdAtMs, int updatedAtMs, String modelProvider, String model, String cliVersion, String rolloutPath, List<CodexThreadMessageDto> messages
});




}
/// @nodoc
class _$CodexThreadDetailDtoCopyWithImpl<$Res>
    implements $CodexThreadDetailDtoCopyWith<$Res> {
  _$CodexThreadDetailDtoCopyWithImpl(this._self, this._then);

  final CodexThreadDetailDto _self;
  final $Res Function(CodexThreadDetailDto) _then;

/// Create a copy of CodexThreadDetailDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? cwd = null,Object? createdAtMs = null,Object? updatedAtMs = null,Object? modelProvider = null,Object? model = null,Object? cliVersion = null,Object? rolloutPath = null,Object? messages = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,cwd: null == cwd ? _self.cwd : cwd // ignore: cast_nullable_to_non_nullable
as String,createdAtMs: null == createdAtMs ? _self.createdAtMs : createdAtMs // ignore: cast_nullable_to_non_nullable
as int,updatedAtMs: null == updatedAtMs ? _self.updatedAtMs : updatedAtMs // ignore: cast_nullable_to_non_nullable
as int,modelProvider: null == modelProvider ? _self.modelProvider : modelProvider // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,cliVersion: null == cliVersion ? _self.cliVersion : cliVersion // ignore: cast_nullable_to_non_nullable
as String,rolloutPath: null == rolloutPath ? _self.rolloutPath : rolloutPath // ignore: cast_nullable_to_non_nullable
as String,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<CodexThreadMessageDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [CodexThreadDetailDto].
extension CodexThreadDetailDtoPatterns on CodexThreadDetailDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CodexThreadDetailDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CodexThreadDetailDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CodexThreadDetailDto value)  $default,){
final _that = this;
switch (_that) {
case _CodexThreadDetailDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CodexThreadDetailDto value)?  $default,){
final _that = this;
switch (_that) {
case _CodexThreadDetailDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String cwd,  int createdAtMs,  int updatedAtMs,  String modelProvider,  String model,  String cliVersion,  String rolloutPath,  List<CodexThreadMessageDto> messages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CodexThreadDetailDto() when $default != null:
return $default(_that.id,_that.title,_that.cwd,_that.createdAtMs,_that.updatedAtMs,_that.modelProvider,_that.model,_that.cliVersion,_that.rolloutPath,_that.messages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String cwd,  int createdAtMs,  int updatedAtMs,  String modelProvider,  String model,  String cliVersion,  String rolloutPath,  List<CodexThreadMessageDto> messages)  $default,) {final _that = this;
switch (_that) {
case _CodexThreadDetailDto():
return $default(_that.id,_that.title,_that.cwd,_that.createdAtMs,_that.updatedAtMs,_that.modelProvider,_that.model,_that.cliVersion,_that.rolloutPath,_that.messages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String cwd,  int createdAtMs,  int updatedAtMs,  String modelProvider,  String model,  String cliVersion,  String rolloutPath,  List<CodexThreadMessageDto> messages)?  $default,) {final _that = this;
switch (_that) {
case _CodexThreadDetailDto() when $default != null:
return $default(_that.id,_that.title,_that.cwd,_that.createdAtMs,_that.updatedAtMs,_that.modelProvider,_that.model,_that.cliVersion,_that.rolloutPath,_that.messages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CodexThreadDetailDto extends CodexThreadDetailDto {
  const _CodexThreadDetailDto({this.id = '', this.title = '', this.cwd = '', this.createdAtMs = 0, this.updatedAtMs = 0, this.modelProvider = '', this.model = '', this.cliVersion = '', this.rolloutPath = '', final  List<CodexThreadMessageDto> messages = const []}): _messages = messages,super._();
  factory _CodexThreadDetailDto.fromJson(Map<String, dynamic> json) => _$CodexThreadDetailDtoFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String cwd;
@override@JsonKey() final  int createdAtMs;
@override@JsonKey() final  int updatedAtMs;
@override@JsonKey() final  String modelProvider;
@override@JsonKey() final  String model;
@override@JsonKey() final  String cliVersion;
@override@JsonKey() final  String rolloutPath;
 final  List<CodexThreadMessageDto> _messages;
@override@JsonKey() List<CodexThreadMessageDto> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


/// Create a copy of CodexThreadDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CodexThreadDetailDtoCopyWith<_CodexThreadDetailDto> get copyWith => __$CodexThreadDetailDtoCopyWithImpl<_CodexThreadDetailDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CodexThreadDetailDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CodexThreadDetailDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.cwd, cwd) || other.cwd == cwd)&&(identical(other.createdAtMs, createdAtMs) || other.createdAtMs == createdAtMs)&&(identical(other.updatedAtMs, updatedAtMs) || other.updatedAtMs == updatedAtMs)&&(identical(other.modelProvider, modelProvider) || other.modelProvider == modelProvider)&&(identical(other.model, model) || other.model == model)&&(identical(other.cliVersion, cliVersion) || other.cliVersion == cliVersion)&&(identical(other.rolloutPath, rolloutPath) || other.rolloutPath == rolloutPath)&&const DeepCollectionEquality().equals(other._messages, _messages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,cwd,createdAtMs,updatedAtMs,modelProvider,model,cliVersion,rolloutPath,const DeepCollectionEquality().hash(_messages));

@override
String toString() {
  return 'CodexThreadDetailDto(id: $id, title: $title, cwd: $cwd, createdAtMs: $createdAtMs, updatedAtMs: $updatedAtMs, modelProvider: $modelProvider, model: $model, cliVersion: $cliVersion, rolloutPath: $rolloutPath, messages: $messages)';
}


}

/// @nodoc
abstract mixin class _$CodexThreadDetailDtoCopyWith<$Res> implements $CodexThreadDetailDtoCopyWith<$Res> {
  factory _$CodexThreadDetailDtoCopyWith(_CodexThreadDetailDto value, $Res Function(_CodexThreadDetailDto) _then) = __$CodexThreadDetailDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String cwd, int createdAtMs, int updatedAtMs, String modelProvider, String model, String cliVersion, String rolloutPath, List<CodexThreadMessageDto> messages
});




}
/// @nodoc
class __$CodexThreadDetailDtoCopyWithImpl<$Res>
    implements _$CodexThreadDetailDtoCopyWith<$Res> {
  __$CodexThreadDetailDtoCopyWithImpl(this._self, this._then);

  final _CodexThreadDetailDto _self;
  final $Res Function(_CodexThreadDetailDto) _then;

/// Create a copy of CodexThreadDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? cwd = null,Object? createdAtMs = null,Object? updatedAtMs = null,Object? modelProvider = null,Object? model = null,Object? cliVersion = null,Object? rolloutPath = null,Object? messages = null,}) {
  return _then(_CodexThreadDetailDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,cwd: null == cwd ? _self.cwd : cwd // ignore: cast_nullable_to_non_nullable
as String,createdAtMs: null == createdAtMs ? _self.createdAtMs : createdAtMs // ignore: cast_nullable_to_non_nullable
as int,updatedAtMs: null == updatedAtMs ? _self.updatedAtMs : updatedAtMs // ignore: cast_nullable_to_non_nullable
as int,modelProvider: null == modelProvider ? _self.modelProvider : modelProvider // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,cliVersion: null == cliVersion ? _self.cliVersion : cliVersion // ignore: cast_nullable_to_non_nullable
as String,rolloutPath: null == rolloutPath ? _self.rolloutPath : rolloutPath // ignore: cast_nullable_to_non_nullable
as String,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<CodexThreadMessageDto>,
  ));
}


}

// dart format on
