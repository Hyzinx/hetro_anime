// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MovieState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieState<$T>()';
}


}

/// @nodoc
class $MovieStateCopyWith<T,$Res>  {
$MovieStateCopyWith(MovieState<T> _, $Res Function(MovieState<T>) __);
}


/// Adds pattern-matching-related methods to [MovieState].
extension MovieStatePatterns<T> on MovieState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MovieInitial<T> value)?  initial,TResult Function( LoadingMoviesList<T> value)?  loadedTopRated,TResult Function( Error<T> value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MovieInitial() when initial != null:
return initial(_that);case LoadingMoviesList() when loadedTopRated != null:
return loadedTopRated(_that);case Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MovieInitial<T> value)  initial,required TResult Function( LoadingMoviesList<T> value)  loadedTopRated,required TResult Function( Error<T> value)  error,}){
final _that = this;
switch (_that) {
case MovieInitial():
return initial(_that);case LoadingMoviesList():
return loadedTopRated(_that);case Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MovieInitial<T> value)?  initial,TResult? Function( LoadingMoviesList<T> value)?  loadedTopRated,TResult? Function( Error<T> value)?  error,}){
final _that = this;
switch (_that) {
case MovieInitial() when initial != null:
return initial(_that);case LoadingMoviesList() when loadedTopRated != null:
return loadedTopRated(_that);case Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( List<Movie> topRatedMovies,  List<Movie> currentList)?  loadedTopRated,TResult Function( NetworkExceptions networkExceptions)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MovieInitial() when initial != null:
return initial();case LoadingMoviesList() when loadedTopRated != null:
return loadedTopRated(_that.topRatedMovies,_that.currentList);case Error() when error != null:
return error(_that.networkExceptions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( List<Movie> topRatedMovies,  List<Movie> currentList)  loadedTopRated,required TResult Function( NetworkExceptions networkExceptions)  error,}) {final _that = this;
switch (_that) {
case MovieInitial():
return initial();case LoadingMoviesList():
return loadedTopRated(_that.topRatedMovies,_that.currentList);case Error():
return error(_that.networkExceptions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( List<Movie> topRatedMovies,  List<Movie> currentList)?  loadedTopRated,TResult? Function( NetworkExceptions networkExceptions)?  error,}) {final _that = this;
switch (_that) {
case MovieInitial() when initial != null:
return initial();case LoadingMoviesList() when loadedTopRated != null:
return loadedTopRated(_that.topRatedMovies,_that.currentList);case Error() when error != null:
return error(_that.networkExceptions);case _:
  return null;

}
}

}

/// @nodoc


class MovieInitial<T> implements MovieState<T> {
  const MovieInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MovieState<$T>.initial()';
}


}




/// @nodoc


class LoadingMoviesList<T> implements MovieState<T> {
  const LoadingMoviesList({required final  List<Movie> topRatedMovies, required final  List<Movie> currentList}): _topRatedMovies = topRatedMovies,_currentList = currentList;
  

 final  List<Movie> _topRatedMovies;
 List<Movie> get topRatedMovies {
  if (_topRatedMovies is EqualUnmodifiableListView) return _topRatedMovies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topRatedMovies);
}

 final  List<Movie> _currentList;
 List<Movie> get currentList {
  if (_currentList is EqualUnmodifiableListView) return _currentList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_currentList);
}


/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadingMoviesListCopyWith<T, LoadingMoviesList<T>> get copyWith => _$LoadingMoviesListCopyWithImpl<T, LoadingMoviesList<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingMoviesList<T>&&const DeepCollectionEquality().equals(other._topRatedMovies, _topRatedMovies)&&const DeepCollectionEquality().equals(other._currentList, _currentList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_topRatedMovies),const DeepCollectionEquality().hash(_currentList));

@override
String toString() {
  return 'MovieState<$T>.loadedTopRated(topRatedMovies: $topRatedMovies, currentList: $currentList)';
}


}

/// @nodoc
abstract mixin class $LoadingMoviesListCopyWith<T,$Res> implements $MovieStateCopyWith<T, $Res> {
  factory $LoadingMoviesListCopyWith(LoadingMoviesList<T> value, $Res Function(LoadingMoviesList<T>) _then) = _$LoadingMoviesListCopyWithImpl;
@useResult
$Res call({
 List<Movie> topRatedMovies, List<Movie> currentList
});




}
/// @nodoc
class _$LoadingMoviesListCopyWithImpl<T,$Res>
    implements $LoadingMoviesListCopyWith<T, $Res> {
  _$LoadingMoviesListCopyWithImpl(this._self, this._then);

  final LoadingMoviesList<T> _self;
  final $Res Function(LoadingMoviesList<T>) _then;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? topRatedMovies = null,Object? currentList = null,}) {
  return _then(LoadingMoviesList<T>(
topRatedMovies: null == topRatedMovies ? _self._topRatedMovies : topRatedMovies // ignore: cast_nullable_to_non_nullable
as List<Movie>,currentList: null == currentList ? _self._currentList : currentList // ignore: cast_nullable_to_non_nullable
as List<Movie>,
  ));
}


}

/// @nodoc


class Error<T> implements MovieState<T> {
  const Error(this.networkExceptions);
  

 final  NetworkExceptions networkExceptions;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCopyWith<T, Error<T>> get copyWith => _$ErrorCopyWithImpl<T, Error<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error<T>&&(identical(other.networkExceptions, networkExceptions) || other.networkExceptions == networkExceptions));
}


@override
int get hashCode => Object.hash(runtimeType,networkExceptions);

@override
String toString() {
  return 'MovieState<$T>.error(networkExceptions: $networkExceptions)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<T,$Res> implements $MovieStateCopyWith<T, $Res> {
  factory $ErrorCopyWith(Error<T> value, $Res Function(Error<T>) _then) = _$ErrorCopyWithImpl;
@useResult
$Res call({
 NetworkExceptions networkExceptions
});


$NetworkExceptionsCopyWith<$Res> get networkExceptions;

}
/// @nodoc
class _$ErrorCopyWithImpl<T,$Res>
    implements $ErrorCopyWith<T, $Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error<T> _self;
  final $Res Function(Error<T>) _then;

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? networkExceptions = null,}) {
  return _then(Error<T>(
null == networkExceptions ? _self.networkExceptions : networkExceptions // ignore: cast_nullable_to_non_nullable
as NetworkExceptions,
  ));
}

/// Create a copy of MovieState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NetworkExceptionsCopyWith<$Res> get networkExceptions {
  
  return $NetworkExceptionsCopyWith<$Res>(_self.networkExceptions, (value) {
    return _then(_self.copyWith(networkExceptions: value));
  });
}
}

// dart format on
