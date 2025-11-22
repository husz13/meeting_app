import 'package:either_dart/either.dart';
import 'package:voice_summary/core/network/failure/failure.dart';

abstract class BaseUseCase<T, P> {
  Future<Result<T>> call({required P params});
}

abstract class BaseUseCaseNoParams<T> {
  Future<Result<T>> call();
}

typedef Result<T> = Either<Failure, T>;
