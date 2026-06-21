// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'codex_thread_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CodexThreadDetail {

 String get id; String get title; String get cwd; int get createdAtMs; int get updatedAtMs; String get modelProvider; String get model; String get cliVersion;/// 原始 rollout 文件路径
 String get rolloutPath;/// 按 rollout 顺序的消息流
 List<CodexThreadMessage> get messages;
/// Create a copy of CodexThreadDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CodexThreadDetailCopyWith<CodexThreadDetail> get copyWith => _$CodexThreadDetailCopyWithImpl<CodexThreadDetail>(this as CodexThreadDetail, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CodexThreadDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.cwd, cwd) || other.cwd == cwd)&&(identical(other.createdAtMs, createdAtMs) || other.createdAtMs == createdAtMs)&&(identical(other.updatedAtMs, updatedAtMs) || other.updatedAtMs == updatedAtMs)&&(identical(other.modelProvider, modelProvider) || other.modelProvider == modelProvider)&&(identical(other.model, model) || other.model == model)&&(identical(other.cliVersion, cliVersion) || other.cliVersion == cliVersion)&&(identical(other.rolloutPath, rolloutPath) || other.rolloutPath == rolloutPath)&&const DeepCollectionEquality().equals(other.messages, messages));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,cwd,createdAtMs,updatedAtMs,modelProvider,model,cliVersion,rolloutPath,const DeepCollectionEquality().hash(messages));

@override
String toString() {
  return 'CodexThreadDetail(id: $id, title: $title, cwd: $cwd, createdAtMs: $createdAtMs, updatedAtMs: $updatedAtMs, modelProvider: $modelProvider, model: $model, cliVersion: $cliVersion, rolloutPath: $rolloutPath, messages: $messages)';
}


}

/// @nodoc
abstract mixin class $CodexThreadDetailCopyWith<$Res>  {
  factory $CodexThreadDetailCopyWith(CodexThreadDetail value, $Res Function(CodexThreadDetail) _then) = _$CodexThreadDetailCopyWithImpl;
@useResult
$Res call({
 String id, String title, String cwd, int createdAtMs, int updatedAtMs, String modelProvider, String model, String cliVersion, String rolloutPath, List<CodexThreadMessage> messages
});




}
/// @nodoc
class _$CodexThreadDetailCopyWithImpl<$Res>
    implements $CodexThreadDetailCopyWith<$Res> {
  _$CodexThreadDetailCopyWithImpl(this._self, this._then);

  final CodexThreadDetail _self;
  final $Res Function(CodexThreadDetail) _then;

/// Create a copy of CodexThreadDetail
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
as List<CodexThreadMessage>,
  ));
}

}


/// Adds pattern-matching-related methods to [CodexThreadDetail].
extension CodexThreadDetailPatterns on CodexThreadDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CodexThreadDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CodexThreadDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CodexThreadDetail value)  $default,){
final _that = this;
switch (_that) {
case _CodexThreadDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CodexThreadDetail value)?  $default,){
final _that = this;
switch (_that) {
case _CodexThreadDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String cwd,  int createdAtMs,  int updatedAtMs,  String modelProvider,  String model,  String cliVersion,  String rolloutPath,  List<CodexThreadMessage> messages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CodexThreadDetail() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String cwd,  int createdAtMs,  int updatedAtMs,  String modelProvider,  String model,  String cliVersion,  String rolloutPath,  List<CodexThreadMessage> messages)  $default,) {final _that = this;
switch (_that) {
case _CodexThreadDetail():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String cwd,  int createdAtMs,  int updatedAtMs,  String modelProvider,  String model,  String cliVersion,  String rolloutPath,  List<CodexThreadMessage> messages)?  $default,) {final _that = this;
switch (_that) {
case _CodexThreadDetail() when $default != null:
return $default(_that.id,_that.title,_that.cwd,_that.createdAtMs,_that.updatedAtMs,_that.modelProvider,_that.model,_that.cliVersion,_that.rolloutPath,_that.messages);case _:
  return null;

}
}

}

/// @nodoc


class _CodexThreadDetail extends CodexThreadDetail {
  const _CodexThreadDetail({required this.id, required this.title, required this.cwd, required this.createdAtMs, required this.updatedAtMs, required this.modelProvider, required this.model, required this.cliVersion, required this.rolloutPath, required final  List<CodexThreadMessage> messages}): _messages = messages,super._();
  

@override final  String id;
@override final  String title;
@override final  String cwd;
@override final  int createdAtMs;
@override final  int updatedAtMs;
@override final  String modelProvider;
@override final  String model;
@override final  String cliVersion;
/// 原始 rollout 文件路径
@override final  String rolloutPath;
/// 按 rollout 顺序的消息流
 final  List<CodexThreadMessage> _messages;
/// 按 rollout 顺序的消息流
@override List<CodexThreadMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


/// Create a copy of CodexThreadDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CodexThreadDetailCopyWith<_CodexThreadDetail> get copyWith => __$CodexThreadDetailCopyWithImpl<_CodexThreadDetail>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CodexThreadDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.cwd, cwd) || other.cwd == cwd)&&(identical(other.createdAtMs, createdAtMs) || other.createdAtMs == createdAtMs)&&(identical(other.updatedAtMs, updatedAtMs) || other.updatedAtMs == updatedAtMs)&&(identical(other.modelProvider, modelProvider) || other.modelProvider == modelProvider)&&(identical(other.model, model) || other.model == model)&&(identical(other.cliVersion, cliVersion) || other.cliVersion == cliVersion)&&(identical(other.rolloutPath, rolloutPath) || other.rolloutPath == rolloutPath)&&const DeepCollectionEquality().equals(other._messages, _messages));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,cwd,createdAtMs,updatedAtMs,modelProvider,model,cliVersion,rolloutPath,const DeepCollectionEquality().hash(_messages));

@override
String toString() {
  return 'CodexThreadDetail(id: $id, title: $title, cwd: $cwd, createdAtMs: $createdAtMs, updatedAtMs: $updatedAtMs, modelProvider: $modelProvider, model: $model, cliVersion: $cliVersion, rolloutPath: $rolloutPath, messages: $messages)';
}


}

/// @nodoc
abstract mixin class _$CodexThreadDetailCopyWith<$Res> implements $CodexThreadDetailCopyWith<$Res> {
  factory _$CodexThreadDetailCopyWith(_CodexThreadDetail value, $Res Function(_CodexThreadDetail) _then) = __$CodexThreadDetailCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String cwd, int createdAtMs, int updatedAtMs, String modelProvider, String model, String cliVersion, String rolloutPath, List<CodexThreadMessage> messages
});




}
/// @nodoc
class __$CodexThreadDetailCopyWithImpl<$Res>
    implements _$CodexThreadDetailCopyWith<$Res> {
  __$CodexThreadDetailCopyWithImpl(this._self, this._then);

  final _CodexThreadDetail _self;
  final $Res Function(_CodexThreadDetail) _then;

/// Create a copy of CodexThreadDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? cwd = null,Object? createdAtMs = null,Object? updatedAtMs = null,Object? modelProvider = null,Object? model = null,Object? cliVersion = null,Object? rolloutPath = null,Object? messages = null,}) {
  return _then(_CodexThreadDetail(
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
as List<CodexThreadMessage>,
  ));
}


}

// dart format on
