sealed class DataResponse<T> {}

class Success<T> extends DataResponse<T> {
  final T data;
  Success(this.data);
}

class Error<T> extends DataResponse<T> {
  final String error;
  Error([this.error = 'Something went wrong']);
}

class InProgress<T> extends DataResponse<T> {
  InProgress();
}

extension DataResponseExt<T> on DataResponse<T> {
  DataResponse<C> mapSuccess<C>(DataResponse<C> Function(T data) onSuccess) {
    if (this is Success) {
      return onSuccess.call((this as Success<T>).data);
    } else if (this is Error) {
      return Error<C>((this as Error<T>).error);
    } else {
      return InProgress<C>() as DataResponse<C>;
    }
  }

  C mapResponse<C>(
    C Function(T data) onSuccess,
    C Function(String error) onError,
    C Function() onLoading,
  ) {
    if (this is Success) {
      return onSuccess((this as Success).data);
    } else if (this is Error) {
      return onError((this as Error<T>).error);
    } else {
      return onLoading();
    }
  }
}

extension DataResponseStreamExt<T> on Stream<DataResponse<T>> {
  Stream<DataResponse<C>> mapSuccess<C>(
    C Function(T data) onSuccess,
  ) async* {
    await for (final DataResponse<T> response in this) {
      if (response is Success) {
        yield Success(onSuccess.call((response as Success).data));
      } else if (response is Error) {
        yield Error((response as Error<T>).error);
      } else {
        yield InProgress();
      }
    }
  }

  Stream<DataResponse<C>> chain<C>(
    Stream<DataResponse<C>> Function(T data) onSuccess,
  ) async* {
    await for (final DataResponse<T> response in this) {
      if (response is Success) {
        yield* onSuccess((response as Success).data);
      } else if (this is Error) {
        yield Error((response as Error<T>).error);
      } else {
        yield InProgress();
      }
    }
  }
}
