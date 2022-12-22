abstract class Resource<T> {
  final T? data;
  final String? message;

  Resource([this.data, this.message]);

  factory Resource.success(T? data) = Success;
  factory Resource.error(String? message, T? data) = Error;
  factory Resource.loading() = Loading;
}

class Success<T> extends Resource<T> {
  Success(super.data);
}

class Error<T> extends Resource<T> {
  Error(String? message, T? data) : super(data, message);
}

class Loading<T> extends Resource<T> {
  Loading();
}

void main() {
  Resource<String> resource = Resource.loading();
  resource = Resource.success('Success');
  resource = Resource.error('Error', null);
}
