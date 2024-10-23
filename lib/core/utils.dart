extension ObjectExt<T> on T {
  R let<R>(R Function(T that) op) => op(this);
}

extension ListExt<T> on List<T> {
  List<T> removeLast() {
    if (isEmpty) {
      return this; // Return the same list if it's empty.
    }
    return List<T>.from(this)
      ..removeLast(); // Create a new list without the last element.
  }
}

extension StringExtension on String {
  String takeLast(int n) => substring(length - n);
  String dropLast(int n) => substring(0, length - n);
}
