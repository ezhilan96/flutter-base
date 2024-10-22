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
