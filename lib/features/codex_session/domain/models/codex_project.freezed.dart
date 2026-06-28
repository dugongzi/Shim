// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'codex_project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CodexProject {

/// 工作目录,空串归一为 `(unknown)` 字面量
 String get cwd;/// 会话数(同 cwd 的 thread 条数)
 int get sessionCount;/// 最近活跃时间 = max(thread.updatedAtMs)
 int get lastActiveMs;
/// Create a copy of CodexProject
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CodexProjectCopyWith<CodexProject> get copyWith => _$CodexProjectCopyWithImpl<CodexProject>(this as CodexProject, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CodexProject&&(identical(other.cwd, cwd) || other.cwd == cwd)&&(identical(other.sessionCount, sessionCount) || other.sessionCount == sessionCount)&&(identical(other.lastActiveMs, lastActiveMs) || other.lastActiveMs == lastActiveMs));
}


@override
int get hashCode => Object.hash(runtimeType,cwd,sessionCount,lastActiveMs);

@override
String toString() {
  return 'CodexProject(cwd: $cwd, sessionCount: $sessionCount, lastActiveMs: $lastActiveMs)';
}


}

/// @nodoc
abstract mixin class $CodexProjectCopyWith<$Res>  {
  factory $CodexProjectCopyWith(CodexProject value, $Res Function(CodexProject) _then) = _$CodexProjectCopyWithImpl;
@useResult
$Res call({
 String cwd, int sessionCount, int lastActiveMs
});




}
/// @nodoc
class _$CodexProjectCopyWithImpl<$Res>
    implements $CodexProjectCopyWith<$Res> {
  _$CodexProjectCopyWithImpl(this._self, this._then);

  final CodexProject _self;
  final $Res Function(CodexProject) _then;

/// Create a copy of CodexProject
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


/// Adds pattern-matching-related methods to [CodexProject].
extension CodexProjectPatterns on CodexProject {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CodexProject value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CodexProject() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CodexProject value)  $default,){
final _that = this;
switch (_that) {
case _CodexProject():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CodexProject value)?  $default,){
final _that = this;
switch (_that) {
case _CodexProject() when $default != null:
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
case _CodexProject() when $default != null:
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
case _CodexProject():
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
case _CodexProject() when $default != null:
return $default(_that.cwd,_that.sessionCount,_that.lastActiveMs);case _:
  return null;

}
}

}

/// @nodoc


class _CodexProject extends CodexProject {
  const _CodexProject({required this.cwd, required this.sessionCount, required this.lastActiveMs}): super._();
  

/// 工作目录,空串归一为 `(unknown)` 字面量
@override final  String cwd;
/// 会话数(同 cwd 的 thread 条数)
@override final  int sessionCount;
/// 最近活跃时间 = max(thread.updatedAtMs)
@override final  int lastActiveMs;

/// Create a copy of CodexProject
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CodexProjectCopyWith<_CodexProject> get copyWith => __$CodexProjectCopyWithImpl<_CodexProject>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CodexProject&&(identical(other.cwd, cwd) || other.cwd == cwd)&&(identical(other.sessionCount, sessionCount) || other.sessionCount == sessionCount)&&(identical(other.lastActiveMs, lastActiveMs) || other.lastActiveMs == lastActiveMs));
}


@override
int get hashCode => Object.hash(runtimeType,cwd,sessionCount,lastActiveMs);

@override
String toString() {
  return 'CodexProject(cwd: $cwd, sessionCount: $sessionCount, lastActiveMs: $lastActiveMs)';
}


}

/// @nodoc
abstract mixin class _$CodexProjectCopyWith<$Res> implements $CodexProjectCopyWith<$Res> {
  factory _$CodexProjectCopyWith(_CodexProject value, $Res Function(_CodexProject) _then) = __$CodexProjectCopyWithImpl;
@override @useResult
$Res call({
 String cwd, int sessionCount, int lastActiveMs
});




}
/// @nodoc
class __$CodexProjectCopyWithImpl<$Res>
    implements _$CodexProjectCopyWith<$Res> {
  __$CodexProjectCopyWithImpl(this._self, this._then);

  final _CodexProject _self;
  final $Res Function(_CodexProject) _then;

/// Create a copy of CodexProject
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cwd = null,Object? sessionCount = null,Object? lastActiveMs = null,}) {
  return _then(_CodexProject(
cwd: null == cwd ? _self.cwd : cwd // ignore: cast_nullable_to_non_nullable
as String,sessionCount: null == sessionCount ? _self.sessionCount : sessionCount // ignore: cast_nullable_to_non_nullable
as int,lastActiveMs: null == lastActiveMs ? _self.lastActiveMs : lastActiveMs // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
