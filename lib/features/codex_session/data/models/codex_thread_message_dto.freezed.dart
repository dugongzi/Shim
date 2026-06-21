// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'codex_thread_message_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CodexThreadMessageDto {

 int get index; String get timestamp; String get role; String get kind; String get text;
/// Create a copy of CodexThreadMessageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CodexThreadMessageDtoCopyWith<CodexThreadMessageDto> get copyWith => _$CodexThreadMessageDtoCopyWithImpl<CodexThreadMessageDto>(this as CodexThreadMessageDto, _$identity);

  /// Serializes this CodexThreadMessageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CodexThreadMessageDto&&(identical(other.index, index) || other.index == index)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.role, role) || other.role == role)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index,timestamp,role,kind,text);

@override
String toString() {
  return 'CodexThreadMessageDto(index: $index, timestamp: $timestamp, role: $role, kind: $kind, text: $text)';
}


}

/// @nodoc
abstract mixin class $CodexThreadMessageDtoCopyWith<$Res>  {
  factory $CodexThreadMessageDtoCopyWith(CodexThreadMessageDto value, $Res Function(CodexThreadMessageDto) _then) = _$CodexThreadMessageDtoCopyWithImpl;
@useResult
$Res call({
 int index, String timestamp, String role, String kind, String text
});




}
/// @nodoc
class _$CodexThreadMessageDtoCopyWithImpl<$Res>
    implements $CodexThreadMessageDtoCopyWith<$Res> {
  _$CodexThreadMessageDtoCopyWithImpl(this._self, this._then);

  final CodexThreadMessageDto _self;
  final $Res Function(CodexThreadMessageDto) _then;

/// Create a copy of CodexThreadMessageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,Object? timestamp = null,Object? role = null,Object? kind = null,Object? text = null,}) {
  return _then(_self.copyWith(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CodexThreadMessageDto].
extension CodexThreadMessageDtoPatterns on CodexThreadMessageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CodexThreadMessageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CodexThreadMessageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CodexThreadMessageDto value)  $default,){
final _that = this;
switch (_that) {
case _CodexThreadMessageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CodexThreadMessageDto value)?  $default,){
final _that = this;
switch (_that) {
case _CodexThreadMessageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int index,  String timestamp,  String role,  String kind,  String text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CodexThreadMessageDto() when $default != null:
return $default(_that.index,_that.timestamp,_that.role,_that.kind,_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int index,  String timestamp,  String role,  String kind,  String text)  $default,) {final _that = this;
switch (_that) {
case _CodexThreadMessageDto():
return $default(_that.index,_that.timestamp,_that.role,_that.kind,_that.text);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int index,  String timestamp,  String role,  String kind,  String text)?  $default,) {final _that = this;
switch (_that) {
case _CodexThreadMessageDto() when $default != null:
return $default(_that.index,_that.timestamp,_that.role,_that.kind,_that.text);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CodexThreadMessageDto extends CodexThreadMessageDto {
  const _CodexThreadMessageDto({this.index = 0, this.timestamp = '', this.role = '', this.kind = 'text', this.text = ''}): super._();
  factory _CodexThreadMessageDto.fromJson(Map<String, dynamic> json) => _$CodexThreadMessageDtoFromJson(json);

@override@JsonKey() final  int index;
@override@JsonKey() final  String timestamp;
@override@JsonKey() final  String role;
@override@JsonKey() final  String kind;
@override@JsonKey() final  String text;

/// Create a copy of CodexThreadMessageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CodexThreadMessageDtoCopyWith<_CodexThreadMessageDto> get copyWith => __$CodexThreadMessageDtoCopyWithImpl<_CodexThreadMessageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CodexThreadMessageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CodexThreadMessageDto&&(identical(other.index, index) || other.index == index)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.role, role) || other.role == role)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index,timestamp,role,kind,text);

@override
String toString() {
  return 'CodexThreadMessageDto(index: $index, timestamp: $timestamp, role: $role, kind: $kind, text: $text)';
}


}

/// @nodoc
abstract mixin class _$CodexThreadMessageDtoCopyWith<$Res> implements $CodexThreadMessageDtoCopyWith<$Res> {
  factory _$CodexThreadMessageDtoCopyWith(_CodexThreadMessageDto value, $Res Function(_CodexThreadMessageDto) _then) = __$CodexThreadMessageDtoCopyWithImpl;
@override @useResult
$Res call({
 int index, String timestamp, String role, String kind, String text
});




}
/// @nodoc
class __$CodexThreadMessageDtoCopyWithImpl<$Res>
    implements _$CodexThreadMessageDtoCopyWith<$Res> {
  __$CodexThreadMessageDtoCopyWithImpl(this._self, this._then);

  final _CodexThreadMessageDto _self;
  final $Res Function(_CodexThreadMessageDto) _then;

/// Create a copy of CodexThreadMessageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,Object? timestamp = null,Object? role = null,Object? kind = null,Object? text = null,}) {
  return _then(_CodexThreadMessageDto(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
